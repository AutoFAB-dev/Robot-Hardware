# Cameras — assembly

Credit: ElRobot [follower assembly manual](https://github.com/norma-core/norma-core/blob/main/hardware/elrobot/manual-follower.pdf) **steps 65–75** (wrist camera and remaining shields). Scene camera and hub from the ElRobot README and [step 4](../../setup/04-wiring-power-stop-cameras.md). Do this after [arm assembly](../arm/assembly.md) steps 1–64.

**Safety:** Keep 12 V unplugged. Support the arm. Do not place the scene camera where the arm will hit it.

Tools: PH1 and PH2 (ElRobot).

## Wrist camera on the mount
**TODO image:** UVC camera on mount S, 4× M2×6

1. Choose the mount that fits the camera ([parts](parts.md)). The cell parts list uses [`CameraMount_square_27mm.stl`](../../../hardware/cameras/STL/gripper_camera_mounts/CameraMount_square_27mm.stl) with the Innomaker U20CAM-1080P.
2. Attach the camera to the Camera Mount (S). **4× M2×6** (manual step 65).

## Mount on the gripper
**TODO image:** mount on the gripper base, 2× M3×8

3. Attach the Camera Mount to the Gripper Base. **2× M3×8** (manual step 66).
4. Turn the arm as the manual shows (step 67).

The ElRobot README also says the mounts “snap onto the gripper.” The manual’s counted hardware is the two M3×8 screws above — use those.

## Route the wrist cable and remaining shields
**TODO image:** camera cable along the arm, shields on, full rotation at each joint

5. Route the camera wires as shown (manual step 68).
6. Attach the remaining Gripper Base Shield (Q) and Joint 6 Shield (P). **3× M2×6**. Confirm full rotation (step 69).
7. Attach the remaining Joint 4 Shield (O). **2× M2×6**. Confirm full rotation (step 70).
8. Route the camera wires as shown (step 71).
9. Attach the remaining Joint 2 Shield (L) and Joint 3 Shield Camera Side (N). **4× M2×6**. Confirm full rotation (step 72). Manual text on this step also says “N 1x Joint 2 Shield Drive Side” — treat **N** as Joint 3 Shield Camera Side, matching the parts list, and mark the printed label conflict **TODO**.
10. Route the camera wires as shown (step 73).
11. Attach the Base Shield (K) to the base. **2× M2×6**. Confirm full rotation (step 74).
12. Move the base shield and route the camera wires as shown (step 75).

## Hub
**TODO image:** powered hub in the Pi, both camera cables in the hub

13. Plug the hub’s own supply in. Plug the hub into the Pi.
14. Plug the wrist camera and the scene camera into the hub, not into the Pi alone. See [wiring](wiring.md).

## Scene camera
**TODO image:** scene camera fixed with a clear view of the whole bed, outside the arm’s reach

15. Pick a rigid place with a clear view of the whole print bed ([step 3](../../setup/03-mounting-arm-and-rail.md)). The arm’s reach is **430 mm** from the base (ElRobot) plus rail travel.
16. Fix the scene camera there. Printed scene mount: **TODO**. Fasteners: **TODO**.
17. Do not move it after you finish setup.

Then: [checks](checks.md).
