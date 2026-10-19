# Cameras — assembly

Credit: ElRobot [follower assembly manual](https://github.com/norma-core/norma-core/blob/main/hardware/elrobot/manual-follower.pdf) **steps 65–75** (wrist camera and remaining shields). Scene camera and hub from the ElRobot README and [step 4](../../setup/04-wiring-power-stop-cameras.md). Do this after [arm assembly](../arm/assembly.md) steps 1–64.

**Safety:** Keep 12 V unplugged. Support the arm. Do not place the scene camera where the arm will hit it.

Tools: PH1 and PH2 (ElRobot).

## Wrist camera on the mount
**TODO image:** UVC camera on mount S, 4× M2×6

1. Choose the mount that fits the camera ([parts](parts.md)). The cell parts list uses [`CameraMount_square_27mm.stl`](../../../hardware/cameras/STL/gripper_camera_mounts/CameraMount_square_27mm.stl) with the Innomaker U20CAM-1080P.
2. Attach the camera to the Camera Mount (S). **4× M2×6** (manual step 65).
3. Strain-relieve the cable on the mount (this cell; not an ElRobot manual step). Plug the cable into the camera, then zip-tie the cable to the mount so a pull lands on the mount, not on the camera's connector or lens. Zip-tie size: **TODO**.

**TODO image:** zip-tie from the wrist-camera cable to Camera Mount (S)

## Mount on the gripper
**TODO image:** mount on the gripper base, 2× M3×8

4. Attach the Camera Mount to the Gripper Base. **2× M3×8** (manual step 66).
5. Turn the arm as the manual shows (step 67).

The ElRobot README also says the mounts “snap onto the gripper.” The manual’s counted hardware is the two M3×8 screws above — use those.

## Route the wrist cable and remaining shields
**TODO image:** camera cable along the arm, shields on, full rotation at each joint

6. Route the camera wires as shown (manual step 68). Leave slack at every joint. Keep the zip-tie strain relief on the mount; do not let the cable hang from the camera body.
7. Attach the remaining Gripper Base Shield (Q) and Joint 6 Shield (P). **3× M2×6**. Confirm full rotation (step 69).
8. Attach the remaining Joint 4 Shield (O). **2× M2×6**. Confirm full rotation (step 70).
9. Route the camera wires as shown (step 71).
10. Attach the remaining Joint 2 Shield (L) and Joint 3 Shield Camera Side (N). **4× M2×6**. Confirm full rotation (step 72). Manual text on this step also says “N 1x Joint 2 Shield Drive Side” — treat **N** as Joint 3 Shield Camera Side, matching the parts list, and mark the printed label conflict **TODO**.
11. Route the camera wires as shown (step 73).
12. Attach the Base Shield (K) to the base. **2× M2×6**. Confirm full rotation (step 74).
13. Move the base shield and route the camera wires as shown (step 75).

## Hub
**TODO image:** powered hub in the Pi, both camera cables in the hub

14. Plug the hub’s own supply in. Plug the hub into the Pi.
15. Plug the wrist camera and the scene camera into the hub, not into the Pi alone. See [wiring](wiring.md).

## Scene camera
**TODO image:** scene camera fixed with a clear view of the whole bed, outside the arm’s reach

16. Pick a rigid place with a clear view of the whole print bed ([step 3](../../setup/03-mounting-arm-and-rail.md)). The arm’s reach is **430 mm** from the base (ElRobot) plus rail travel.
17. Fix the scene camera there. Printed scene mount: **TODO**. Fasteners: **TODO**.
18. Do not move it after you finish setup.

Then: [checks](checks.md). If you are shipping a built cell, [pack the wrist camera off the gripper](#packing-a-built-cell) first. If the wrist camera is broken, [replace it](#replace-a-broken-wrist-camera).

## Replace a broken wrist camera

AutoFAB does not ship replacement cameras or mounts. Buy the camera from the [cell parts list](../../../bom/BOM.md) and reprint the matching mount. Keep **12 V unplugged**. Support the arm.

**TODO image:** old camera off the gripper; new UVC camera on a reprinted 27 mm mount; zip-tie on the mount

Use this if the lens is loose and will not focus, the camera will not aim at the jaws, or the camera itself is broken. If only the printed mount is cracked, reprint that file and reuse the camera.

1. Buy the default wrist camera, **Innomaker U20CAM-1080P**, from the [parts list](../../../bom/BOM.md) (Amazon listing there), or any UVC USB camera that fits a matching mount ([parts](parts.md)).
2. Reprint the matching mount. For the default U20CAM, print [`CameraMount_square_27mm.stl`](../../../hardware/cameras/STL/gripper_camera_mounts/CameraMount_square_27mm.stl). Print settings from the ElRobot README: **PLA**, **0.4 mm nozzle**, **0.2 mm layers**; infill **TODO**. Other cameras: pick the file in [parts](parts.md). An Arducam OV9782 mount is **TODO**.
3. Unplug the wrist camera from the powered hub. Leave 12 V off.
4. Remove the old camera and mount: undo the **2× M3×8** on the gripper, then the **4× M2×6** that hold the camera in the mount. Unplug the cable at the camera. Leave the cable routed along the arm if it is undamaged.
5. Fit the new camera in the mount. **4× M2×6**. Plug the cable into the camera. Zip-tie the cable to the mount so a pull cannot land on the connector or the lens.
6. Attach the mount to the gripper. **2× M3×8**.
7. Confirm slack at every joint and no snags. If you had to pull the cable out of the arm, re-route it as in the steps above (manual 68–75).
8. Plug the camera into the **powered** hub, not the Pi alone. Then [checks](checks.md): both jaws in view, the right way up, in focus.

Help: [Getting help](../../getting-help.md) or [info@autofab.net](mailto:info@autofab.net).

## Packing a built cell

A wrist camera left bolted to the gripper can take the hit if the box is dropped. Unscrew it before you ship a built cell. The person who unpacks it fits it again in [setup step 4](../../setup/04-wiring-power-stop-cameras.md).

**TODO image:** camera and mount packed separately; cable still plugged in and routed along the arm

1. Keep **12 V unplugged**. Support the arm.
2. Unscrew the wrist-camera mount from the gripper (**2× M3×8**). Leave the camera on the mount (**4× M2×6**) and leave the cable plugged into the camera.
3. Pack the camera and mount separately, padded, so nothing can crush the lens or the USB plug. Keep the cable installed — do not pull it out of the arm. Coil spare slack with the camera.
4. Leave the zip-tie strain relief on the mount.

On arrival: [unbox](../../setup/02-unboxing-and-damage-checks.md) with the camera still off the gripper, then re-attach it in [step 4](../../setup/04-wiring-power-stop-cameras.md) with those two M3×8 screws and confirm [strain relief and checks](checks.md).
