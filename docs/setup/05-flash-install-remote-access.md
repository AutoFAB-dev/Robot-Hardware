# 5. Flash the controller, install, and turn on remote access

AutoFAB is a managed service: our systems manage production on your machines. This page gets the
cell's controller (a Raspberry Pi) online so the AutoFAB team can reach it remotely. After this
step, the AutoFAB team finishes the software setup and brings the arm up with you.

**You'll need about 45 minutes.** Do steps 1–4 of the [setup guide](README.md) first (unbox,
check, mount, wire with power off).

> **Safety:** keep the arm's **12 V supply switched off and unplugged** for this whole page.
> Nothing on this page moves the arm. Support the arm; it is limp without power.

---

## What you need for this step

| Item | Notes |
|---|---|
| Raspberry Pi 5 (4 GB or 8 GB) or Raspberry Pi 4 (4 GB+) | The cell's controller |
| microSD card, 32 GB or larger, **A2** rated (64 GB recommended) | Everything on it will be erased |
| **Official** Raspberry Pi power supply | Pi 5: 27 W USB-C. Pi 4: 15 W USB-C. Phone chargers often cause brown-outs |
| Cooling | Pi 5: the official Active Cooler or the official case with fan. Pi 4: a case with a fan |
| A computer with a microSD card reader | Windows, macOS or Linux |
| Network | An Ethernet cable to the printers' network (best), or that network's Wi-Fi name and password. **Not** a guest network |
| Optional | A monitor (micro-HDMI cable for Pi 5 / Pi 4) and a USB keyboard, if your computer can't SSH |
| From AutoFAB, given to you during your onboarding session | A one-time **access key** (starts with `tskey-`) and our **public SSH key** (starts with `ssh-ed25519`) |

Full parts list with buy links: [hardware configuration](../../bom/BOM.md).

---

## Step 1. Flash Raspberry Pi OS (on your computer)

1. Install **Raspberry Pi Imager** from <https://www.raspberrypi.com/software/> and open it.
2. **Device:** pick your board (Raspberry Pi 5 or Raspberry Pi 4).
3. **Operating system:** *Raspberry Pi OS (other)* → **Raspberry Pi OS Lite (64-bit)**.
   Not the desktop version, and not 32-bit.
4. **Storage:** pick the microSD card. Double-check it's the card, not another drive.
5. When Imager asks about **OS customisation**, choose **Edit settings** and set:

   | Setting | Value |
   |---|---|
   | Hostname | `autofab-cell-1` (or another name: lower case, letters, digits, hyphens) |
   | Username | `autofab` |
   | Password | a strong password **you** keep. Don't email it to anyone |
   | Wi-Fi | only if you won't use Ethernet: the printers' network name and password. Wireless country: your country |
   | Locale | Time zone: your local zone; keyboard: match yours |
   | Services → SSH | **Enable SSH**, *Use password authentication* |
   | Raspberry Pi Connect | leave **off** |

6. **Save**, then **Yes** to apply the settings, then **Yes** to write. Wait for *Write
   successful* (about 5–15 minutes) and eject the card.

## Step 2. First boot

1. Put the microSD card in the Pi. Fit the cooler or case with its fan.
2. Connect the Ethernet cable now if you're using one.
3. Make sure these are plugged into the Pi (12 V still **off**):
   - the arm's servo driver (USB data cable),
   - the powered USB hub with the camera(s), and the hub's own power supply.
4. Plug in the Pi's official power supply. Wait **3 minutes** for the first boot to finish.

## Step 3. Log in to the Pi

**From your computer** (same network as the Pi). Open *Terminal* (macOS/Linux) or *PowerShell*
(Windows) and run:

```bash
ssh autofab@autofab-cell-1.local
```

Type `yes` if asked to trust the host, then the password you set in Step 1.

If `autofab-cell-1.local` isn't found: look up the Pi's IP address in your router's list of devices
and run `ssh autofab@<that IP>` instead.

**Or, with a monitor and keyboard** plugged into the Pi: log in at the prompt as `autofab` with
your password.

You're in when the prompt reads `autofab@autofab-cell-1:~ $`.

## Step 4. Update the Pi

```bash
sudo apt update && sudo apt full-upgrade -y
sudo reboot
```

Wait 1 minute, then log in again as in Step 3.

## Step 5. Run the AutoFAB install script

Download the script and look at it if you like (it's short and contains no secrets):

```bash
curl -fsSL https://raw.githubusercontent.com/AutoFAB-dev/Robot-Hardware/docs/initial-hardware-release/scripts/install.sh -o install.sh
less install.sh        # optional; press q to quit
```
<!-- TODO: switch back to main after PR #1 merges -->

Run it. Replace the parts in `< >` with what AutoFAB gives you during your onboarding session. `--printer-ip` is
your printer's LAN IP address (on a Bambu printer: *Settings → Network*); leave it out if you don't
have it.

```bash
sudo bash install.sh --hostname autofab-cell-1 \
  --ssh-key "<AutoFAB public SSH key, starts with ssh-ed25519>" \
  --printer-ip <printer IP>
```

When the script asks, paste the **one-time access key** (starts with `tskey-`) and press Enter.
Nothing shows while you paste; that's normal.

The script takes about 5 minutes. It:

1. installs standard system packages,
2. installs [Tailscale](https://tailscale.com), which gives AutoFAB a private, **outbound-only**
   connection to this Pi (no router changes, nothing opened to the internet),
3. adds AutoFAB's public SSH key, and
4. prints a read-only hardware check.

## Step 6. Check the result

The end of the output should look like this:

| Line | Good | If not |
|---|---|---|
| `power:` | `OK (throttled=0x0)` | Use the official power supply; check the fan |
| `USB serial devices` | one entry (the servo driver) | Re-seat the driver's USB cable; use a **data** cable, not charge-only |
| `cameras:` | your camera(s) listed | Check the hub's own power and the camera cables |
| `printer … reachable` and `port 8883: open` | both | Same network as the Pi? Not a guest network? Turn on **LAN mode** on the printer |
| `support network address:` | an address starting `100.` | Read the error to AutoFAB; re-run Step 5 with a new access key |

**Read the `support network address` line out to the AutoFAB team.** They'll confirm they can log
in. You're done with this step.

## After this step

- Leave the Pi **powered on and connected**. Keep the arm's **12 V off** until AutoFAB says otherwise.
- AutoFAB installs and updates the cell software remotely, then schedules the arm bring-up with you.
- Your printer's **LAN access code** is a secret. Read it to AutoFAB privately when asked; never
  put it in email, chat or photos.
- To remove AutoFAB's remote access at any time: `sudo tailscale logout`.

## Troubleshooting

| Problem | Fix |
|---|---|
| Imager has no "Edit settings" step | Update Imager to the latest version |
| `ssh: Could not resolve hostname` | Use the IP from your router, or a monitor and keyboard |
| `Permission denied (password)` | Username is `autofab`; the password is the one you set in Imager |
| `needs Raspberry Pi OS (64-bit)` | Re-flash with **Raspberry Pi OS Lite (64-bit)** |
| `that is not a Tailscale access key` | Paste the whole key, starting `tskey-`; ask AutoFAB for a new one |
| Pi keeps rebooting or `power:` isn't `0x0` | Official power supply only; don't power the Pi from the 12 V supply |
| Anything else | Send the last 20 lines of the script's output to AutoFAB ([getting help](../getting-help.md)) |

**Back:** [4. Wiring, power, stop and cameras](04-wiring-power-stop-cameras.md)
**Next:** AutoFAB finishes setup remotely; then [6. Link your printer](06-link-your-printer.md)
