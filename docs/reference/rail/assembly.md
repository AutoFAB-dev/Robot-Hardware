# Rail — assembly

Credit: leslider [assembly](https://github.com/pham-tuan-binh/leslider#3-assembly) (README section 3). Adapter steps are AutoFAB and are **TODO**. ID 9 is the AutoFAB cell map, not leslider’s default 7.

**Safety:** Keep 12 V unplugged except when setting the rail ID. Support the arm if it is already on the carriage.

Tools: **TODO** (leslider does not list tools). PH1 / PH2 from the ElRobot kit will turn the listed M3 hardware; M5 tools are **TODO**.

## Prepare
**TODO image:** printed legs, pinion, track segments, and adapter cleaned

1. Print the leslider parts and the adapter ([parts](parts.md)). Remove supports. The pinion bore and the track slot in the extrusion must be clear.
2. Confirm extrusion length suits your printers. leslider: 300 to 500 mm is typical; this cell: “length to suit your printers.”

## Set ID 9
**TODO image:** one rail servo on the driver, labelled 9

3. Connect **only** the rail ST3215 to the [controller](../controller/assembly.md) driver. Set it to **ID 9** with the same [method as the arm](../arm/ids.md#how-to-set-an-id), then label it **9**. See [IDs](ids.md). Disconnect it before the next steps.

## Rack track
**TODO image:** 20 mm track segments in the top channel of the 2020

4. Slide the printed track segments into the **top-facing** channel of the V-slot (leslider step 2). They sit under where the pinion will land.
5. Span the extrusion. Trim the last segment if it overruns (leslider).

## Carriage
**TODO image:** gantry plate V-wheels in the side channels

6. Slide the gantry plate onto the V-slot so its V-wheels engage the side channels (leslider step 3). Do this **before** the legs go on, so the plate can enter from an open end.

## Legs
**TODO image:** a leg bolted to one end with an M5 T-nut

7. Bolt one leg to one end: one M5 bolt (12–16 mm) through the leg into one drop-in M5 T-nut in the V-slot side channel (leslider step 4).
8. Repeat at the other end with the second leg.

## Base mount on the gantry
**TODO image:** base mount on the gantry, two M5 holes 20 mm apart

9. The gantry plate has two M5 holes spaced 20 mm apart (leslider step 5). Align the printed base mount over them.
10. Fasten with two M5 bolts (≥10 mm) plus M5 nuts on the underside.

## ElRobot adapter
**TODO image:** adapter between the leslider carriage and the ElRobot base

11. Fit the ElRobot-to-carriage adapter. File, hole pattern, and fasteners: **TODO**. leslider’s next step bolts an SO-101 base through four M3 ≥20 mm holes in that arm’s base bracket — do not treat that pattern as ElRobot’s.
12. Attach the ElRobot base to the adapter. Fasteners: **TODO**.

## Rail drive (servo 9)
**TODO image:** servo 9 in the base-mount cutout, pinion on the rack

13. Drop the labelled ST3215 into the cutout on the base mount (leslider step 7).
14. Slide the printed pinion onto the servo’s output gear so it engages the rack track.
15. Secure the servo with the screws from its package (count **TODO**).

## Bus
**TODO image:** rail servo daisy-chained after the gripper, slack along the rail

16. Daisy-chain the rail servo **after the gripper**. See [wiring](wiring.md). Do not use leslider’s SO-101 “base yaw → slider → controller” order on this cell.

Then: [controller](../controller/assembly.md) if the driver is not built, [cameras](../cameras/assembly.md), [checks](checks.md).
