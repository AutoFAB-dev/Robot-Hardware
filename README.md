# AutoFAB Robot Hardware

[![Hardware: CERN-OHL-P-2.0](https://img.shields.io/badge/hardware-CERN--OHL--P--2.0-blue.svg)](LICENSE)
[![Docs: CC-BY-4.0](https://img.shields.io/badge/docs-CC--BY--4.0-lightgrey.svg)](LICENSE)
[![Code: Apache-2.0](https://img.shields.io/badge/code-Apache--2.0-blue.svg)](LICENSE)

Open hardware for the **AutoFAB cell**: a low-cost robot arm on a linear rail that takes finished parts off your 3D printers.

AutoFAB is **a managed service: our systems manage production on your machines**. That includes AutoFAB's AI agents plus a human supervision service. AutoFAB software is closed source; only this hardware is open.

> This repo is the open hardware for makers who want to build their own cell. For the plug-and-play, done-for-you setup, go to **[autofab.net](https://autofab.net)**.

## Who this is for
- Makers and print farms who are comfortable 3D-printing parts, assembling a small servo arm and flashing a Raspberry Pi.
- Anyone who wants to see how the AutoFAB cell hardware is put together.

Issues and build reports are welcome. Pull requests are by invitation for now: [CONTRIBUTING.md](CONTRIBUTING.md).

## What you build
| Part | What it is |
|---|---|
| Arm | ElRobot follower: 7 joints plus a gripper, Feetech STS3215 12 V serial bus servos |
| Rail | leslider-style 2020 V-slot rail with a printed rack, driven by one more STS3215, so one arm can serve several printers |
| Cameras | a wrist camera on the gripper and a fixed scene camera on the printer bed |
| Controller | Raspberry Pi 5 (Pi 4 also boots) running the closed AutoFAB cell software |

**Printers:** AutoFAB works with almost any 3D printer through its Klipper and Bambu integrations. It has run on a Voron (Klipper), Creality K2 Plus with CFS, Creality K1, Bambu Lab X1C, Bambu Lab H2S and FlashForge Adventurer.

## Quick start
1. Buy the parts: [bom/BOM.md](bom/BOM.md)
2. Print the parts: [docs/printed-parts.md](docs/printed-parts.md)
3. Assemble the arm and rail: [docs/assembly.md](docs/assembly.md)
4. Wire it up: [docs/wiring.md](docs/wiring.md)
5. Set up the controller and connect it to AutoFAB: [docs/software-setup.md](docs/software-setup.md)
6. Calibrate: [docs/calibration.md](docs/calibration.md)
7. Read the safety rules **before you power the arm**: [docs/safety.md](docs/safety.md)

Something not working? See [docs/troubleshooting.md](docs/troubleshooting.md).

## Repository layout
| Folder | Contents |
|---|---|
| [`docs/`](docs/) | Setup guide (the steps above) |
| [`bom/`](bom/) | Bill of materials |
| [`cad/`](cad/) | Printable files (third-party files keep their own licence) |
| [`firmware/`](firmware/) | Hardware-level servo IDs, wiring and power notes |
| [`images/`](images/) | Photos and diagrams (TODO) |
| [`tools/`](tools/) | Repo checks (`tools/check.sh`) |

## Built on
The AutoFAB cell combines two open-source projects. Thank you to their authors.
- **[ElRobot](https://github.com/norma-core/norma-core/tree/main/hardware/elrobot)** by NormaCore: the arm (Apache-2.0).
- **[leslider](https://github.com/pham-tuan-binh/leslider)** by Pham Tuan Binh: the linear rail design and its STS3215 servo recipe (Apache-2.0). leslider was designed for the SO-101 arm; we use its rail with ElRobot.

## Disclaimer
This is DIY hardware. You build, power and run it **at your own risk**. The licences give no warranty beyond what they themselves state (see [LICENSE](LICENSE)). AutoFAB is a managed service: our systems manage production on your machines, including AutoFAB's AI agents plus a human supervision service. Someone must be present and able to hit the physical stop whenever the arm has power. Read [docs/safety.md](docs/safety.md) before you power the arm.

## License
- AutoFAB-authored hardware: **CERN-OHL-P-2.0**
- Documentation: **CC-BY-4.0**
- Code: **Apache-2.0**
- Third-party files keep their original licences.

See [LICENSE](LICENSE) and [NOTICE](NOTICE). The AutoFAB name and logo are not licensed: [TRADEMARKS.md](TRADEMARKS.md). Changes: [CHANGELOG.md](CHANGELOG.md).

Issues and build reports: [CONTRIBUTING.md](CONTRIBUTING.md), [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md), [GOVERNANCE.md](GOVERNANCE.md), [AGENTS.md](AGENTS.md). Security: [SECURITY.md](SECURITY.md).
