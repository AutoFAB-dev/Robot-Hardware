# Servo IDs and hardware notes

AutoFAB software is closed source. This page is hardware only: which servo is which, how they are wired, and how they are powered.

Customer wiring step: [4. Wiring, power, stop and cameras](../setup/04-wiring-power-stop-cameras.md).

## Servo IDs
| ID | Role |
|---|---|
| 1–7 | arm joints |
| 8 | gripper |
| 9 | rail drive |

Set IDs one servo at a time on the bus, with Feetech's setup tool. **TODO:** recommended tool and exact steps. Label each servo before you install it.

## Wiring and power
- Servos take **12 V** from the servo driver only. The driver's USB link to the Pi is data, not power.
- Daisy-chain the rail servo (ID 9) after the gripper.
- Keep the Pi on its own 27 W USB-C supply.
- Put the physical stop on the 12 V lead (or a switched strip you can reach).

## Rail drive
- After a power cut, the rail drive loses its place. Power-cycle with the carriage at the **low end** of travel, then re-home in the app when AutoFAB asks.
- A loose pinion/rack mesh skips teeth. Check the mesh by hand with power off.
