# Calibrate the cell

This section is for someone who already has the hardware. It is the software and motion
side of bringing a cell up: servo identity, arm home and joint ranges, rail home, cameras,
and printer / bed registration.

**It is not a substitute for [safety](../reference/safety.md).** Powered arm or rail motion
follows that page: someone at the physical stop, 12 V on only when AutoFAB has asked you
to switch it on, first moves small and single-joint.

AutoFAB is a managed service: our systems manage production on your machines. The
production software is closed. This repo documents the **owner-facing** steps that match
what that software actually implements. Steps that are not built yet are marked **TODO**.
Do not invent extra commands, IDs, or numbers.

Help: [info@autofab.net](mailto:info@autofab.net) · [Getting help](../getting-help.md)

---

## Where this sits in setup

Do [steps 1–5](../setup/README.md) first (unbox, mount, wire with 12 V off, flash, remote
access). [Step 6](../setup/06-link-your-printer.md) links the printer on the LAN and does
not move the arm. Work this calibration section next. Then [step 7](../setup/07-ready-check-and-handover.md).

Servo **IDs** are set on the bench during assembly, before the Pi is even online. Everything
that writes a home, a range, or a pose needs AutoFAB software on the Pi **after** SSH /
remote access from step 5.

## Who does which step

| Stage | You, on the bench (local) | After SSH, on the cell (remote software) | Powered motion? |
|---|---|---|---|
| [Servo IDs, zero, homing](servo-ids-and-homing.md) | Set and label IDs 1–8 and rail ID 9, one servo at a time | Center & home in the app Calibrate flow | ID setting: 12 V on the **driver only**, torque off. Homing writes servo EEPROM with the arm limp. |
| [Arm calibration files](arm-calibration-files.md) | Do not hand-edit files on the Pi | The Calibrate flow saves the profile and binds it on connect | No, if you are only saving. Confirming a bind must not arm the arm. |
| [Rail and carriage homing](rail-homing.md) | Keep the rail clear; do not shove the carriage while it is unpowered | Rail calibration in the app Settings / Calibrate flow | **Yes.** Follow [safety](../reference/safety.md). Home the **arm** before the carriage moves near a printer. |
| [Wrist and scene cameras](cameras.md) | Aim the cameras (step 7 ready check) | **TODO** — no owner runbook on the default software yet | **TODO** |
| [Printer and bed registration](printer-and-bed.md) | Prove the printer in its own app (step 6) | **TODO** | **TODO** |

## Stages

1. [Servo IDs, zero, and homing](servo-ids-and-homing.md) — Feetech STS3215 on the ElRobot follower (IDs 1–8) and the rail drive (ID 9).
2. [Arm calibration files](arm-calibration-files.md) — the per-arm JSON the cell stores after a successful Calibrate save.
3. [Rail and carriage homing](rail-homing.md) — contact home of the linear carriage.
4. [Wrist and scene cameras](cameras.md) — intrinsics, fiducials, hand-eye. **TODO** where the code is missing or unproven on hardware.
5. [Printer and bed registration](printer-and-bed.md) — plate / bed frame. **TODO**.

## What you will use

- This hardware repo for IDs, wiring, and the stop: [arm IDs](../reference/arm/ids.md), [rail IDs](../reference/rail/ids.md), [controller assembly](../reference/controller/assembly.md).
- After step 5, the AutoFAB app at [app.autofab.net](https://app.autofab.net). Open the cell → **Setup** → the **Calibrate** flow for the arm. Rail calibration is in **Settings** on the same app.
- AutoFAB on the other end of SSH, because the closed software actually talks to the bus. Email [info@autofab.net](mailto:info@autofab.net) when you are ready for that session.

There is no public CLI in this repository that homes a servo, writes an arm profile, or homes the rail. `scripts/install.sh` never moves a motor.

## TODOs (no owner steps yet)

These are listed in full on the stage pages. In short:

- The ID **app name** is not in the ElRobot manual ([arm IDs](../reference/arm/ids.md)).
- Wrist hand-eye, scene-camera extrinsics, and AprilTag / fiducial registration are **not** a finished owner path.
- This repo has no printable fiducial tile ([`cad/README.md`](../../cad/README.md)).
- Printer / bed / plate registration is **not** a finished owner path.
- Exact on-screen labels for rail **Home** vs **Calibrate** may still move; do not invent button names.

**TODO image:** cell Online, 12 V still off, stop in reach, wrist camera showing both jaws
