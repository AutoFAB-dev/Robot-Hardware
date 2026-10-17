# Arm — parts

Credit: printed-part names and quantities from the ElRobot [follower assembly manual](https://github.com/norma-core/norma-core/blob/main/hardware/elrobot/manual-follower.pdf) (page “3D Printing Parts”). Purchased follower motors and fasteners from that manual and the ElRobot [README BOM](https://github.com/norma-core/norma-core/blob/main/hardware/elrobot/README.md).

Print defaults (ElRobot README, follower): **PLA**, **0.4 mm nozzle**, **0.2 mm layers**. Combined STLs are exported in the **optimal printing orientation**. Infill is **TODO** (not stated). Which individual part sits in `panels.stl` / `regular_parts.stl` / `strong_parts.stl` is **TODO**.

`regular_parts.stl`: default walls, tree supports, auto brim. `strong_parts.stl`: 6 walls, supports, brim. `panels.stl`: default walls, no supports, no brim.

Follower filament stated upstream: about **360 g PLA**.

Files in this repo: [`hardware/arm/follower/`](../../../hardware/arm/follower/) (Apache-2.0; upstream commit recorded there). Combined plates: [`panels.stl`](../../../hardware/arm/follower/STL/elrobot_follower/panels.stl), [`regular_parts.stl`](../../../hardware/arm/follower/STL/elrobot_follower/regular_parts.stl), [`strong_parts.stl`](../../../hardware/arm/follower/STL/elrobot_follower/strong_parts.stl). Ready-to-slice: [`elrobot_follower_basic.3mf`](../../../hardware/arm/follower/print/basic/elrobot_follower_basic.3mf).

Driver board, 12 V supply and enclosures: [controller](../controller/parts.md). Cameras and mounts: [cameras](../cameras/parts.md).

## Printed

| Qty | Part (manual letter) | File | Material | Infill | Orientation |
|---|---|---|---|---|---|
| 1 | Base (A) | [`Base.stl`](../../../hardware/arm/follower/STL/elrobot_individual_parts/elrobot_common_parts/Base.stl) | PLA | TODO | TODO (use upstream combined STL orientation) |
| 1 | Joint 1 (B) | [`Joint 1.stl`](../../../hardware/arm/follower/STL/elrobot_individual_parts/elrobot_common_parts/Joint 1.stl) | PLA | TODO | TODO |
| 1 | Joint 2 (C) | [`Joint 2.stl`](../../../hardware/arm/follower/STL/elrobot_individual_parts/elrobot_common_parts/Joint 2.stl) | PLA | TODO | TODO |
| 1 | Joint 3 (D) | [`Joint 3.stl`](../../../hardware/arm/follower/STL/elrobot_individual_parts/elrobot_common_parts/Joint 3.stl) | PLA | TODO | TODO |
| 1 | Joint 4 (E) | [`Joint 4.stl`](../../../hardware/arm/follower/STL/elrobot_individual_parts/elrobot_common_parts/Joint 4.stl) | PLA | TODO | TODO |
| 1 | Joint 5 (F) | [`Joint 5.stl`](../../../hardware/arm/follower/STL/elrobot_individual_parts/elrobot_common_parts/Joint 5.stl) | PLA | TODO | TODO |
| 1 | Joint 6 (G) | [`Joint 6.stl`](../../../hardware/arm/follower/STL/elrobot_individual_parts/elrobot_common_parts/Joint 6.stl) | PLA | TODO | TODO |
| 1 | Gripper Base (H) | [`Gripper Base.stl`](../../../hardware/arm/follower/STL/elrobot_individual_parts/elrobot_follower_parts/Gripper Base.stl) | PLA | TODO | TODO |
| 1 | Gripper Gear (I) | [`Gripper Gear.stl`](../../../hardware/arm/follower/STL/elrobot_individual_parts/elrobot_follower_parts/Gripper Gear.stl) | PLA | TODO | TODO |
| 2 | Gripper Jaw (J) | [`Gripper Jaw.stl`](../../../hardware/arm/follower/STL/elrobot_individual_parts/elrobot_follower_parts/Gripper Jaw.stl) | PLA | TODO | TODO |
| 1 | Base Shield (K) | [`Base Shield.stl`](../../../hardware/arm/follower/STL/elrobot_individual_parts/elrobot_common_parts/Base Shield.stl) | PLA | TODO | TODO |
| 2 | Joint 2 Shield (L) | [`Joint 2 Shield.stl`](../../../hardware/arm/follower/STL/elrobot_individual_parts/elrobot_common_parts/Joint 2 Shield.stl) | PLA | TODO | TODO |
| 1 | Joint 3 Shield Drive Side (M) | [`Joint 3 Shield Drive Side.stl`](../../../hardware/arm/follower/STL/elrobot_individual_parts/elrobot_common_parts/Joint 3 Shield Drive Side.stl) | PLA | TODO | TODO |
| 1 | Joint 3 Shield Camera Side (N) | [`Joint 3 Shield Camera Side.stl`](../../../hardware/arm/follower/STL/elrobot_individual_parts/elrobot_common_parts/Joint 3 Shield Camera Side.stl) | PLA | TODO | TODO |
| 2 | Joint 4 Shield (O) | [`Joint 4 Shield.stl`](../../../hardware/arm/follower/STL/elrobot_individual_parts/elrobot_common_parts/Joint 4 Shield.stl) | PLA | TODO | TODO |
| 2 | Joint 6 Shield (P) | [`Joint 6 Shield.stl`](../../../hardware/arm/follower/STL/elrobot_individual_parts/elrobot_common_parts/Joint 6 Shield.stl) | PLA | TODO | TODO |
| 2 | Gripper Base Shield (Q) | [`Gripper Base Shield.stl`](../../../hardware/arm/follower/STL/elrobot_individual_parts/elrobot_follower_parts/Gripper Base Shield.stl) | PLA | TODO | TODO |
| 1 | Wiring Bracket (R) | [`Wiring_bracket.stl`](../../../hardware/arm/follower/STL/elrobot_individual_parts/elrobot_common_parts/Wiring_bracket.stl) | PLA | TODO | TODO |

Full file table (STL, STEP, 3MF): [hardware/arm/follower/README.md](../../../hardware/arm/follower/README.md).

## Purchased

| Qty | Part | Spec |
|---|---|---|
| 8 | ST3215 servo | 12 V / 30 kg, follower motors |
| 8 | Servo horns | manual V3 |
| 6 | Idler horns | manual V2 |
| 8 | Servo wires | manual V4 |
| 54 | Screw M3×8 | manual V5 |
| 61 | Self-tapping screw M2×6 | manual V6 |
| 2 | Clamps | optional mounting (ElRobot BOM) |
| — | PH1 and PH2 screwdrivers | tools |
