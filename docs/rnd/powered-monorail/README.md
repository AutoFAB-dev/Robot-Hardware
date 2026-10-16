# Powered monorail (R&D draft v0)
> **R&D, NOT part of the current kit.** Upcoming design work, untested and not buildable yet. The current rail is in the rail section of the [BOM](../../../bom/BOM.md) and the [assembly guide](../../assembly.md).

- **Rail:** 2040 V-slot extrusion standing on edge (40 mm side upright). Travel is probably horizontal (to be confirmed). The robot rides it on V-wheels on a V-slider plate.
- **Drive:** an on-robot motor drives a pinion on a rack in an outer V-groove. Motor and driver **TBD** (sizing estimate in firmware-safety-limits.md: ~0.2–0.7 N·m at the pinion). Brake only if travel is confirmed non-horizontal.
- **Power through the rail, no umbilical:** 12 V DC, 10 A peak.
  - Left 40 mm face: **+12 V**. Right 40 mm face: **GND**.
  - Each is a 0.2 × 10 mm copper strip centred in the 14 mm centre channel over 14 mm Kapton (2 mm of insulation to each lip).
  - Carbon brush blocks (two brushes in tandem, 11.1 mm apart) on a printed inverted-U saddle, preloaded 2–4 mm.
- **Grooves:** outer V-grooves for wheels, rack and pinion; centre channels for power; rear groove for brackets and T-nuts.
- **Safety:** bond the extrusion and frame to GND, fuse the + feed (10 A), onboard diode, bulk capacitor and TVS, end-of-travel switches, e-stop. Details in this folder: [saddle-bracket.md](saddle-bracket.md), [wiring.md](wiring.md), [firmware-safety-limits.md](firmware-safety-limits.md), [saddle.scad](../../../cad/rnd/powered-monorail/saddle.scad).

**Parts list, rail lengths and the drive: TBD.**
