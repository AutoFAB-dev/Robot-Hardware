# 7. Ready check and handover

Confirm the cell is physically ready, then hand it over to AutoFAB. AutoFAB is a managed service: our systems manage production on your machines.

**Safety:** Do not switch the arm's 12 V on unless AutoFAB has asked you to, with someone at the stop. Claiming and this ready check must not move a motor. Don't leave the cell running with nobody there.

**TODO image:** checklist ticked, cell Online, wrist camera showing both gripper jaws, scene camera showing the bed

## Ready check
Tick these before you hand over:

- [ ] Arm is supported; 12 V is still off
- [ ] Stop is within reach
- [ ] Cell shows **Online**, **once**, in the right organization
- [ ] If you unplug the Pi, it goes offline
- [ ] Wrist camera: both gripper jaws in view, picture the right way up
- [ ] Scene camera: sees the bed and the space the arm will work in
- [ ] Your printer shows as reachable (you already proved it in its own app)

If a camera goes black, stop using that view and tell AutoFAB.

## Hand over
Arm calibration, rail home, bed height, fiducials and the first managed job are finished **with AutoFAB**.

1. Leave the cell as it is (Online, cameras plugged in, stop ready, 12 V off).
2. Tell AutoFAB you have finished this guide. Use [Getting help](../getting-help.md) or email [info@autofab.net](mailto:info@autofab.net).
3. Stay nearby for the first session. Someone must be able to hit the stop whenever the arm has power.

**Back:** [6. Link your printer](06-link-your-printer.md)

Something not right? [Getting help](../getting-help.md)
