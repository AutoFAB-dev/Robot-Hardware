# Arm calibration files

After homing, the cell stores a **per-arm profile**: which servo is which joint, how it is
driven, its homing offset, and the usable range. The AutoFAB software binds that profile
on connect by matching the **live pose**, not by USB port order.

**Safety:** Saving a profile does not require the arm to be armed. Do not enable torque to
“test” a profile unless AutoFAB has asked, with someone at the stop. See [safety](../reference/safety.md).

This public hardware repo does **not** ship arm profiles. They are device-local on the Pi
and must not be committed or pasted into a GitHub issue.

Help: [info@autofab.net](mailto:info@autofab.net)

---

## Local

Nothing to copy from this repo. Do not create a JSON file by hand and do not edit one on
the Pi to “fix” a joint.

If you are still setting IDs, go back to [servo IDs and homing](servo-ids-and-homing.md).

## Remote — capture ranges and save (after SSH)

In the app: cell → **Setup** → **Calibrate**, after Center & home succeeded.

1. **Joint ranges.** For each arm joint: Record → move that joint by hand through its
   safe mechanical travel → Done. The software stores min and max in the **homed** frame.
2. **Gripper.** Capture **open** and capture **closed** (linear mode along that arc).
3. **Save.** The software writes the profile and, on save-with-apply, writes the recorded
   ranges into each servo’s hardware limits, then readback-checks them.

A wrap warning after a successful home means travel past a half turn or a failed home —
treat it as a fault, not as a number to type in.

On every later connect, with the arm **limp**, the software:

- reads the live pose (all eight arm servos must answer),
- scores saved profiles by how closely each joint round-trips,
- binds the matching profile, or stays **uncalibrated** (raw hold only — it will not
  apply a foreign profile).

If the app shows uncalibrated or “needs re-home”, do not arm. Re-run Calibrate with AutoFAB.

## What the file contains

Saved profiles use a named-motor object (one entry per joint name). Fields the software
reads and writes:

| Field | Role |
|---|---|
| `id` | Bus ID (1–8 on the follower; rail is separate) |
| `drive_mode` | Direction (including gripper open/close sense) |
| `homing_offset` | EEPROM homing written at Set home |
| `range_min` / `range_max` | Usable window in the homed frame |

An older positional list format is still **read** for migration. New Calibrate saves write
the named format. You do not run a migrate command; AutoFAB does that on the device if a
legacy file is present.

The same facts are kept in three places, kept in sync by the software:

1. Servo EEPROM (homing and limits) — survives reboots.
2. The profile file on the Pi (device-local, not in git).
3. The driver in memory after a successful bind.

This repo has no sample numbers for `homing_offset` or ranges. Do not copy values from
another cell.

## Checks that do not need motion

After a save, with 12 V on and the arm **limp**, the app should show the cell as calibrated
and bound. Joint readouts should track if you move a joint by hand. That is enough to
know the file landed. Jogging and macros are a later, powered session under
[safety](../reference/safety.md).

**Back:** [Servo IDs, zero, and homing](servo-ids-and-homing.md)
**Next:** [Rail and carriage homing](rail-homing.md)
