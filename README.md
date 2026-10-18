# AutoFAB Robot Hardware

[![Hardware: CERN-OHL-P-2.0](https://img.shields.io/badge/hardware-CERN--OHL--P--2.0-blue.svg)](LICENSE)
[![Docs: CC-BY-4.0](https://img.shields.io/badge/docs-CC--BY--4.0-lightgrey.svg)](LICENSE)

Open-source hardware for the AutoFAB robot cell: an ElRobot follower arm on a linear rail that tends 3D printers.

Website: [autofab.net](https://autofab.net)

## What this is

This repository is the hardware design, parts list, printable files, and setup docs for **one AutoFAB cell**: a 7+1 DOF arm (430 mm reach) on a 2020 rack rail, a Raspberry Pi controller, a wrist camera, and an optional scene camera.

**In this repo**
- Printed parts (STL / STEP / 3MF) under [`hardware/`](hardware/)
- A full parts list with buy links in [`bom/BOM.md`](bom/BOM.md)
- Assembly, wiring, IDs, and checks in [`docs/reference/`](docs/reference/)
- First-day controller setup in [`docs/setup/`](docs/setup/) and [`scripts/install.sh`](scripts/install.sh)
- Cell calibration (IDs you set locally, then homing after remote access) in [`docs/calibration/`](docs/calibration/)

**Not in this repo**
- AutoFAB’s production software. AutoFAB is a **managed service: our systems manage production on your machines**. That software is closed source. This repo does not run jobs, plan motion, or replace the service.
- ElRobot **leader** arm files, combined leader+follower plates, simulation, and the 13 MB `ElRobot.stp` assembly. Those stay [upstream](https://github.com/norma-core/norma-core/tree/main/hardware/elrobot).
- An ElRobot-to-rail-carriage adapter. The stock leslider base mount is for an SO-101, not ElRobot. The adapter file is **TODO** ([`cad/README.md`](cad/README.md), [`hardware/rail/README.md`](hardware/rail/README.md)).
- Setup photos. Placeholders live in [`images/README.md`](images/README.md).

## Features

Facts from the parts list and reference docs, not a product pitch.

- **Arm:** ElRobot follower, seven joints plus a gripper, Feetech STS3215 servos at 12 V (IDs 1–8).
- **Rail:** leslider-style 2020 V-slot rack; one more STS3215 as the drive (ID 9 on this cell, not leslider’s SO-101 default of 7).
- **Controller:** Raspberry Pi 5 (8 GB listed; 4 GB works; Pi 4 with 4 GB+ also works), official USB-C supply (27 W on Pi 5), Waveshare Bus Servo Adapter (A).
- **Cameras:** USB UVC wrist camera (default: Innomaker U20CAM-1080P; the printed 27 mm mount fits it; Arducam OV9782 is a supported alternative) and an optional 1080p scene camera on a powered USB 3 hub.
- **Stop:** physical e-stop (or a switched strip) in the **12 V** lead, within reach before any motion.
- **Printers:** AutoFAB’s managed service connects to printers over the LAN.

The arm is limp without 12 V. Enclosed printer doors are opened by hand; arm door opening is not supported. During build, setup and first motions, someone must be present at the stop.

## Repository layout

```
bom/          Parts list for one cell, with buy links (no prices)
docs/setup/   Numbered path once the cell is on the bench (01–07)
docs/calibration/  Servo IDs, arm profile, rail home; camera and bed TODOs
docs/reference/  Safety, plus parts / wiring / IDs / assembly / checks
                 for arm, rail, controller, cameras
hardware/     Printable files per component (each folder has a part table)
  arm/follower/   ElRobot follower STL, STEP, 3MF
  rail/           leslider 3MF
  cameras/        Wrist-camera mounts
  controller/     Optional servo-driver enclosures
cad/          Earlier copies of the ElRobot camera-mount STLs
firmware/     Pointers to servo IDs and wiring (no firmware blobs)
scripts/      install.sh — Pi first-boot through remote support access
tools/        check.sh — relative links, public-safety scan, file size
images/       Photo placeholders (files not added yet)
LICENSES/     Full licence texts
```

## Getting started

Two paths. Both keep **12 V off** until AutoFAB has asked you to switch the arm on.

### Build the cell from scratch

1. **Read safety** — [`docs/reference/safety.md`](docs/reference/safety.md).
2. **Buy parts** — [`bom/BOM.md`](bom/BOM.md). Use listed equivalents unless a row says otherwise.
3. **Print** — part tables and files:
   - Arm: [`hardware/arm/follower/`](hardware/arm/follower/) · [arm parts](docs/reference/arm/parts.md)
   - Rail: [`hardware/rail/`](hardware/rail/) · [rail parts](docs/reference/rail/parts.md)
   - Wrist mount: [`hardware/cameras/`](hardware/cameras/) (use `CameraMount_square_27mm.stl` for the U20CAM)
   - Optional driver enclosure: [`hardware/controller/`](hardware/controller/)
4. **Set servo IDs, then assemble** — one servo at a time:
   - Arm IDs 1–8 and build: [arm IDs](docs/reference/arm/ids.md) · [arm assembly](docs/reference/arm/assembly.md) (ElRobot follower manual steps 1–64)
   - Rail ID 9 and build: [rail IDs](docs/reference/rail/ids.md) · [rail assembly](docs/reference/rail/assembly.md)
   - Wrist camera: [cameras assembly](docs/reference/cameras/assembly.md) (manual steps 65–75)
5. **Wire** — 12 V to the driver (5.5×2.1 mm), stop in that lead, Pi on its own USB-C supply, cameras on the **powered** hub: [controller wiring](docs/reference/controller/wiring.md) · [cameras wiring](docs/reference/cameras/wiring.md) · [setup step 4](docs/setup/04-wiring-power-stop-cameras.md).
6. **Mount** the rail next to the printer: [setup step 3](docs/setup/03-mounting-arm-and-rail.md).
7. **Bring the Pi online** — same as the “already have hardware” path below.

The ElRobot-to-carriage adapter is still **TODO**. Do not assume leslider’s SO-101 `base_mount` fits this arm.

### I already have the hardware

1. Unbox and check: [step 1](docs/setup/01-whats-in-the-box.md) · [step 2](docs/setup/02-unboxing-and-damage-checks.md).
2. Clamp the rail, support the limp arm: [step 3](docs/setup/03-mounting-arm-and-rail.md).
3. Wire power (off), stop, and cameras: [step 4](docs/setup/04-wiring-power-stop-cameras.md).
4. Flash Raspberry Pi OS Lite (64-bit), run `install.sh`, and turn on remote access: [step 5](docs/setup/05-flash-install-remote-access.md).

```bash
curl -fsSL https://raw.githubusercontent.com/AutoFAB-dev/Robot-Hardware/main/scripts/install.sh -o install.sh
sudo bash install.sh --hostname <cell-name> --ssh-key "<AutoFAB public SSH key>"
```

Full flags and the hardware check: [`scripts/install.sh`](scripts/install.sh). The script installs OS packages and remote-support access only. It does not install AutoFAB service software and it never moves a motor.

After step 5, AutoFAB finishes software setup remotely and schedules arm bring-up with you. Later, with AutoFAB: [step 6](docs/setup/06-link-your-printer.md) (printer on the LAN) · [calibration](docs/calibration/) (IDs are already local; homing and the arm profile run after SSH) · [step 7](docs/setup/07-ready-check-and-handover.md).

## Bill of materials

Quantities and buy links for **one cell** (arm + rail): [`bom/BOM.md`](bom/BOM.md). Prices are not listed.

| Area | What you need (summary) |
|---|---|
| Arm | 8× Feetech STS3215 (12 V, 30 kg·cm), Waveshare Bus Servo Adapter (A), printed ElRobot follower + fasteners, 2 bench clamps |
| Rail | 1× STS3215 (ID 9), 2020 V-slot to length, gantry plate / V-wheels, printed legs / pinion / rack, ElRobot adapter **TODO** |
| Power | 12 V DC (10 A recommended for arm + rail; ElRobot alone specifies 4 A), 5.5×2.1 mm barrel |
| Controller | Raspberry Pi 5 (Pi 4 works), official USB-C PSU, 32 GB+ A2 microSD (64 GB recommended), cooling, Ethernet |
| Cameras | U20CAM (default) or Arducam OV9782, printed 27 mm mount, optional 1080p scene camera, powered USB 3 hub |
| Stop | Inline 22 mm mushroom e-stop (≥10 A) on 12 V, **or** a switched strip within reach |

The Pi and the printers must be on the **same LAN** (no guest network, no client isolation) with outbound HTTPS.

## Documentation

| | Where |
|---|---|
| Setup (01–07) | [`docs/setup/`](docs/setup/) · [index](docs/setup/README.md) |
| Calibration | [`docs/calibration/`](docs/calibration/) · [index](docs/calibration/README.md) |
| Safety | [`docs/reference/safety.md`](docs/reference/safety.md) |
| Arm / rail / controller / cameras | [`docs/reference/`](docs/reference/README.md) — each has parts, wiring, IDs, assembly, checks |
| Printable files | [`hardware/README.md`](hardware/README.md) |
| CAD copies | [`cad/README.md`](cad/README.md) |
| Troubleshooting | [`docs/troubleshooting.md`](docs/troubleshooting.md) |
| Getting help | [`docs/getting-help.md`](docs/getting-help.md) |
| All docs | [`docs/README.md`](docs/README.md) |

Upstream assembly manuals (not copied here): ElRobot [follower manual (PDF)](https://github.com/norma-core/norma-core/blob/main/hardware/elrobot/manual-follower.pdf); leslider [assembly](https://github.com/pham-tuan-binh/leslider#3-assembly).

## Safety

Read [`docs/reference/safety.md`](docs/reference/safety.md) before you apply 12 V.

- Someone must be present and able to hit the **physical stop** whenever the arm has power. Test the stop before first motion.
- Keep 12 V **off and unplugged** through build and first-day setup. Support the arm; it is limp without power.
- Servos take power only from 12 V. The Pi has its own USB-C supply. Do not mix those.
- Stay out of the arm’s reach (430 mm from the base, plus rail travel) while it moves. Pinch points: gripper and rail rack.
- First motions: small, single-joint, hand on the stop. During setup and first motions, do not leave the cell running unattended.

If the stop fails or the arm moves when it should not, unplug 12 V and report it privately ([`SECURITY.md`](SECURITY.md)).

## Contributing and support

There is no `CONTRIBUTING.md` yet. For this repo:

- Open a GitHub [issue](.github/ISSUE_TEMPLATE/bug_report.md) if a part table, file, or step is wrong. Strip passwords, claim codes, tokens, and network names from photos and logs.
- Follow the [code of conduct](CODE_OF_CONDUCT.md).
- Before a push, run [`tools/check.sh`](tools/check.sh) (relative links, public-safety scan, large files).
- Do not invent print settings, quantities, or servo IDs. Cite ElRobot or leslider, or mark **TODO**.

**Service and setup help** (access keys, managed production): [info@autofab.net](mailto:info@autofab.net) · [`docs/getting-help.md`](docs/getting-help.md).

**Security:** report privately via GitHub’s Security tab. See [`SECURITY.md`](SECURITY.md).

## License and trademarks

This repository is multi-licensed. Full texts are in [`LICENSE`](LICENSE), [`LICENSES/`](LICENSES/), and [`NOTICE`](NOTICE).

| Material | Licence |
|---|---|
| AutoFAB-authored hardware (`cad/` except `cad/elrobot/`; `hardware/` except the third-party copies below) | [CERN-OHL-P-2.0](LICENSES/CERN-OHL-P-2.0.txt) |
| Documentation (`README.md`, `docs/`, `bom/`, `firmware/*.md`, `images/`) | [CC-BY-4.0](LICENSES/CC-BY-4.0.txt) |
| ElRobot copies (`hardware/arm/follower/`, `hardware/cameras/`, `hardware/controller/`, `cad/elrobot/`) | Apache-2.0, NormaCore — commit `0d17bb300d712eeb5437d41ddb95ce380b5384e6` |
| leslider copies (`hardware/rail/`) | Apache-2.0, Pham Tuan Binh — commit `a7c5c86669f7452e60e764f14ab0bff406213e3d` |

The licences give no warranty beyond what they themselves state.

The **AutoFAB** name and logo are not licensed by those terms. Forks must not imply that AutoFAB made, tested, or endorses them. Compatible-with-AutoFAB is allowed. Details: [`TRADEMARKS.md`](TRADEMARKS.md).

## Special thanks

- [ElRobot](https://github.com/norma-core/norma-core/tree/main/hardware/elrobot) by NormaCore (Apache-2.0) — follower arm, wrist-camera mounts, optional driver enclosures. Copied unmodified into `hardware/arm/follower/`, `hardware/cameras/`, `hardware/controller/`, and `cad/elrobot/`.
- [leslider](https://github.com/pham-tuan-binh/leslider) by Pham Tuan Binh (Apache-2.0) — 2020 rack-rail printed parts. Copied unmodified into `hardware/rail/`.
