# Troubleshooting

Use this if a setup step does not match what you see. Still stuck? [Getting help](getting-help.md).

**Safety:** If something smells hot, sounds wrong, or the stop does not cut 12 V, unplug the arm supply and stop.

**TODO image:** common layout — Pi lights on, AutoFAB-XXXX in the phone Wi-Fi list

| What you see | Try this |
|---|---|
| No `AutoFAB-XXXX` Wi-Fi after 3 minutes | Re-flash the provided image with Raspberry Pi Imager. Use the 27 W USB-C supply. |
| Setup Wi-Fi password was wrong | Rejoin `AutoFAB-XXXX` and try again. Don't re-flash. |
| Claim code expired | Wait. A new code appears by itself. |
| "Already claimed" | The card was copied from another cell. Stop, flash a fresh image, and contact us. |
| Cell offline in the app | Check the Pi has power. Use Ethernet on the printers' network, not guest Wi-Fi. |
| A joint does not move later (when AutoFAB asks you to power 12 V) | Check servo IDs, reseat the bus cable, confirm 12 V is on. Notes: [servos](reference/servos.md). |
| Carriage clicks or jumps | Tighten the pinion on the rack. Check the rack pieces sit in the slot. |
| Cell restarts when the arm or rail moves | The 12 V supply is too small. Use one with headroom (we suggest 10 A). |
| Camera shows a black picture | Plug cameras into the powered hub, not the Pi alone. |
| Wrist-camera mount cracked | Reprint it (4 walls, or PETG). File: `cad/elrobot/stl/CameraMount_square_27mm.stl`. |
| Printer shows unreachable | Put the printer and the cell on the same network. |
| Rail position is wrong after a power cut | Power-cycle 12 V with the carriage at the low end, then home the rail in the app when AutoFAB asks. |

Don't put passwords, claim codes, or tokens in photos or issues.
