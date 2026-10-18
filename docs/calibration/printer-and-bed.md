# Printer and bed registration

Putting the printer on the same LAN is [step 6](../setup/06-link-your-printer.md). That
does **not** register the bed, plate, or printer frame in millimetres for the arm.

**Safety:** Linking a printer must not move the arm. Any later probe of bed height is
powered motion and follows [safety](../reference/safety.md).

Help: [info@autofab.net](mailto:info@autofab.net)

---

## Local — network only

1. Printer on the **same LAN** as the Pi (no guest network, no client isolation).
2. Printer already works in **its own** app on that network.
3. Add it in AutoFAB ([step 6](../setup/06-link-your-printer.md)). Wait until it shows reachable.
4. Do not put LAN access codes, claim codes, or photos of them in GitHub issues.

Bed height, plate pose, and “where is the printer along the rail” are **not** those steps.

## Remote — registration (not an owner runbook yet)

**TODO:** there is no documented, hardware-proven owner procedure in the default software
for:

- bed height,
- plate / print-surface pose,
- AprilTag or other fiducials on the printer or rail,
- a printable registration target (also **TODO** in [`cad/README.md`](../../cad/README.md)).

Printer-and-rail fiducial registration code has been described as present on a software
mainline and **untested in the field**. Exact camera and bed measurement was paused in
favour of working across cells without a per-site survey. Do not invent a `fiducials`
command, a tag family, a tag size, or a bed-height number.

Until that lands, AutoFAB finishes bed and fiducial work **with you** on the bring-up
call, or it stays unmarked. Either way, [step 7](../setup/07-ready-check-and-handover.md)
does not claim the bed is registered just because the printer is reachable.

If a future Calibrate or Settings control appears in the app, extend this page with that
**real** control name. Do not add a CLI from memory.

**Back:** [Wrist and scene cameras](cameras.md)
**Next:** [Ready check and handover](../setup/07-ready-check-and-handover.md)
