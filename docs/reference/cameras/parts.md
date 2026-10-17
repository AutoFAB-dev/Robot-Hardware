# Cameras — parts

Credit: wrist camera (manual W1), camera mount (manual S), and fastener counts from the ElRobot [follower assembly manual](https://github.com/norma-core/norma-core/blob/main/hardware/elrobot/manual-follower.pdf) (parts list and steps 65–66). Three mount variants and “any UVC camera” from the ElRobot [README](https://github.com/norma-core/norma-core/blob/main/hardware/elrobot/README.md). Hub and table/scene camera from that README BOM plus the [cell parts list](../../../bom/BOM.md).

Print defaults (ElRobot README): **PLA**, **0.4 mm nozzle**, **0.2 mm layers**. Combined STLs are exported in the **optimal printing orientation**. Infill is **TODO**. The `.3mf` plates include all three mounts — “choose the one that fits your camera and delete the others before slicing.”

Copies in this repo: [`hardware/cameras/`](../../../hardware/cameras/) (Apache-2.0; upstream commit recorded there). Earlier copies of the same STLs: [`cad/elrobot/stl/`](../../../cad/elrobot/stl/). Scene-camera mount file: **TODO** (not in ElRobot, not in the cell parts list).

Arm, rail, and controller printed parts: [arm](../arm/parts.md), [rail](../rail/parts.md), [controller](../controller/parts.md).

## Printed

| Qty | Part (manual letter) | Material | Infill | Orientation |
|---|---|---|---|---|
| 1 | Camera Mount (S) — pick **one** variant below | PLA | TODO | TODO (use upstream combined STL / `.3mf` orientation) |
| 1 | Scene-camera mount | TODO | TODO | TODO |

Wrist-mount variants (ElRobot README “Camera Mounts”):

| Camera (example) | Mount file |
|---|---|
| Innomaker U20CAM-1080P (27 mm holes) | [`CameraMount_square_27mm.stl`](../../../hardware/cameras/STL/gripper_camera_mounts/CameraMount_square_27mm.stl) |
| Innomaker Day&Night Vision (34 mm holes) | [`CameraMount_square_34mm.stl`](../../../hardware/cameras/STL/gripper_camera_mounts/CameraMount_square_34mm.stl) |
| Generic webcam | [`CameraMount_regular.stl`](../../../hardware/cameras/STL/gripper_camera_mounts/CameraMount_regular.stl) |

The cell parts list uses the 27 mm square mount with the Innomaker U20CAM. Full file table: [hardware/cameras/README.md](../../../hardware/cameras/README.md).

## Purchased

| Qty | Part | Spec |
|---|---|---|
| 1 | Wrist camera | ElRobot: Innomaker U20CAM (manual W1). Cell parts list: Innomaker U20CAM-1080P. **Any UVC-compatible USB camera works** (ElRobot) |
| 1 | Scene / table camera | ElRobot BOM: “Table Camera” (example Logitech). Cell parts list: any 1080p UVC USB webcam (examples: Arducam 1080p or Logitech C920) |
| 1 | Powered USB hub | Externally powered. ElRobot: “An externally powered hub is **required primarily for the cameras**.” Cell parts list: any externally powered USB 3 hub. Port count and wattage: **TODO** |
| 2+ | USB data cables | Camera and hub links. ElRobot: rated for **data transfer**; USB-C to USB-A for hub connections as your ports require |
| 4 | Self-tapping screw M2×6 | Camera to mount (manual step 65) |
| 2 | Screw M3×8 | Mount to gripper base (manual step 66) |

How the scene camera is fixed to the bench (clamp, printed mount, or otherwise): **TODO**.
