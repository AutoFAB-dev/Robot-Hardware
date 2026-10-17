# AutoFAB Robot Hardware

Open hardware for the AutoFAB cell: an arm on a rail that tends your 3D printers. AutoFAB is a
managed service: our systems manage production on your machines. The hardware design here is open
source; the AutoFAB software that runs the cell is closed source and is installed by our team.

**Start here if you have the hardware.** Follow the steps in order; each takes you to the next.

## Onboard your cell

| # | Step | Page | Time |
|---|---|---|---|
| 0 | **What you need**: the parts list, your network and printer | [Hardware configuration](bom/BOM.md) | 10 min |
| 1 | What's in the box | [setup/01](docs/setup/01-whats-in-the-box.md) | 10 min |
| 2 | Unbox and check for damage | [setup/02](docs/setup/02-unboxing-and-damage-checks.md) | 10 min |
| 3 | **Assemble**: mount the arm and rail | [setup/03](docs/setup/03-mounting-arm-and-rail.md) | 20 min |
| 4 | Wire power (off), stop and cameras | [setup/04](docs/setup/04-wiring-power-stop-cameras.md) | 15 min |
| 5 | **Flash, install, remote access** | [setup/05](docs/setup/05-flash-install-remote-access.md) · script: [`scripts/install.sh`](https://raw.githubusercontent.com/AutoFAB-dev/Robot-Hardware/docs/initial-hardware-release/scripts/install.sh) <!-- TODO: switch back to main after PR #1 merges --> | 45 min |
| ✓ | **Done for now.** AutoFAB finishes the software setup remotely and schedules the arm bring-up with you | — | — |

Later, with AutoFAB: [6. Link your printer](docs/setup/06-link-your-printer.md) ·
[7. Ready check and handover](docs/setup/07-ready-check-and-handover.md).

Building the arm yourself? Part-by-part assembly, wiring and checks are in
[docs/reference/](docs/reference/README.md). Safety: [docs/reference/safety.md](docs/reference/safety.md).
Help: [docs/getting-help.md](docs/getting-help.md) · [troubleshooting](docs/troubleshooting.md).

## What's in this repository

| Folder | Contents |
|---|---|
| [`bom/`](bom/) | Hardware configuration and parts list with buy links |
| [`docs/setup/`](docs/setup/) | The onboarding steps above |
| [`docs/reference/`](docs/reference/) | Arm, rail, controller and camera assembly, wiring, IDs, checks |
| [`scripts/`](scripts/) | `install.sh`: controller setup through to remote support access |
| [`hardware/`](hardware/) · [`cad/`](cad/) | STL, STEP and print plates |
| [`firmware/`](firmware/) | Servo and driver notes |

Licences: see [LICENSE](LICENSE), [LICENSES/](LICENSES/) and [NOTICE](NOTICE).
