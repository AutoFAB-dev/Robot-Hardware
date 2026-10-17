# AutoFAB Robot Hardware

[![Hardware: CERN-OHL-P-2.0](https://img.shields.io/badge/hardware-CERN--OHL--P--2.0-blue.svg)](LICENSE)
[![Docs: CC-BY-4.0](https://img.shields.io/badge/docs-CC--BY--4.0-lightgrey.svg)](LICENSE)

This repository is a **self-service guide** so you can put an AutoFAB cell next to your printers and hand it over. AutoFAB is **a managed service: our systems manage production on your machines**. AutoFAB software is closed source; only this hardware is open.

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
Background only — not the customer path.

| Topic | Where |
|---|---|
| Safety | [docs/reference/safety.md](docs/reference/safety.md) |
| Arm | [docs/reference/arm/](docs/reference/arm/) |
| Rail | [docs/reference/rail/](docs/reference/rail/) |
| Controller | [docs/reference/controller/](docs/reference/controller/) |
| Cameras | [docs/reference/cameras/](docs/reference/cameras/) |
| Cell parts list | [bom/BOM.md](bom/BOM.md) |
| Printable files | [hardware/](hardware/) |
| CAD files | [cad/](cad/) |
| Photos (TODO) | [images/](images/) |
| Licences | [LICENSE](LICENSE), [NOTICE](NOTICE), [TRADEMARKS.md](TRADEMARKS.md) |
| Security | [SECURITY.md](SECURITY.md) |
| All reference | [docs/reference/](docs/reference/) |

The cell is an ElRobot arm on a leslider-style rail, with a wrist camera, a scene camera, and a Raspberry Pi. Thank you to [ElRobot / NormaCore](https://github.com/norma-core/norma-core/tree/main/hardware/elrobot) and [leslider / Pham Tuan Binh](https://github.com/pham-tuan-binh/leslider).

## Disclaimer
This hardware is supplied by AutoFAB and is meant to be run as part of AutoFAB's managed service: our systems manage production on your machines. Follow the [safety steps](docs/reference/safety.md). Contact AutoFAB before you modify the cell. The licences give no warranty beyond what they themselves state (see [LICENSE](LICENSE)).

## License
- AutoFAB-authored hardware: **CERN-OHL-P-2.0**
- Documentation: **CC-BY-4.0**
- Third-party files keep their original licences (ElRobot and leslider: Apache-2.0).

See [LICENSE](LICENSE) and [NOTICE](NOTICE).
