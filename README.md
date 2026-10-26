# AutoFAB Robot Hardware

[![Hardware: CERN-OHL-P-2.0](https://img.shields.io/badge/hardware-CERN--OHL--P--2.0-blue.svg)](LICENSE)
[![Docs: CC-BY-4.0](https://img.shields.io/badge/docs-CC--BY--4.0-lightgrey.svg)](LICENSE)

The **AutoFAB Robot** is an [ElRobot](https://github.com/norma-core/norma-core/tree/main/hardware/elrobot) follower arm on a [leslider](https://github.com/pham-tuan-binh/leslider)-inspired linear rail, with a Raspberry Pi controller and cameras. This repository is AutoFAB's public hardware monorepo: designs, parts lists, printable files, and setup docs.

Website: [autofab.net](https://autofab.net)

## Platforms

Later robots will be added as new rows. Today's files stay where they are.

| Platform | BOM | CAD | Docs | Firmware |
|---|---|---|---|---|
| **AutoFAB Robot** | [`bom/`](bom/) | [`hardware/`](hardware/) · [`cad/`](cad/) | [`docs/`](docs/) | [`firmware/`](firmware/) |

**Not in this repo:** AutoFAB's production software (closed; see [Use it with AutoFAB](#use-it-with-autofab)); ElRobot leader-arm files, which stay [upstream](https://github.com/norma-core/norma-core/tree/main/hardware/elrobot).

## Bill of materials

Parts, quantities, and buy links for one AutoFAB Robot: [`bom/BOM.md`](bom/BOM.md).

Prefer not to build it? Contact [info@autofab.net](mailto:info@autofab.net).

## Build it

Read [safety](docs/reference/safety.md) before you apply 12 V. Keep the arm's 12 V supply off through the build. Support the arm; it is limp without power.

1. Print from the part tables in [`hardware/`](hardware/): [arm](hardware/arm/follower/), [rail](hardware/rail/), [wrist-camera mount](hardware/cameras/), optional [driver enclosure](hardware/controller/).
2. Set servo IDs, then assemble one joint at a time:
   - Arm IDs 1–8: [arm IDs](docs/reference/arm/ids.md) · [arm assembly](docs/reference/arm/assembly.md)
   - Rail ID 9: [rail IDs](docs/reference/rail/ids.md) · [rail assembly](docs/reference/rail/assembly.md)
   - Wrist camera: [cameras assembly](docs/reference/cameras/assembly.md)
3. Wire 12 V through a physical stop, the Pi on its own USB-C supply, and cameras on a powered hub: [controller wiring](docs/reference/controller/wiring.md) · [cameras wiring](docs/reference/cameras/wiring.md).

The ElRobot-to-rail-carriage adapter is still **TODO**. Do not assume leslider's SO-101 `base_mount` fits this arm ([`cad/README.md`](cad/README.md), [`hardware/rail/README.md`](hardware/rail/README.md)).

Upstream manuals (not copied here): ElRobot [follower manual (PDF)](https://github.com/norma-core/norma-core/blob/main/hardware/elrobot/manual-follower.pdf); leslider [assembly](https://github.com/pham-tuan-binh/leslider#3-assembly).

Full reference (parts, wiring, IDs, assembly, checks): [`docs/reference/`](docs/reference/).

## Setup

Once the robot is on the bench, follow the numbered path in [`docs/setup/`](docs/setup/):

1. [What's in the box](docs/setup/01-whats-in-the-box.md) and [damage checks](docs/setup/02-unboxing-and-damage-checks.md)
2. [Mount the arm and rail](docs/setup/03-mounting-arm-and-rail.md)
3. [Wire power, the stop, and cameras](docs/setup/04-wiring-power-stop-cameras.md)
4. Flash **Raspberry Pi OS Lite (64-bit)** on the controller and finish the remaining steps in the [setup guide](docs/setup/README.md)

Keep 12 V **off and unplugged** until AutoFAB asks you to switch the arm on. Someone must be present and able to hit the physical stop whenever the arm has power.

If a step is wrong or you get stuck: [`docs/troubleshooting.md`](docs/troubleshooting.md) · [`docs/getting-help.md`](docs/getting-help.md).

## Use it with AutoFAB

AutoFAB's software is a **managed service: our systems manage production on your machines**. That software is closed source and is not in this repository. This hardware does not run jobs or replace the service. Sign in at [app.autofab.net](https://app.autofab.net). For access or setup help, email [info@autofab.net](mailto:info@autofab.net).

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

- [ElRobot](https://github.com/norma-core/norma-core/tree/main/hardware/elrobot) by NormaCore (Apache-2.0) — follower arm, wrist-camera mounts, optional driver enclosures. Copied unmodified into `hardware/arm/follower/`, `hardware/cameras/`, `hardware/controller/`, and `cad/elrobot/`. See [`NOTICE`](NOTICE).
- [leslider](https://github.com/pham-tuan-binh/leslider) by Pham Tuan Binh (Apache-2.0) — 2020 rack-rail printed parts. Copied unmodified into `hardware/rail/`. See [`NOTICE`](NOTICE).

## Help

**Service and setup help:** [info@autofab.net](mailto:info@autofab.net) · [`docs/getting-help.md`](docs/getting-help.md).

Open a GitHub [issue](.github/ISSUE_TEMPLATE/bug_report.md) if a part table, file, or step is wrong. Strip passwords, tokens, and network names from photos and logs. Follow the [code of conduct](CODE_OF_CONDUCT.md). Before a push, run [`tools/check.sh`](tools/check.sh).

**Security:** report privately via GitHub's Security tab. See [`SECURITY.md`](SECURITY.md).
