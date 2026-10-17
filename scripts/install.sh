#!/usr/bin/env bash
# AutoFAB cell controller: first-time setup through to remote support access.
# Public script: it contains no secrets and installs no AutoFAB service software.
#
# Run ON the Raspberry Pi, after flashing stock Raspberry Pi OS Lite (64-bit):
#
#   curl -fsSL https://raw.githubusercontent.com/AutoFAB-dev/Robot-Hardware/main/scripts/install.sh -o install.sh
#   sudo bash install.sh --hostname <name> --ssh-key "<public key AutoFAB gives you>"
#   (the script then asks you to paste the one-time access key AutoFAB gives you)
#
# What it does, and nothing else:
#   1. installs standard OS packages (git, curl, network tools, ffmpeg, NetworkManager)
#   2. installs Tailscale from Tailscale's own apt repository
#   3. joins the Pi to AutoFAB's private support network with a single-use key. Outbound
#      only: no router port-forwarding, nothing exposed to the internet
#   4. optionally adds AutoFAB's PUBLIC SSH key so our team can log in over that network
#   5. prints a read-only hardware check: power, arm driver, cameras, printer reachability
# It never moves a motor. Remove remote access at any time with:  sudo tailscale logout
set -euo pipefail

HOSTNAME_ARG=""
SSH_KEY=""
PRINTER_IP=""
AUTH_KEY_FILE=""
TAG="tag:autofab-device"
DRY_RUN=0

usage() {
  sed -n '2,19p' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//'
  cat <<'U'
Options:
  --hostname NAME        name on the support network, e.g. autofab-cell-1 (default: this Pi's hostname)
  --ssh-key "KEY"        AutoFAB's public SSH key (starts with ssh-ed25519); optional
  --printer-ip IP        your printer's LAN IP, for the reachability check; optional
  --auth-key-file PATH   read the access key from a file instead of a prompt
  --tag TAG              support-network tag (default tag:autofab-device)
  --no-tag               join without a tag (only if AutoFAB asks you to)
  --dry-run              show what would happen, change nothing
U
  exit "${1:-0}"
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --hostname) HOSTNAME_ARG="$2"; shift 2 ;;
    --ssh-key) SSH_KEY="$2"; shift 2 ;;
    --printer-ip) PRINTER_IP="$2"; shift 2 ;;
    --auth-key-file) AUTH_KEY_FILE="$2"; shift 2 ;;
    --tag) TAG="$2"; shift 2 ;;
    --no-tag) TAG=""; shift ;;
    --dry-run) DRY_RUN=1; shift ;;
    -h|--help) usage 0 ;;
    *) echo "unknown argument: $1" >&2; usage 1 ;;
  esac
done

say()  { printf '\033[1;34m[autofab]\033[0m %s\n' "$*"; }
warn() { printf '\033[1;33m[autofab] WARNING:\033[0m %s\n' "$*" >&2; }
die()  { printf '\033[1;31m[autofab] ERROR:\033[0m %s\n' "$*" >&2; exit 1; }
run()  { if [[ $DRY_RUN -eq 1 ]]; then echo "  would run: $*"; else "$@"; fi; }

[[ $DRY_RUN -eq 1 || $EUID -eq 0 ]] || die "run with sudo:  sudo bash install.sh ..."
[[ -z "$HOSTNAME_ARG" || "$HOSTNAME_ARG" =~ ^[a-zA-Z0-9][a-zA-Z0-9-]{0,62}$ ]] \
  || die "--hostname must be 1-63 letters, digits or hyphens"
[[ -z "$TAG" || "$TAG" =~ ^tag:[a-zA-Z0-9][a-zA-Z0-9-]{0,62}$ ]] || die "--tag must look like tag:autofab-device"
if [[ -n "$SSH_KEY" ]]; then
  [[ "$SSH_KEY" != *PRIVATE* ]] || die "that is a PRIVATE key. Never paste it anywhere."
  [[ "$SSH_KEY" =~ ^(ssh-ed25519|ssh-rsa|ecdsa-sha2-nistp256)\ [A-Za-z0-9+/=]+(\ .*)?$ ]] \
    || die "--ssh-key does not look like a public SSH key"
fi

# --- 0. platform -------------------------------------------------------------------------
# shellcheck disable=SC1091
. /etc/os-release
ARCH="$(uname -m)"
MODEL="$( { tr -d '\0' < /proc/device-tree/model; } 2>/dev/null || echo unknown)"
say "board: $MODEL | OS: ${PRETTY_NAME:-?} | arch: $ARCH"
if [[ "$ARCH" != "aarch64" ]]; then
  if [[ $DRY_RUN -eq 1 ]]; then warn "not aarch64 (dry run continues)"; else
  die "needs Raspberry Pi OS (64-bit). Re-flash and pick Raspberry Pi OS Lite (64-bit)."; fi
fi
[[ "${VERSION_CODENAME:-}" == "trixie" ]] \
  || warn "tested on Raspberry Pi OS based on Debian 13 (trixie); this is ${VERSION_CODENAME:-unknown}. Continuing."

# --- 1. OS packages ----------------------------------------------------------------------
PKGS=(git curl ca-certificates sudo rsync python3 iproute2 util-linux ffmpeg
      network-manager dnsmasq-base iptables openssh-server)
say "installing OS packages: ${PKGS[*]}"
run apt-get update -qq
run env DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends "${PKGS[@]}"
run systemctl enable --now ssh

# --- 2. Tailscale package ----------------------------------------------------------------
if command -v tailscale >/dev/null 2>&1; then
  say "Tailscale already installed ($(tailscale version 2>/dev/null | head -1))"
else
  # Raspberry Pi OS (64-bit) reports ID=debian, so this is Tailscale's Debian repository.
  BASE="https://pkgs.tailscale.com/stable/${ID:-debian}/${VERSION_CODENAME:-trixie}"
  say "installing Tailscale from $BASE"
  run install -d -m 0755 /usr/share/keyrings
  if [[ $DRY_RUN -eq 0 ]]; then
    curl -fsSL "$BASE.noarmor.gpg" -o /usr/share/keyrings/tailscale-archive-keyring.gpg
    curl -fsSL "$BASE.tailscale-keyring.list" -o /etc/apt/sources.list.d/tailscale.list
  fi
  run apt-get update -qq
  run env DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tailscale tailscale-archive-keyring
  run systemctl enable --now tailscaled
fi

# --- 3. join the support network (outbound only) ----------------------------------------
[[ -n "$HOSTNAME_ARG" ]] || HOSTNAME_ARG="$(hostname | tr '[:upper:]' '[:lower:]')"
KEYTMP=""
cleanup() { if [[ -n "$KEYTMP" ]]; then rm -f "$KEYTMP"; fi; }
trap cleanup EXIT
if [[ -z "$AUTH_KEY_FILE" ]]; then
  if [[ $DRY_RUN -eq 1 ]]; then
    AUTH_KEY_FILE="<prompted>"
  else
    echo
    read -r -s -p "Paste the one-time access key from AutoFAB (starts with tskey-), then press Enter: " key
    echo
    KEYTMP="$(mktemp)"; chmod 600 "$KEYTMP"; printf '%s' "$key" > "$KEYTMP"; unset key
    AUTH_KEY_FILE="$KEYTMP"
  fi
fi
if [[ $DRY_RUN -eq 0 ]]; then
  k="$(tr -d '\r\n ' < "$AUTH_KEY_FILE")"
  [[ "$k" == tskey-* ]] || die "that is not a Tailscale access key (it should start with tskey-)"
  unset k
fi
say "joining the AutoFAB support network as $HOSTNAME_ARG"
if [[ $DRY_RUN -eq 1 ]]; then
  echo "  would run: tailscale up --auth-key=file:REDACTED --hostname=$HOSTNAME_ARG ${TAG:+--advertise-tags=$TAG }--ssh --accept-routes=false --advertise-exit-node=false"
else
  tailscale up "--auth-key=file:$AUTH_KEY_FILE" "--hostname=$HOSTNAME_ARG" ${TAG:+"--advertise-tags=$TAG"} \
    --ssh --accept-routes=false --advertise-exit-node=false
fi

# --- 4. AutoFAB public SSH key (fallback if Tailscale SSH is not allowed) ----------------
if [[ -n "$SSH_KEY" ]]; then
  U="${SUDO_USER:-}"
  if [[ $DRY_RUN -eq 1 ]]; then
    echo "  would append the public key to ~${U:-<user>}/.ssh/authorized_keys"
  else
    [[ -n "$U" && "$U" != root ]] || die "run as your normal user with sudo (not as root) so the key goes to that user"
    H="$(getent passwd "$U" | cut -d: -f6)"
    say "adding AutoFAB's public SSH key for user $U"
    install -d -m 700 -o "$U" -g "$U" "$H/.ssh"
    touch "$H/.ssh/authorized_keys"
    chown "$U:$U" "$H/.ssh/authorized_keys"; chmod 600 "$H/.ssh/authorized_keys"
    grep -qxF "$SSH_KEY" "$H/.ssh/authorized_keys" || echo "$SSH_KEY" >> "$H/.ssh/authorized_keys"
  fi
fi

# --- 5. hardware check (read only) -------------------------------------------------------
echo
say "hardware check (read only; nothing moves)"
if command -v vcgencmd >/dev/null 2>&1; then
  t="$(vcgencmd get_throttled 2>/dev/null || true)"
  if [[ "$t" == "throttled=0x0" ]]; then say "power: OK ($t)"
  else warn "power: $t (anything but 0x0 means a weak power supply or overheating; use the official Raspberry Pi supply)"; fi
  say "temperature: $(vcgencmd measure_temp 2>/dev/null || echo unknown)"
fi
say "storage: $(df -h / | awk 'NR==2{print $4" free of "$2}')"
if compgen -G "/dev/serial/by-id/*" >/dev/null; then
  say "USB serial devices (the arm's servo driver should be one):"
  for d in /dev/serial/by-id/*; do echo "    $(basename "$d")"; done
else
  warn "no USB serial device: check the servo driver's USB data cable (charge-only cables don't work)"
fi
if compgen -G "/dev/v4l/by-id/*" >/dev/null; then
  say "cameras:"
  for d in /dev/v4l/by-id/*; do echo "    $(basename "$d")"; done
else
  warn "no USB camera found: check the powered hub and camera cables"
fi
say "LAN address(es): $(hostname -I 2>/dev/null || echo unknown)"
if [[ -n "$PRINTER_IP" ]]; then
  if ping -c 2 -W 2 "$PRINTER_IP" >/dev/null 2>&1; then say "printer $PRINTER_IP: reachable"
  else warn "printer $PRINTER_IP: no reply (same network as the Pi? not a guest network?)"; fi
  if timeout 3 bash -c "exec 3<>/dev/tcp/$PRINTER_IP/8883" 2>/dev/null; then say "printer LAN port 8883: open"
  else warn "printer LAN port 8883: closed (turn on LAN mode on the printer)"; fi
fi
if [[ $DRY_RUN -eq 0 ]]; then
  say "support network address: $(tailscale ip -4 2>/dev/null | head -1)  name: $HOSTNAME_ARG"
fi
echo
say "Done. Read the 'support network' line above to the AutoFAB team."
say "Leave the Pi powered and online. Keep the arm's 12 V supply OFF until AutoFAB says otherwise."
