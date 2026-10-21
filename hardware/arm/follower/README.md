# ElRobot follower parts

Unmodified copies from [ElRobot / NormaCore](https://github.com/norma-core/norma-core/tree/main/hardware/elrobot) (Apache-2.0). Upstream file names are unchanged.

- **Upstream commit:** `0d17bb300d712eeb5437d41ddb95ce380b5384e6`
- **Licence:** [LICENSE](LICENSE) (Apache-2.0). Copyright NormaCore.
- **Skipped:** leader arm, `elrobot_full_*.3mf` (leader + follower), simulation, images, manuals, and `STEP/ElRobot.stp` (13 MB; over the repo file limit). Those stay [upstream](https://github.com/norma-core/norma-core/tree/main/hardware/elrobot).

Print defaults (ElRobot README): **PLA**, **0.4 mm nozzle**, **0.2 mm layers**. Combined STLs are in the **optimal printing orientation**. Infill is **TODO**. Follower filament stated upstream: about **360 g PLA**.

Combined-plate settings (ElRobot README):

| Combined file | Walls | Supports | Brim |
|---|---|---|---|
| [STL/elrobot_follower/panels.stl](STL/elrobot_follower/panels.stl) | Default | No | No |
| [STL/elrobot_follower/regular_parts.stl](STL/elrobot_follower/regular_parts.stl) | Default | Tree | Auto |
| [STL/elrobot_follower/strong_parts.stl](STL/elrobot_follower/strong_parts.stl) | 6 | Yes | Yes |

Which individual part sits in which combined plate is **TODO**. Ready-to-slice follower plates: [print/basic/elrobot_follower_basic.3mf](print/basic/elrobot_follower_basic.3mf) and [print/ams/elrobot_follower_ams.3mf](print/ams/elrobot_follower_ams.3mf) (AMS: PLA parts, PETG supports optional).

Camera mounts: [hardware/cameras/](../../cameras/). Driver enclosures: [hardware/controller/](../../controller/). Assembly: [docs/reference/arm/](../../../docs/reference/arm/). Set IDs **1–8** first: [arm IDs](../../../docs/reference/arm/ids.md).

## Printed parts

| File | Qty | Material | Print settings | Notes |
|---|---|---|---|---|
| [STL/elrobot_individual_parts/elrobot_common_parts/Base.stl](STL/elrobot_individual_parts/elrobot_common_parts/Base.stl) | 1 | PLA | 0.4 mm nozzle, 0.2 mm layers; infill **TODO**; orientation **TODO** | Manual **A**. STEP: `STEP/elrobot_common_parts/Base.stp` |
| [STL/elrobot_individual_parts/elrobot_common_parts/Joint 1.stl](STL/elrobot_individual_parts/elrobot_common_parts/Joint 1.stl) | 1 | PLA | same; infill **TODO**; orientation **TODO** | Manual **B**. STEP: `Joint 1.stp` |
| [STL/elrobot_individual_parts/elrobot_common_parts/Joint 2.stl](STL/elrobot_individual_parts/elrobot_common_parts/Joint 2.stl) | 1 | PLA | same | Manual **C**. STEP: `Joint 2.stp` |
| [STL/elrobot_individual_parts/elrobot_common_parts/Joint 3.stl](STL/elrobot_individual_parts/elrobot_common_parts/Joint 3.stl) | 1 | PLA | same | Manual **D**. STEP: `Joint 3.stp` |
| [STL/elrobot_individual_parts/elrobot_common_parts/Joint 4.stl](STL/elrobot_individual_parts/elrobot_common_parts/Joint 4.stl) | 1 | PLA | same | Manual **E**. STEP: `Joint 4.stp` |
| [STL/elrobot_individual_parts/elrobot_common_parts/Joint 5.stl](STL/elrobot_individual_parts/elrobot_common_parts/Joint 5.stl) | 1 | PLA | same | Manual **F**. STEP: `Joint 5.stp` |
| [STL/elrobot_individual_parts/elrobot_common_parts/Joint 6.stl](STL/elrobot_individual_parts/elrobot_common_parts/Joint 6.stl) | 1 | PLA | same | Manual **G**. STEP: `Joint 6.stp` |
| [STL/elrobot_individual_parts/elrobot_follower_parts/Gripper Base.stl](STL/elrobot_individual_parts/elrobot_follower_parts/Gripper Base.stl) | 1 | PLA | same | Manual **H**. STEP: `STEP/elrobot_follower_parts/individual/Gripper_Base.stp` |
| [STL/elrobot_individual_parts/elrobot_follower_parts/Gripper Gear.stl](STL/elrobot_individual_parts/elrobot_follower_parts/Gripper Gear.stl) | 1 | PLA | same | Manual **I**. STEP: `Gripper_Gear.stp` |
| [STL/elrobot_individual_parts/elrobot_follower_parts/Gripper Jaw.stl](STL/elrobot_individual_parts/elrobot_follower_parts/Gripper Jaw.stl) | 2 | PLA | same | Manual **J**. STEP: `Gripper_Jaw.stp` |
| [STL/elrobot_individual_parts/elrobot_common_parts/Base Shield.stl](STL/elrobot_individual_parts/elrobot_common_parts/Base Shield.stl) | 1 | PLA | same | Manual **K**. STEP: `Base Shield.stp` |
| [STL/elrobot_individual_parts/elrobot_common_parts/Joint 2 Shield.stl](STL/elrobot_individual_parts/elrobot_common_parts/Joint 2 Shield.stl) | 2 | PLA | same | Manual **L**. STEP: `Joint 2 Shield.stp` |
| [STL/elrobot_individual_parts/elrobot_common_parts/Joint 3 Shield Drive Side.stl](STL/elrobot_individual_parts/elrobot_common_parts/Joint 3 Shield Drive Side.stl) | 1 | PLA | same | Manual **M**. STEP: `Joint 3 Shield Drive Side.stp` |
| [STL/elrobot_individual_parts/elrobot_common_parts/Joint 3 Shield Camera Side.stl](STL/elrobot_individual_parts/elrobot_common_parts/Joint 3 Shield Camera Side.stl) | 1 | PLA | same | Manual **N**. STEP: `Joint 3 Shield Camera Side.stp` |
| [STL/elrobot_individual_parts/elrobot_common_parts/Joint 4 Shield.stl](STL/elrobot_individual_parts/elrobot_common_parts/Joint 4 Shield.stl) | 2 | PLA | same | Manual **O**. STEP: `Joint 4 Shield.stp` |
| [STL/elrobot_individual_parts/elrobot_common_parts/Joint 6 Shield.stl](STL/elrobot_individual_parts/elrobot_common_parts/Joint 6 Shield.stl) | 2 | PLA | same | Manual **P**. STEP: `Joint 6 Shield.stp` |
| [STL/elrobot_individual_parts/elrobot_follower_parts/Gripper Base Shield.stl](STL/elrobot_individual_parts/elrobot_follower_parts/Gripper Base Shield.stl) | 2 | PLA | same | Manual **Q**. STEP: `Gripper_Base_Shield.stp` |
| [STL/elrobot_individual_parts/elrobot_common_parts/Wiring_bracket.stl](STL/elrobot_individual_parts/elrobot_common_parts/Wiring_bracket.stl) | 1 | PLA | same | Manual **R**. STEP: `Wiring_bracket.stp` |

Assembled gripper STEP (all gripper solids): [STEP/elrobot_follower_parts/Gripper.stp](STEP/elrobot_follower_parts/Gripper.stp).
