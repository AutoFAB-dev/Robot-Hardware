# Powered monorail: firmware safety limits (SPEC for Development, DRAFT v0)
> **R&D, NOT part of the current kit.** Draft design only.
Spec only, not code. Values are **proposed defaults** to tune on the bench. The motor and driver for the new on-robot rack-and-pinion drive are **not chosen yet**. Current-kit rail reference (leslider design): STS3215 pinion, 4096 ticks/rev = 126 mm/rev.

## Kinematic limits (configurable)
| Limit | Default | Rationale |
|---|---|---|
| Max speed | **100 mm/s** (commissioning: 25 mm/s) | human nearby; brush wear and bounce rise with speed |
| Max accel/decel | **300 mm/s²**, trapezoidal or S-curve | avoids pinion skipping teeth (seen on the old rail) |
| Homing speed | **10 mm/s** | contact homing |
| Jog speed | 10 mm/s | |
| Gravity | **Brake (or self-locking gearing) only if travel is confirmed non-horizontal.** With horizontal travel, no holding brake is needed; the drive must not coast after disable (short-brake the motor windings or use a high-ratio gearbox). | the profile stands on edge; travel is probably horizontal |

## Motor and gearbox sizing (estimate)
**Assumptions** (all to confirm):
- Travel is **horizontal**.
- Moving mass **m = 2–4 kg**: arm ~0.8 kg (published ElRobot figure) plus Pi, plate, wheels, brushes, motor, electronics.
- Pinion pitch radius **r = 10–20 mm**. The 20 mm figure matches the current rail's 126 mm/rev.
- Friction:
  - V-wheel rolling drag **2–5 N**.
  - Brush drag: 4 brushes × ~5 N spring force × μ 0.2–0.3 ≈ **4–6 N**.
  - Total **6–11 N**. These are assumed typical values, not measured.
- Drive efficiency **~70%**. Safety factor **×2**.

| | Low | High |
|---|---|---|
| Acceleration force m·a (a = 0.3 m/s²) | 0.6 N | 1.2 N |
| Friction | 6 N | 11 N |
| Total at the rack | 6.6 N | 12.2 N |
| Pinion torque (r = 10 / 20 mm) | 0.07 N·m | 0.24 N·m |
| ÷ efficiency 0.7, × safety factor 2 | **0.2 N·m** | **0.7 N·m** |

- **Estimated required output torque: ~0.2–0.7 N·m at the pinion.** Friction dominates; acceleration is under 10% of the load.
- **Output speed:** 100 mm/s ÷ (2π·r) = **48 rpm (r = 20 mm) to 95 rpm (r = 10 mm)**.
- **Mechanical power:** about 1.2 W (≤ ~4 W with margins), so the motor is sized by torque, not power.
- **Gearbox options:**
  - A 12 V brushed or BLDC motor at ~3,000–6,000 rpm needs about **30:1 to 100:1**.
  - A 12 V bus servo like the current rail's STS3215 (30 kg·cm ≈ 2.9 N·m stall) covers the range with large margin and gives position feedback.
  - A NEMA 17 stepper (~0.4–0.5 N·m holding) direct-drive is marginal at the high end. Add a 3:1–5:1 reduction or use r = 10 mm.
- **Drive current** at 12 V is small (under ~1 A average), well inside the 10 A peak budget.
- **If travel is confirmed non-horizontal:** add m·g·sin(θ). Fully vertical travel adds 20–39 N, about **0.2–0.8 N·m before margins (0.6–2.2 N·m after them)**, plus a brake.

## Current limits
- Motor driver current limit: **≤8 A continuous**, **10 A peak ≤1 s**. The supply and fuse are 10 A.
- Fault if the current exceeds the limit for longer than 200 ms, or if the bus current is above 10 A.

## Homing and end limits
- Home to a **physical hard stop or switch at one end** (the bottom if travel is non-horizontal) every power-up, before any move.
- **Two end-of-travel switches (top and bottom)**, normally closed, wired to cut motor enable in hardware as well as being read by firmware.
- **Soft limits:** 5 mm inside each end switch. Reject targets outside them.
- Re-home after any lost-position event (dropout, stall, e-stop).

## Stall / slip detection
- Compare the commanded and encoder position: **following error >2 mm** (or 1 rack tooth) → stop and fault.
- Current at the limit with velocity near 0 for **>200 ms** → stall fault.
- Tooth-skip detection: a sudden position jump of about one tooth pitch → fault and re-home (the old rail skipped ~1 tooth per touch).

## Brush dropout / brownout
- Monitor the onboard bus voltage at ≥1 kHz.
- **<10.5 V for >5 ms** (the cap rides through ~2 ms): controlled stop, then hold (brake if fitted).
- **<9 V:** immediate disable (plus brake if fitted). Log the event with position; this flags a dirty strip or joint at that location.
- Count dropouts per position bucket and alert when they repeat at the same spot (strip joint or wear).
- Logic (Pi/MCU) on its own regulator, fed from the bulk cap, with brown-out reset enabled. On reboot, never auto-move; require a re-home command.
- Over-voltage (regen): **>15 V** → stop accelerating and engage the brake resistor or TVS.

## E-stop
- Hardware e-stop **cuts motor power (or enable)** independent of firmware: a normally-closed mushroom in the rail feed, or an onboard enable line. Note that cutting the rail feed also cuts logic, so it needs the hold/brake behaviour above.
- Firmware e-stop (software command): decelerate at max decel, then disable (plus brake if fitted). Latch until a human clears it. Re-home after clearing.

## Watchdog
- Host → drive heartbeat every **100 ms**. **Missed for 300 ms** → controlled stop.
- MCU hardware watchdog, ~**250 ms**. On reset: disabled, not homed.
- Command streaming: each move has a deadline; stale commands are discarded.

## Interlocks
- No motion while the arm is in a no-travel pose (arm/rail coordination).
- The arm's rail axis must not move while a printer door is open or a part is held: higher-level rule, TBD.

## Telemetry to expose
Position, velocity, motor current, bus voltage, dropout count, end-switch states, fault codes, temperature (driver, and brush block if fitted).
