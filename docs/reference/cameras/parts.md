# Cameras — parts

Credit: printed-part names and fastener counts from the ElRobot [follower assembly manual](https://github.com/norma-core/norma-core/blob/main/hardware/elrobot/manual-follower.pdf) (parts list and steps 65–66). Purchased cameras and hub from the ElRobot [README BOM](https://github.com/norma-core/norma-core/blob/main/hardware/elrobot/README.md) and the [cell parts list](../../../bom/BOM.md).

Print defaults (ElRobot README): **PLA**, **0.4 mm nozzle**, **0.2 mm layers**. Combined STLs are exported in the **optimal printing orientation**. Infill is **TODO**. Which individual part sits in which combined STL / `.3mf` is **TODO**.

Unmodified ElRobot copies in this repo: [`cad/elrobot/`](../../../cad/elrobot/). Scene printed part: **TODO** (not in ElRobot, not in the cell parts list).

Arm, rail, and controller printed parts: [arm](../arm/parts.md), [rail](../rail/parts.md), [controller](../controller/parts.md).

## Printed

| Qty | Part (manual letter) | Material | Infill | Orientation |
|---|---|---|---|---|
| 1 | Camera Mount (S) | PLA | TODO | TODO (use upstream combined STL orientation). ElRobot ships 27 mm / 34 mm / regular files; pick the one that fits the camera |
| 1 | Scene printed part | TODO | TODO | TODO |

How the scene camera is fixed to the bench: **TODO**.

## Purchased

| Qty | Part | Spec |
|---|---|---|
| 1 | Wrist camera | ElRobot: Innomaker U20CAM (manual W1). Cell parts list: Innomaker U20CAM-1080P. **Any UVC-compatible USB camera works** (ElRobot) |
| 1 | Scene / table camera | ElRobot BOM: “Table Camera” (example Logitech). Cell parts list: any 1080p UVC USB webcam (examples: Arducam 1080p or Logitech C920) |
| 1 | Powered USB hub | Externally powered. ElRobot: “An externally powered hub is **required primarily for the cameras**.” Cell parts list: any externally powered USB 3 hub. Port count and wattage: **TODO** |
| 2+ | USB data cables | Camera and hub links. ElRobot: rated for **data transfer**; USB-C to USB-A for hub connections as your ports require |
| 4 | Self-tapping screw M2×6 | Camera to part S (manual step 65) |
| 2 | Screw M3×8 | Part S to gripper base (manual step 66) |
