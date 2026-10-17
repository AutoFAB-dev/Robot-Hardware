# AutoFAB Robot Hardware

[![Hardware: CERN-OHL-P-2.0](https://img.shields.io/badge/hardware-CERN--OHL--P--2.0-blue.svg)](LICENSE)
[![Docs: CC-BY-4.0](https://img.shields.io/badge/docs-CC--BY--4.0-lightgrey.svg)](LICENSE)
[![Code: Apache-2.0](https://img.shields.io/badge/code-Apache--2.0-blue.svg)](LICENSE)

This repository is a **self-service guide** so you can put an AutoFAB cell next to your printers and hand it over. AutoFAB is **a managed service: our systems manage production on your machines**. That includes AutoFAB's AI agents plus a human supervision service. AutoFAB software is closed source; only this hardware is open.

> For the plug-and-play, done-for-you setup, go to **[autofab.net](https://autofab.net)**.

## Set up your cell
Do these in order. Each step has a safety note and a photo placeholder.

1. [What's in the box](docs/setup/01-whats-in-the-box.md)
2. [Unbox and check for damage](docs/setup/02-unboxing-and-damage-checks.md)
3. [Mount the arm and rail](docs/setup/03-mounting-arm-and-rail.md)
4. [Wiring, power, stop and cameras](docs/setup/04-wiring-power-stop-cameras.md)
5. [Power on and Wi-Fi](docs/setup/05-power-on-and-wifi.md)
6. [Link your printer](docs/setup/06-link-your-printer.md)
7. [Ready check and handover](docs/setup/07-ready-check-and-handover.md)

Something not working? [Troubleshooting](docs/troubleshooting.md). Need a person? [Getting help](docs/getting-help.md).

**Printers:** AutoFAB works with almost any 3D printer through its Klipper and Bambu integrations. It has run on a Voron (Klipper), Creality K2 Plus with CFS, Creality K1, Bambu Lab X1C, Bambu Lab H2S and FlashForge Adventurer.

## Reference
Use these if you are buying parts, printing, or reading licences. They are not the customer path.

| Topic | Where |
|---|---|
| Parts and prices | [bom/BOM.md](bom/BOM.md) |
| Printed parts | [docs/reference/printed-parts.md](docs/reference/printed-parts.md) |
| Build the arm and rail | [docs/reference/build-the-arm-and-rail.md](docs/reference/build-the-arm-and-rail.md) |
| Servo IDs and power | [docs/reference/servos.md](docs/reference/servos.md) |
| CAD files | [cad/](cad/) |
| Safety | [docs/reference/safety.md](docs/reference/safety.md) |
| Photos (TODO) | [images/](images/) |
| Licences | [LICENSE](LICENSE), [NOTICE](NOTICE), [TRADEMARKS.md](TRADEMARKS.md) |
| Changelog | [CHANGELOG.md](CHANGELOG.md) |
| Issues and contributing | [CONTRIBUTING.md](CONTRIBUTING.md), [GOVERNANCE.md](GOVERNANCE.md), [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md), [AGENTS.md](AGENTS.md) |
| Security | [SECURITY.md](SECURITY.md) |
| All reference | [docs/reference/](docs/reference/) |

The cell is an ElRobot arm on a leslider-style rail, with a wrist camera, a scene camera, and a Raspberry Pi. Thank you to [ElRobot / NormaCore](https://github.com/norma-core/norma-core/tree/main/hardware/elrobot) and [leslider / Pham Tuan Binh](https://github.com/pham-tuan-binh/leslider).

## Disclaimer
This is DIY hardware. You build, power and run it **at your own risk**. The licences give no warranty beyond what they themselves state (see [LICENSE](LICENSE)). AutoFAB is a managed service: our systems manage production on your machines, including AutoFAB's AI agents plus a human supervision service. Someone must be present and able to hit the physical stop whenever the arm has power. Read [docs/reference/safety.md](docs/reference/safety.md) before you power the arm.

## License
- AutoFAB-authored hardware: **CERN-OHL-P-2.0**
- Documentation: **CC-BY-4.0**
- Code: **Apache-2.0**
- Third-party files keep their original licences.

See [LICENSE](LICENSE) and [NOTICE](NOTICE). Issues and build reports are welcome; pull requests are by invitation for now.
