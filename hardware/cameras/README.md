# Camera hardware

ElRobot gripper camera mounts. Unmodified copies from [ElRobot / NormaCore](https://github.com/norma-core/norma-core/tree/main/hardware/elrobot) (Apache-2.0). Upstream file names are unchanged.

- **Upstream commit:** `0d17bb300d712eeb5437d41ddb95ce380b5384e6`
- **Licence:** [LICENSE](LICENSE) (Apache-2.0). Copyright NormaCore.
- **Earlier copies** of the three STLs and the basic 3MF also live in [`cad/elrobot/`](../../cad/elrobot/) (same bytes; SHA-256 of `CameraMount_square_27mm.stl` matches).

Print defaults (ElRobot README): **PLA**, **0.4 mm nozzle**, **0.2 mm layers**. Combined STLs are in the **optimal printing orientation**. Infill is **TODO**. The `.3mf` plates include all three mounts — choose the one that fits your camera and delete the others before slicing.

Docs: [cameras reference](../../docs/reference/cameras/) · [replace a broken wrist camera](../../docs/reference/cameras/assembly.md#replace-a-broken-wrist-camera) · [packing a built cell](../../docs/reference/cameras/assembly.md#packing-a-built-cell)

## Printed parts

| File | Qty | Material | Print settings | Notes |
|---|---|---|---|---|
| [STL/gripper_camera_mounts/CameraMount_square_27mm.stl](STL/gripper_camera_mounts/CameraMount_square_27mm.stl) | 1 (pick one variant) | PLA | 0.4 mm nozzle, 0.2 mm layers; infill **TODO**; orientation **TODO** (use upstream `.3mf`) | Manual **S**. Innomaker U20CAM-1080P (27 mm holes). Cell parts list uses this file. STEP: `STEP/gripper_camera_mounts/CameraMount_square_27mm.stp` |
| [STL/gripper_camera_mounts/CameraMount_square_34mm.stl](STL/gripper_camera_mounts/CameraMount_square_34mm.stl) | 1 (pick one variant) | PLA | same | Innomaker Day&Night Vision (34 mm holes). STEP: `CameraMount_square_34mm.stp` |
| [STL/gripper_camera_mounts/CameraMount_regular.stl](STL/gripper_camera_mounts/CameraMount_regular.stl) | 1 (pick one variant) | PLA | same | Generic webcam. STEP: `CameraMount_regular.stp` |

Plates: [print/basic/gripper_camera_mounts_basic.3mf](print/basic/gripper_camera_mounts_basic.3mf) · [print/ams/gripper_camera_mounts_ams.3mf](print/ams/gripper_camera_mounts_ams.3mf).

Scene-camera printed part: **TODO** (not in ElRobot, not in the cell parts list).
