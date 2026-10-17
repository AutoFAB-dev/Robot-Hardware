# Cameras — checks

Credit: ElRobot rotation notes after the remaining shields; ready-check framing from [step 7](../../setup/07-ready-check-and-handover.md). Hub rule from the ElRobot README.

**TODO image:** wrist view showing both jaws the right way up; scene view showing the bed; both cables in the powered hub

With **12 V off**:

- [ ] Wrist camera is fitted (4× M2×6, 2× M3×8); printed parts are seated
- [ ] Remaining shields (Q, P, O, L, N, K) are on; joints still have the rotation the manual calls “full rotation”
- [ ] Wrist cable is routed as the manual shows; slack at every joint; no snags
- [ ] Both cameras are in the **powered** hub; the hub is in the Pi; the hub has its own supply
- [ ] Wrist picture (once the Pi is on, customer path): both gripper jaws in view, the right way up. If it is blurry or shows a cable, re-seat the camera and check focus
- [ ] Scene picture: the whole bed and the space the arm will work in. The camera is not in the arm’s path
- [ ] Scene camera will not be moved after setup
- [ ] A black picture means stop using that view and check the hub — do not invent a software restart

Do not command motion from software for these checks. Powered checks are done with AutoFAB after handover.
