# Parts

Credit: printed-part names and quantities from the ElRobot [follower assembly manual](https://github.com/norma-core/norma-core/blob/main/hardware/elrobot/manual-follower.pdf) (page “3D Printing Parts”). Purchased follower parts from the ElRobot [README BOM](https://github.com/norma-core/norma-core/blob/main/hardware/elrobot/README.md). Rail printed and purchased parts from the [leslider README](https://github.com/pham-tuan-binh/leslider).

Print defaults from ElRobot README (follower): **PLA**, **0.4 mm nozzle**, **0.2 mm layers**. Combined STLs are exported in the **optimal printing orientation**. Infill is **TODO** (not stated). Which individual part sits in `panels.stl` / `regular_parts.stl` / `strong_parts.stl` is **TODO**.

`regular_parts.stl`: default walls, tree supports, auto brim. `strong_parts.stl`: 6 walls, supports, brim. `panels.stl`: default walls, no supports, no brim.

leslider print material, infill and orientation: **TODO** (not stated). Use `3d/full_print.3mf` or the separate files in `3d/separate_components/`.

## ElRobot follower — printed

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
| 1 | Camera Mount (S) — pick one: 27 mm, 34 mm, or regular | PLA | TODO | TODO |
| 1 | Enclosure case + lid (T1/T2, U1/U2) | PLA | TODO | TODO | optional; Waveshare or SeeedStudio |

Follower filament stated upstream: about **360 g PLA**.

## ElRobot follower — purchased

| Qty | Part |
|---|---|
| 8 | ST3215 servo, 12 V / 30 kg (follower motors) |
| 1 | Serial bus servo driver (Waveshare Bus Servo Adapter (A), or SeeedStudio XIAO board) |
| 1 | 12 V / 4 A DC PSU, 5.5×2.1 mm jack |
| 1 | USB data cable |
| 1 | Arm / wrist camera (example: Innomaker U20CAM-1080P) |
| 1 | Table / scene camera (example listed upstream; any UVC USB camera) |
| 2 | Clamps (optional mounting) |
| 8 | Servo horns (manual V3) |
| 6 | Idler horns (manual V2) |
| 8 | Servo wires (manual V4) |
| 54 | Screw M3×8 (manual V5) |
| 61 | Self-tapping screw M2×6 (manual V6) |
| — | PH1 and PH2 screwdrivers (tools, not a kit line) |

## leslider rail — printed

| Qty | Part | Material | Infill | Orientation |
|---|---|---|---|---|
| 2 | `leg` | TODO | TODO | TODO |
| 1 | `base_mount` | TODO | TODO | TODO |
| 1 | `pinion` | TODO | TODO | TODO |
| as needed | `track` (20 mm rack segments; enough to span the extrusion) | TODO | TODO | TODO |

## leslider rail — purchased

| Qty | Part |
|---|---|
| 1 | STS3215 servo (slider drive; same model as the arm motors) |
| 1 | 2020 V-slot aluminium extrusion (length to suit; 300–500 mm typical) |
| 1 | Gantry plate with V-wheels |
| 4 | M3 bolts, 20 mm or longer |
| 2 sets | M5 bolts, 10 mm or longer, plus matching M5 nuts |
| 2 sets | M5 bolts 12–16 mm, plus M5 drop-in T-nuts for 2020 |

**TODO:** ElRobot-to-leslider carriage adapter (leslider's `base_mount` is for the SO-101).
