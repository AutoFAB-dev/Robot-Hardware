# Rail and carriage homing

The carriage is driven by a ninth STS3215 (**ID 9**) on the same bus as the arm. Homing
finds the physical end stop by **contact**, then uses that as zero for millimetre travel
along the printer row.

**Safety:** This stage **moves** the carriage. Follow [safety](../reference/safety.md):
someone at the stop, 12 V on only when AutoFAB has asked, keep clear of the rack pinch
point. Home the **arm** to a compact pose **before** the carriage runs near a printer.
Do not home or calibrate the rail in a stretched or stowed pose that can sweep a machine.

Help: [info@autofab.net](mailto:info@autofab.net)

---

## Local — hardware only

Do these on the bench. No AutoFAB software required:

1. Rail servo is **ID 9**, labelled, daisy-chained after the gripper. [Rail IDs](../reference/rail/ids.md) · [rail assembly](../reference/rail/assembly.md).
2. Track is in the top channel; carriage wheels are in the side channels; the rack and pinion mesh.
3. The travel path is clear (cables, printer frames, people).
4. Do **not** shove the carriage while 12 V is off. An unpowered push is a lost frame;
   the next home must not be skipped.

There is no owner command in this repo that drives the rail. `scripts/install.sh` does not
touch the bus.

## Remote — home / calibrate (after SSH)

After [step 5](../setup/05-flash-install-remote-access.md) and a successful
[arm Calibrate](arm-calibration-files.md).

In the AutoFAB app, rail calibration is in **Settings** (same console as arm Setup). Run it
with AutoFAB on the session.

What the software is built to do:

- Drive the carriage until **contact** at the home end stop, then (when you are measuring
  the full stroke) to the far end, and store travel.
- Keep millimetre position in a software odometer, not by hoping the wheel-mode count
  survives a process restart by itself.
- Refuse rail motion that would sweep printers with the arm in a bad pose; compact the
  arm first.

**TODO:** the exact button labels (**Home rail** vs **Calibrate rail — crawl both ends**)
are from a trust-model change that was **not** on the default branch when this guide was
written. Do not invent a command line for this. Use the Settings control AutoFAB points
you at on the call, with your hand on the stop.

Until travel has been measured on **this** cell, a verify-only home is not enough. The
first bring-up needs the full contact measurement, not a skip.

Do not edit a rail position file on the Pi.

## After a restart or a shove

| What happened | What to expect |
|---|---|
| Software restarted, carriage not touched | Frame can be reconstructed; you should not need a full crawl. |
| Rail servo lost power, carriage not touched | Same: reconstruct, no crawl. |
| Carriage was pushed while unpowered, or travel was never measured | Treat the frame as untrusted. Run rail calibration again. Taught millimetre poses are stale if the stroke changed. |

Those cases are how the rail software is **specified**. If the app and the carriage
disagree, stop and redo calibration; do not type a millimetre value in by hand.

This guide does **not** publish a travel length or tick count. Measure this cell with the
contact procedure. Another cell’s numbers are wrong here.

**Back:** [Arm calibration files](arm-calibration-files.md)
**Next:** [Wrist and scene cameras](cameras.md)
