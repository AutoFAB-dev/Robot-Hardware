# Wrist and scene cameras

Aim and plug-in are hardware. **Metric** calibration (intrinsics, fiducials, hand-eye) is
not a finished owner path on the software that ships with the cell.

**Safety:** Do not power the arm to wave a board at a camera unless AutoFAB has asked,
with someone at the stop. [Safety](../reference/safety.md).

Help: [info@autofab.net](mailto:info@autofab.net)

---

## Local — what you can do now

These are [step 4](../setup/04-wiring-power-stop-cameras.md) and the [step 7](../setup/07-ready-check-and-handover.md) camera ticks. They do **not** calibrate intrinsics.

1. Wrist camera on the printed 27 mm mount (U20CAM default). [Cameras assembly](../reference/cameras/assembly.md).
2. Optional scene camera on the **powered** USB 3 hub, aimed at the bed and the space the arm works in.
3. In the app, confirm both views: wrist shows **both gripper jaws**, right way up; scene shows the bed.
4. If a view goes black, stop using it and tell AutoFAB. Do not keep working from a dead camera.

No printable fiducial tile ships in this repo.

**TODO:** calibration fiducial tile and holder files ([`cad/README.md`](../../cad/README.md)).

## Remote — what exists in software, and what does not

After SSH, cameras stream through the AutoFAB app. That is **live video**, not a calibration.

| Piece | Status | Owner step |
|---|---|---|
| Wrist **intrinsics** (lab ChArUco procedure in the closed software) | Code exists; used on a bench arm. Not an owner runbook in this repo. | **TODO** — do not invent a board size, a capture count, or a CLI. |
| Wrist **hand-eye** (camera to gripper) | Last hardware attempt failed. Remaining estimate is provisional (sim), not good enough to treat as calibrated. | **TODO** |
| Scene camera **extrinsics** | Code exists and ran in simulation. **Never run on hardware.** Live configs have no scene calibration. | **TODO** |
| AprilTag / fiducial assets (`fab/assets/fiducials` and similar) | Not present in this hardware repo. Field registration was **untested**. Calibration branches were **not** merged to the default software line. No live path consumes a calibration file yet. | **TODO** |
| Printed calibration part with AprilTags | Proposed; not decided. Linear work to run it on hardware is still backlog. | **TODO** |

Do **not** download a ChArUco or AprilTag PDF from the internet and treat it as this cell’s
calibration. Do not type camera matrix numbers into a ticket.

When this work lands, this page should name the real app control or the real device
command, the printable in `hardware/` or `cad/`, and whether the owner or AutoFAB clicks
it. Until then, camera **aiming** is the owner job; metric calibration waits.

**Back:** [Rail and carriage homing](rail-homing.md)
**Next:** [Printer and bed registration](printer-and-bed.md)
