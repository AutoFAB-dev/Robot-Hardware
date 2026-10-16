# Powered monorail: wiring (DRAFT v0)
> **R&D, NOT part of the current kit.** Draft design only.
12 V DC, **10 A peak**, power through the rail (no umbilical).

## Rail conductor (copper strip)
- 0.2 × 10 mm = 2.0 mm². Copper ρ = 0.0172 Ω·mm²/m → **8.6 mΩ/m per strip**; loop (+ and −) **17.2 mΩ/m**.
- At 10 A: **0.17 V drop per metre of distance from the feed**. Feed from the middle of long rails (or both ends) if the rail is over 2 m.
- Brush contact drop (carbon): typically ~0.5–1 V per brush pair at rated current (typical carbon-brush figure, **not measured**). Budget about **1.5–2 V worst case** at the robot, so design the onboard electronics for a **10–12 V** input.

## Onboard distribution
| Run | Length (assumed) | Wire | Drop at 10 A | Note |
|---|---|---|---|---|
| Brush pigtails → bus | ≤0.15 m | as supplied, or **16 AWG (1.31 mm²)** | ~0.02 V | stranded, high-flex silicone |
| Bus → motor driver | ≤0.5 m loop | **14 AWG (2.08 mm², 8.3 mΩ/m)** | ~0.04 V | silicone, high-strand |
| Logic / Pi buck (≤3 A) | ≤0.5 m | 18–20 AWG | small | |
- **Why 14 AWG:** 10 A peak and about 3–5 A RMS fits easily within silicone 14 AWG chassis ratings, keeps the drop small and stays rated above the fuse. 16 AWG is the minimum acceptable for the short main runs.
- Join the two brushes on each side in parallel at the bus (redundancy across bounce and joints).

## Protection
- **+ rail feed fuse: 10 A** slow-blow blade (ATO/ATC) at the supply, sized to the 10 A peak. Use **15 A** if motor inrush trips 10 A on test; never exceed the feed wire rating (**14 AWG or heavier** from the supply to the rail).
- **Onboard fuse: 10 A** blade right after the brushes and diode (protects the robot's wiring if the cap or driver shorts).
- Bond the extrusion and frame to GND at the supply (see saddle-bracket.md).
- **Reverse-polarity/backfeed diode:** Schottky, **≥20 A, ≥40 V** (e.g. dual TO-220/TO-247), in series with +12 V after the brushes. Or an ideal-diode MOSFET controller to avoid the ~0.5 V drop and heat (~5 W at 10 A for a Schottky). It also stops the bulk cap feeding back into the rail.

## Bulk capacitor (brush bounce)
- C = I · t / ΔV. Ride through **2 ms** of dropout at **10 A** with **2 V** droop → **10,000 µF**. For 5 A typical: 5,000 µF.
- Recommend **2–3 × 4,700 µF, 25 V, low-ESR** electrolytics (≥25 V for 12 V plus regen), plus 10 µF ceramic at the driver.
- **Inrush:** 10,000 µF charging on brush contact draws large current pulses (brush arcing). Add an **NTC or soft-start/hot-swap controller** in front of the cap.
- **Regeneration:** the diode blocks motor braking current from returning to the rail, so the cap voltage rises. Add a **TVS (e.g. ~18 V standoff)** or a brake-resistor clamp on the onboard bus.

## Connectors
- Brush leads: crimped ring terminals on the block studs. Bus: **XT30** (15 A cont.) or XT60. Motor: driver screw terminals or XT30.
- Rail feed: ring lug soldered or clamped to the strip end, in strain relief, plus a fuse holder.
- Keep + and − twisted together; never route + across the extrusion without sleeving.

## Assumptions to verify
Rail length, onboard lengths, motor/driver choice and actual brush resistance (measure the drop at 5 A and 10 A).
