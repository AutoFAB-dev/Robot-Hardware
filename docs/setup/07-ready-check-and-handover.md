# 7. Ready check and handover

Confirm the cell is physically ready, then hand it over to AutoFAB. AutoFAB is a managed service: our systems manage production on your machines, including AutoFAB's AI agents plus a human supervision service.

**Safety:** Do not switch the arm's 12 V on unless AutoFAB has asked you to, with someone at the stop. First motions, if any, are small and slow. Don't leave the cell running with nobody there.

**TODO image:** checklist ticked, cell Online, cameras showing a picture, stop within reach

## Ready check
Tick these before you hand over:

- [ ] Rail is clamped and cannot tip
- [ ] Arm is supported when unpowered
- [ ] Stop is within reach and you know how to use it
- [ ] Wrist and scene cameras show a picture in the app
- [ ] Scene camera sees the whole bed and is not going to be hit
- [ ] Cell shows **Online**
- [ ] Your printer shows as reachable
- [ ] 12 V is still off unless AutoFAB told you otherwise

## What you do not do yourself
Calibration of the arm, rail home, bed height and the first part removal are finished **with AutoFAB**. That is the handover. **TODO:** which of those checks you can do yourself vs. on a call.

## Hand over
1. Leave the cell as it is (Online, cameras plugged in, stop ready).
2. Tell AutoFAB you have finished this guide. Use [Getting help](../getting-help.md) or [autofab.net](https://autofab.net).
3. Stay nearby for the first session. Someone must be able to hit the stop whenever the arm has power.

If a later step in the app asks you to home the rail: power-cycle 12 V with the carriage at the **low** end of the rail, then follow the app. The rail drive forgets its place when power is cut.

**Back:** [6. Link your printer](06-link-your-printer.md)

Something not right? [Troubleshooting](../troubleshooting.md)
