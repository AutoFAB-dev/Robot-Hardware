# Rail — parts

Credit: purchased hardware and printed-part names from the [leslider README](https://github.com/pham-tuan-binh/leslider#1-bill-of-materials) (sections 1–2). Those quantities are **in addition to** a stock SO-101 kit; this cell uses them with the ElRobot arm instead. The ElRobot-to-carriage adapter is AutoFAB and is **TODO**.

Print defaults: **TODO**. leslider ships `3d/full_print.3mf` and `3d/separate_components/` but does not state filament, nozzle, layer height, infill, or orientation. Do not assume the ElRobot PLA / 0.4 mm / 0.2 mm defaults apply here.

CAD: [leslider `3d/`](https://github.com/pham-tuan-binh/leslider/tree/main/3d). Onshape source is linked from that README. No leslider files are copied in this repo (see [NOTICE](../../../NOTICE)).

Arm printed parts: [arm parts](../arm/parts.md). Controller and cameras: [controller parts](../controller/parts.md), [cameras parts](../cameras/parts.md).

## Printed

| Qty | Part | Material | Infill | Orientation |
|---|---|---|---|---|
| 2 | Legs (`separate_components/leg.3mf`) | TODO | TODO | TODO (use upstream `.3mf` plate if you have it) |
| 1 | Base mount (`separate_components/base_mount.3mf`) | TODO | TODO | TODO |
| 1 | Pinion (`separate_components/pinion.3mf`) | TODO | TODO | TODO |
| as needed | Rack track segments (`separate_components/track.3mf`), 20 mm each | TODO | TODO | TODO |
| 1 | ElRobot-to-carriage adapter | TODO | TODO | TODO |

leslider: print enough 20 mm track segments to span the extrusion; trim the last one if it overruns. The upstream base mount is designed for the SO-101 base, not ElRobot.

Adapter file path, hole pattern, and fasteners: **TODO** ([cad/README.md](../../../cad/README.md)).

## Purchased

| Qty | Part | Spec |
|---|---|---|
| 1 | ST3215 servo | 12 V, same model as the arm motors (leslider; AutoFAB cell: rail drive) |
| 1 | 2020 V-slot extrusion | length to suit your printers. leslider: “any length sized to your reach (300 to 500 mm is typical)” |
| 1 | Gantry plate with V-wheels | rides the 2020 as the carriage (leslider BOM) |
| 4 | M3 bolts | ≥20 mm (leslider: SO-101 base to base mount; adapter use is **TODO**) |
| 2 sets | M5 bolts + M5 nuts | bolts ≥10 mm (leslider: base mount to gantry) |
| 2 sets | M5 bolts + M5 drop-in T-nuts for 2020 | bolts 12–16 mm (leslider: legs to extrusion) |
| — | Servo package screws | leslider: “secure the servo with the screws that ship in its package.” Count **TODO** |
