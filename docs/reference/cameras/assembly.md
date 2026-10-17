# Cameras — assembly

Credit: ElRobot [follower assembly manual](https://github.com/norma-core/norma-core/blob/main/hardware/elrobot/manual-follower.pdf) **steps 65–75** (wrist camera and remaining shields). Scene camera and hub from the ElRobot README and [step 4](../../setup/04-wiring-power-stop-cameras.md). Do this after [arm assembly](../arm/assembly.md) steps 1–64.

**Safety:** Keep 12 V unplugged. Support the arm. Do not place the scene camera where the arm will hit it.

Tools: PH1 and PH2 (ElRobot).

## Wrist camera
**TODO image:** wrist camera on the gripper, 4× M2×6 and 2× M3×8

1. Attach the camera to part S. **4× M2×6** (manual step 65). Use the printed file that fits the camera ([parts](parts.md)).
2. Attach part S to the Gripper Base. **2× M3×8** (manual step 66).
3. Turn the arm as the manual shows (step 67).

## Route the wrist cable and remaining shields
**TODO image:** camera cable along the arm, shields on, full rotation at each joint

4. Route the camera wires as shown (manual step 68).
5. Attach the remaining Gripper Base Shield (Q) and Joint 6 Shield (P). **3× M2×6**. Confirm full rotation (step 69).
6. Attach the remaining Joint 4 Shield (O). **2× M2×6**. Confirm full rotation (step 70).
7. Route the camera wires as shown (step 71).
8. Attach the remaining Joint 2 Shield (L) and Joint 3 Shield Camera Side (N). **4× M2×6**. Confirm full rotation (step 72). Manual text on this step also says “N 1x Joint 2 Shield Drive Side” — treat **N** as Joint 3 Shield Camera Side, matching the parts list, and mark the printed label conflict **TODO**.
9. Route the camera wires as shown (step 73).
10. Attach the Base Shield (K) to the base. **2× M2×6**. Confirm full rotation (step 74).
11. Move the base shield and route the camera wires as shown (step 75).

## Hub
**TODO image:** powered hub in the Pi, both camera cables in the hub

12. Plug the hub’s own supply in. Plug the hub into the Pi.
13. Plug the wrist camera and the scene camera into the hub, not into the Pi alone. See [wiring](wiring.md).

## Scene camera
**TODO image:** scene camera fixed with a clear view of the whole bed, outside the arm’s reach

14. Pick a rigid place with a clear view of the whole print bed ([step 3](../../setup/03-mounting-arm-and-rail.md)). The arm’s reach is **430 mm** from the base (ElRobot) plus rail travel.
15. Fix the scene camera there. Printed part and fasteners: **TODO**.
16. Do not move it after you finish setup.

Then: [checks](checks.md).
