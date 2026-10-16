# Calibration
Do this after the cell is online, with someone's hand on the e-stop.

1. **Servo zeroes:** follow the arm calibration in the app. **TODO:** link the exact steps.
2. **Rail home** (see [firmware/README.md](../firmware/README.md#rail-servo)):
   - Power-cycle with the carriage at the **low end** of travel.
   - With the arm disarmed, push the carriage by hand against its near end stop, then choose **Home rail** in the app.
   - Measure the rail travel with a tape measure and enter it when asked. **TODO:** confirm the app flow.
3. **Wrist camera:** check focus and that the gripper jaws are in view. Re-seat the mount if the view is tilted.
4. **Scene camera:** fix it rigidly with a view of the whole bed. Don't move it after calibration.
5. **Bed fiducials:** print the fiducial tile and holder (**TODO: files**) and follow the in-app placement. The bed height at the removal position is measured here.
6. **First moves:** small, single-joint moves at low speed, then a supervised test removal.
