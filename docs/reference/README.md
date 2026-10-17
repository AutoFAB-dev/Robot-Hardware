# Reference

Background material. The guide a customer follows is the [numbered setup path](../setup/01-whats-in-the-box.md).

Each cell component has the same pages: parts, wiring and IDs, assembly, and checks. None of the four is a subsection of another.

| Component | What it is | Source |
|---|---|---|
| [Arm](arm/) | ElRobot follower: seven joints plus a gripper | [ElRobot / NormaCore](https://github.com/norma-core/norma-core/tree/main/hardware/elrobot) (Apache-2.0) |
| [Rail](rail/) | leslider-style 2020 rack rail, plus the ElRobot adapter | [leslider / Pham Tuan Binh](https://github.com/pham-tuan-binh/leslider) (Apache-2.0) |
| [Controller](controller/) | Raspberry Pi, servo bus adapter, power supplies, stop | Raspberry Pi docs; ElRobot power notes |
| [Cameras](cameras/) | Wrist camera, scene camera, mounts | ElRobot camera mounts and BOM |

## Pages (same set on every component)

| | Parts | Wiring | IDs | Assembly | Checks |
|---|---|---|---|---|---|
| Arm | [parts](arm/parts.md) | [wiring](arm/wiring.md) | [IDs](arm/ids.md) | [assembly](arm/assembly.md) | [checks](arm/checks.md) |
| Rail | [parts](rail/parts.md) | [wiring](rail/wiring.md) | [IDs](rail/ids.md) | [assembly](rail/assembly.md) | [checks](rail/checks.md) |
| Controller | [parts](controller/parts.md) | [wiring](controller/wiring.md) | [IDs](controller/ids.md) | [assembly](controller/assembly.md) | [checks](controller/checks.md) |
| Cameras | [parts](cameras/parts.md) | [wiring](cameras/wiring.md) | [IDs](cameras/ids.md) | [assembly](cameras/assembly.md) | [checks](cameras/checks.md) |

Values not stated by the cited source are **TODO**. Do not invent print settings, quantities, or IDs.

- [Safety](safety.md)
- [Cell parts list](../../bom/BOM.md)
- [CAD files](../../cad/README.md)
- [Photos](../../images/README.md) (TODO)
- [LICENSE](../../LICENSE) · [NOTICE](../../NOTICE) · [TRADEMARKS.md](../../TRADEMARKS.md)
- [Security](../../SECURITY.md) · [Code of conduct](../../CODE_OF_CONDUCT.md) · [AGENTS.md](../../AGENTS.md)

Need help? [Getting help](../getting-help.md).
