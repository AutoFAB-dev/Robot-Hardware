# Arm — parts

Credit: printed-part names and quantities from the ElRobot [follower assembly manual](https://github.com/norma-core/norma-core/blob/main/hardware/elrobot/manual-follower.pdf) (page “3D Printing Parts”). Purchased follower motors and fasteners from that manual and the ElRobot [README BOM](https://github.com/norma-core/norma-core/blob/main/hardware/elrobot/README.md).

Print defaults (ElRobot README, follower): **PLA**, **0.4 mm nozzle**, **0.2 mm layers**. Combined STLs are exported in the **optimal printing orientation**. Infill is **TODO** (not stated). Which individual part sits in `panels.stl` / `regular_parts.stl` / `strong_parts.stl` is **TODO**.

`regular_parts.stl`: default walls, tree supports, auto brim. `strong_parts.stl`: 6 walls, supports, brim. `panels.stl`: default walls, no supports, no brim.

Follower filament stated upstream: about **360 g PLA**.

Driver board, 12 V supply and enclosures: [controller](../controller/parts.md). Cameras: [cameras](../cameras/parts.md).

## Printed

| Qty | Part (manual letter) | Material | Infill | Orientation |
|---|---|---|---|---|
| 1 | Base (A) | PLA | TODO | TODO (use upstream combined STL orientation) |
| 1 | Joint 1 (B) | PLA | TODO | TODO |
| 1 | Joint 2 (C) | PLA | TODO | TODO |
| 1 | Joint 3 (D) | PLA | TODO | TODO |
| 1 | Joint 4 (E) | PLA | TODO | TODO |
| 1 | Joint 5 (F) | PLA | TODO | TODO |
| 1 | Joint 6 (G) | PLA | TODO | TODO |
| 1 | Gripper Base (H) | PLA | TODO | TODO |
| 1 | Gripper Gear (I) | PLA | TODO | TODO |
| 2 | Gripper Jaw (J) | PLA | TODO | TODO |
| 1 | Base Shield (K) | PLA | TODO | TODO |
| 2 | Joint 2 Shield (L) | PLA | TODO | TODO |
| 1 | Joint 3 Shield Drive Side (M) | PLA | TODO | TODO |
| 1 | Joint 3 Shield Camera Side (N) | PLA | TODO | TODO |
| 2 | Joint 4 Shield (O) | PLA | TODO | TODO |
| 2 | Joint 6 Shield (P) | PLA | TODO | TODO |
| 2 | Gripper Base Shield (Q) | PLA | TODO | TODO |
| 1 | Wiring Bracket (R) | PLA | TODO | TODO |

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
