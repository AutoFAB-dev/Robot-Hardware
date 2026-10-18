# Servo IDs, zero, and homing

Feetech **STS3215** servos on this cell: eight on the ElRobot follower (IDs **1–8**) and one
rail drive (ID **9**). Do not use leslider’s SO-101 slider ID **7** for the rail — ElRobot
joint 6 is already ID 7.

**Safety:** Keep 12 V unplugged except when you are setting an ID or AutoFAB has asked you
to power the bus for homing. Support the arm; it is limp without power. Homing writes
servo EEPROM. Powered follow-on motion follows [safety](../reference/safety.md).

Help: [info@autofab.net](mailto:info@autofab.net)

---

## Local — set IDs (you, on the bench)

Do this **during assembly**, before [step 5](../setup/05-flash-install-remote-access.md).
You do not need AutoFAB software or SSH.

1. Use the Waveshare Bus Servo Adapter (A) on the [controller](../reference/controller/assembly.md).
2. Connect **one** STS3215 at a time. Set its ID. Label the servo. Disconnect it. Repeat.
3. Arm map (ElRobot follower manual steps 3–4 and each joint):

   | ID | Where it goes |
   |---|---|
   | 1 | Base |
   | 2 | Joint 1 |
   | 3 | Joint 2 |
   | 4 | Joint 3 |
   | 5 | Joint 4 |
   | 6 | Joint 5 |
   | 7 | Joint 6 |
   | 8 | Gripper |

4. Rail: connect **only** the rail servo, set **ID 9**, label it. See [rail IDs](../reference/rail/ids.md) and [rail assembly](../reference/rail/assembly.md).
5. Unplug 12 V when the labels are done. Daisy-chain the rail servo **after** the gripper once the arm is on the carriage ([rail assembly](../reference/rail/assembly.md)).

**TODO:** ElRobot says “Set Servo ids using app” and does not name the app. Use the same method for IDs 1–8 and 9. Do not invent an app name or a CLI here.

Full assembly: [arm assembly](../reference/arm/assembly.md) (manual steps 1–64).

## Remote — zero and homing (after SSH)

After [step 5](../setup/05-flash-install-remote-access.md), AutoFAB installs the closed cell
software on the Pi. Homing is that software, not this repo.

**You:** present at the stop, 12 V only when asked, arm supported until torque is supposed
to be off for the home.

**AutoFAB / the app:** open the cell at [app.autofab.net](https://app.autofab.net) → **Setup**
→ **Calibrate**.

The Calibrate flow (torque **off**, bus held by the lab — not by live flight):

1. **Center & home.** The UI shows each servo’s current homing state (so a stale EEPROM
   value is visible, not hidden).
2. **Set home** with the arm held in the chosen home pose. For each servo the software:
   - resets homing and opens the software limits,
   - reads the raw present position,
   - writes a homing offset so that pose reads as mid-stroke,
   - verifies the readback.
3. A successful set-home **discards** previously captured joint ranges. Those ranges were
   measured in the old frame. You must recapture ranges after every home ([next page](arm-calibration-files.md)).
4. Leave the arm limp. Do not arm from this page.

There is no public command in Robot-Hardware that performs this write. Do not run
unofficial Feetech ID tools against a live, daisy-chained arm.

## What “home” means here

- **ID** is the bus address. Wrong IDs show up as a joint that never moves when 12 V is on.
- **Homing offset** is stored in the servo. It survives power loss. It is the zero of the
  joint for later range capture and motion.
- **Joint ranges** are a later step on [arm calibration files](arm-calibration-files.md).
  Homing alone is not a full arm calibration.

If Calibrate reports that a servo needs a re-home after connect, **stop**. Do not arm.
The EEPROM and the saved profile disagree. Stay on this page with AutoFAB; email
[info@autofab.net](mailto:info@autofab.net) if you are not already in that session.

**Back:** [Calibration index](README.md)
**Next:** [Arm calibration files](arm-calibration-files.md)
