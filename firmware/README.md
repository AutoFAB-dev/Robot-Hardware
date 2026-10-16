# Firmware and servo configuration
The cell software runs on the Raspberry Pi (see [docs/software-setup.md](../docs/software-setup.md)); there's no separate microcontroller firmware. This page covers the servo settings the hardware depends on.

## Servo IDs
| ID | Role |
|---|---|
| 1–7 | arm joints |
| 8 | gripper |
| 9 | rail drive |

Set IDs one servo at a time on the bus, with Feetech's setup tool or the ID tool in your servo library. **TODO:** recommended tool and exact steps.

## Rail servo
The rail servo setup follows leslider's recipe:
- **Extended multi-turn position mode:** `Operating_Mode` (reg 33) = 0, with `Min_Position_Limit` = 0 and `Max_Position_Limit` = 30719.
- **Position values are 15-bit sign-magnitude.** Keep the whole stroke positive, so power-cycle with the carriage at the **low end** of travel.
- **The multi-turn count is lost on power loss.** Always re-home the rail after a power cut or brownout.
- **Speed ceiling:** the cell software sets the motion profile itself.
- **Torque limit:** reduced, so a jammed carriage can't brown out the supply.
- **Gearing:** one pinion revolution is 4096 ticks, about 126 mm of travel. Measure your own rail travel during calibration.

## R&D
The powered monorail drive spec is R&D, not part of the current kit: [docs/rnd/powered-monorail/firmware-safety-limits.md](../docs/rnd/powered-monorail/firmware-safety-limits.md).
