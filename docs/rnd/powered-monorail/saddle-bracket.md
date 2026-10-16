# Powered monorail: brush saddle bracket (DRAFT v0)
> **R&D, NOT part of the current kit.** Draft design only.
Design only. Parametric model: [`saddle.scad`](../../../cad/rnd/powered-monorail/saddle.scad) (OpenSCAD). Nothing has been printed or tested.

## Geometry
- Rail: **2040 V-slot standing on edge** ("vertical" means the profile orientation: the 40 mm side is upright). Cross-section 20 × 40 mm. Travel is along the length and is **probably horizontal, to be confirmed**.
- **Left 40 mm face: +12 V. Right 40 mm face: GND.** Each face has a uxcell copper strip, 0.2 × 10 mm, centred in the 14 mm centre channel on 14 mm Kapton (2 mm of insulation to each lip).
- Outer V-grooves carry the wheels, rack and pinion. The rear groove takes brackets and T-nuts.
- Collector: one Hoypeyfiy Honda-style carbon brush block per side, two brushes in tandem 11.1 mm apart, 1/4" mounting holes at 1" centres.
- Saddle: a printed **inverted U** bolted to the V-slider plate. It straddles the rail with one leg down each 40 mm face and presses each block's brushes onto its strip with **2–4 mm preload**.

## Standard dimensions used (sources)
| Item | Value | Source |
|---|---|---|
| 2040 V-slot profile | 20 × 40 mm, slot opening 6.2 mm | OpenBuilds V-Slot 20x40 DXF (github.com/Thingibox/OpenBuilds) |
| Wheel centre-to-centre across a profile | profile width + 20 mm (solid V) / + 12 mm (mini V). For 2040 on its 40 face: 60 mm / 52 mm. Use one eccentric spacer side | OpenBuilds forum, Rick 2.0 (threads 10206, 18605, 12428) |
| Gantry plate that fits 20–80 mm widths | OpenBuilds V-Slot Gantry Plate – Universal | same forum thread 10206 |
| 14 mm centre channel | 14 mm | **VERIFY** on your extrusion vendor's drawing. Profiles vary by vendor |
| Brush block body | **unknown**: the listing gives the hole spec only | **VERIFY**: measure a block |

## Key dimensions (defaults in saddle.scad)
| Parameter | Default | Why |
|---|---|---|
| Inner leg gap | 20 + 2×(block thickness − preload + 2 mm shim) = **42 mm** with the 12 mm block placeholder | the 40 mm faces are 20 mm apart; each block sits between its leg and the strip |
| Leg depth | 1 + 40 + 1 = **42 mm** | spans the full 40 mm face with a 1 mm gap at each end |
| Bridge/leg wall | **4 mm** | stiff enough in PETG/ASA to hold 2–4 mm of spring preload without creeping |
| Leg length (travel axis) | **40 mm** | fits 2 holes at 25.4 mm plus margin; block is ~2 brushes × 11.1 mm |
| Block holes | **2 × 1/4" (6.35 + 0.3 mm), 25.4 mm c-c**, centred on the 14 mm channel | preload set by **printed shims** (0–4 mm) between the block and the leg |
| Plate holes | **M5 + 0.3 mm**, 20 mm grid | OpenBuilds plates use M5. **VERIFY** your plate's grid |

## Print assumptions
- **FDM, PETG (indoor) or ASA (hot enclosure or near printers).** No PLA: it creeps under constant spring load and softens near heated beds.
- 0.4 mm nozzle, 0.2 mm layers, **5 perimeters**, 40% gyroid infill. Print with the bridge flat on the bed so the legs are loaded along their layers, not across them.
- Hole clearance: **+0.3 mm** on diameter (horizontal holes in PETG), or drill or ream to size. For long life, use heat-set inserts or a captive nut on the block side.
- Plastic is an insulator, but don't rely on it: use **nylon washers or shoulder bushings** where the +12 V brush pigtail terminal sits near a bolt.

## Preload adjustment
1. The legs are fixed, so preload is set through the thickness with **printed shims** (`shim()` in saddle.scad; 0.5/1/2 mm) between the block and the leg.
2. The nominal 2 mm shim stack gives **3 mm** preload. Remove shims for less, add for more (range 2–4 mm). Measure the brush stick-out with calipers on both sides.
3. Torque the bolts. Check that the brush holder never bottoms out at the extremes of the plate's wheel play: preload − play ≥ 1 mm.
- Equal preload on both sides keeps the side loads balanced on the wheels.

## Design review notes (applied)
- **A Kapton nick shorts +12 V to the aluminium extrusion,** and the rail is bolted to the frame. Mitigations:
  - **Bond the extrusion and frame to GND** at the supply, so a nick blows the fuse instead of energising the frame.
  - **Fuse the + rail** at the feed (see wiring.md).
  - Consider a sturdier insulator than 0.05 mm-class Kapton tape:
    - **Polyester (PET/Mylar) 0.125–0.25 mm** with adhesive: tougher against abrasion.
    - **FR-4 strip 0.4–0.8 mm**, with the copper bonded on top: rigid, very cut-resistant.
    - **Printed PETG/ASA carrier in the channel**, with the copper pressed in: thick and replaceable.
    - **Double-layer Kapton** with offset seams: cheapest upgrade.
- **Smooth strip joints:** butt joints chamfered, with no step greater than about 0.05 mm in the travel direction; solder or bridge the joint from behind. Tandem brushes 11.1 mm apart ride over any single joint (one is always on solid copper). Keep joints out of the dwell positions.

## Open
Brush block body dimensions; plate hole grid; exact 14 mm channel depth on the chosen extrusion; wheel arrangement (which grooves the wheels use versus the rack) needs a CAD check against the DXF.
