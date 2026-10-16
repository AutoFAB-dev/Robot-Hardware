# Printed parts
## Arm: ElRobot follower
Download the full STL/STEP/3MF set and the assembly manual from upstream: https://github.com/norma-core/norma-core/tree/main/hardware/elrobot
Upstream settings: PLA, 0.4 mm nozzle, 0.2 mm layers, 15% infill, tree supports.

**Wrist-camera mount:** [`cad/elrobot/stl/CameraMount_square_27mm.stl`](../cad/elrobot/stl/CameraMount_square_27mm.stl) (for the U20CAM). `_34mm` and `_regular` are alternatives, and `cad/elrobot/3mf/gripper_camera_mounts_basic.3mf` has all three.
Print it with **4 walls, or in PETG**, and print a spare. It's the most exposed part and can break in transit.

## Rail: leslider
From https://github.com/pham-tuan-binh/leslider/tree/main/3d: `full_print.3mf`, or the separate files:
- `leg` ×2
- `base_mount` ×1
- `pinion` ×1
- `track` (20 mm rack segments), enough to span your extrusion

**TODO:** an adapter between the ElRobot base and the leslider carriage (leslider's base mount is designed for the SO-101).

## Calibration
**TODO:** fiducial tile and holder files.
