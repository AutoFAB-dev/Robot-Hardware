# 7. Ready check and handover

Confirm the cell is physically ready, then hand it over to AutoFAB. AutoFAB is a managed service: our systems manage production on your machines, including AutoFAB's AI agents plus a human supervision service.

**Safety:** Do not switch the arm's 12 V on unless AutoFAB has asked you to, with someone at the stop. Setup so far must not have moved a motor. Don't leave the cell running with nobody there.

**TODO image:** checklist ticked, cell Online, wrist camera showing both gripper jaws, scene camera showing the bed

## Ready check
Tick these before you hand over:

- [ ] Rail is clamped and cannot tip
- [ ] Arm is supported when unpowered
- [ ] Stop is within reach and you know how to use it
- [ ] Cell shows **Online**, once, for this box (unplug the Pi and it goes offline)
- [ ] Your printer shows as reachable
- [ ] Wrist camera: both gripper jaws in view, picture the right way up, not a blur on a nearby cable or table
- [ ] Scene camera: sees the whole bed and the space the arm will work in, and will not be hit
- [ ] 12 V is still off unless AutoFAB told you otherwise

If a camera goes black, stop using that view and tell AutoFAB. Don't guess.

## What you do not do yourself
Arm calibration, rail home, bed height, fiducials and the first part removal are finished **with AutoFAB**. That is the handover. Do not run any in-app action that drives the rail into the ends unless AutoFAB asks you to.

**TODO:** which of those checks you can do yourself vs. on a call.

## Hand over
1. Leave the cell as it is (Online, cameras plugged in, stop ready, 12 V off).
2. Tell AutoFAB you have finished this guide. Use [Getting help](../getting-help.md) or [autofab.net](https://autofab.net).
3. Stay nearby for the first session. Someone must be able to hit the stop whenever the arm has power.

If power was cut to the rail, tell AutoFAB before anyone moves it. The rail drive forgets its place. Do not push the carriage around to "fix" it unless they ask.

**Back:** [6. Link your printer](06-link-your-printer.md)

Something not right? [Troubleshooting](../troubleshooting.md)
