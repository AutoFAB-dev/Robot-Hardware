# AutoFAB Robot Hardware

Open hardware for the **AutoFAB cell**: a low-cost robot arm on a linear rail that takes finished parts off your 3D printers. AutoFAB runs it with **human-supervised AI**.

> **Community-supported.** This repo is for makers who want to build their own cell. For the plug-and-play, done-for-you setup, go to **[autofab.net](https://autofab.net)**.

## Who this is for
- Makers and print farms who are comfortable 3D-printing parts, assembling a small servo arm and flashing a Raspberry Pi.
- Anyone who wants to inspect, modify or improve the AutoFAB cell hardware.

## What you build
| Part | What it is |
|---|---|
| Arm | ElRobot follower: 7 joints plus a gripper, Feetech STS3215 12 V serial bus servos |
| Rail | leslider-style 2020 V-slot rail with a printed rack, driven by one more STS3215, so one arm can serve several printers |
| Cameras | a wrist camera on the gripper and a fixed scene camera on the printer bed |
| Controller | Raspberry Pi 5 (Pi 4 also boots) running the AutoFAB cell software |

**Supported printers:** FlashForge AD5X is qualified. For any other printer, [talk to us](https://autofab.net) before you build.

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
| [`firmware/`](firmware/) | Servo IDs and settings, and rail servo configuration |
| [`images/`](images/) | Photos and diagrams (TODO) |
| [`tools/`](tools/) | Repo checks (`tools/check.sh`) |
| [`docs/rnd/`](docs/rnd/) and [`cad/rnd/`](cad/rnd/) | **R&D, not part of the current kit**: powered monorail draft |

## Built on
The AutoFAB cell combines two open-source projects. Thank you to their authors.
- **[ElRobot](https://github.com/norma-core/norma-core/tree/main/hardware/elrobot)** by NormaCore: the arm (Apache-2.0).
- **[leslider](https://github.com/pham-tuan-binh/leslider)** by Pham Tuan Binh: the linear rail design and its STS3215 servo recipe (Apache-2.0). leslider was designed for the SO-101 arm; we use its rail with ElRobot.

## License
- AutoFAB-authored hardware: **CERN-OHL-P-2.0**
- Documentation: **CC-BY-4.0**
- Code: **Apache-2.0**
- Third-party files keep their original licences.

See [LICENSE](LICENSE). Contributions (people and AI agents): [CONTRIBUTING.md](CONTRIBUTING.md), [AGENTS.md](AGENTS.md). Security: [SECURITY.md](SECURITY.md).
