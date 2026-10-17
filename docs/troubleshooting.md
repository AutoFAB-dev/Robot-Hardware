# Troubleshooting

Use this if a setup step does not match what you see. Still stuck? [Getting help](getting-help.md).

**Safety:** If something smells hot, sounds wrong, or the stop does not cut 12 V, unplug the arm supply and stop. Claiming and first power-on must not move a motor.

**TODO image:** common layout — Pi lights on, AutoFAB-XXXX in the phone Wi-Fi list

| What you see | Try this |
|---|---|
| No `AutoFAB-XXXX` Wi-Fi after two to three minutes | Confirm the card is seated and the Pi has the 27 W USB-C supply. If the card was blank, re-flash the **provided** image. Don't copy a card from another cell. |
| Setup Wi-Fi password was wrong | Rejoin the **same** `AutoFAB-XXXX` network and try again. Don't re-flash. |
| Claim code expired | Wait. A new code appears by itself. Don't unplug the Pi. |
| Claim did not finish | Leave the setup network, use usual Wi-Fi or mobile data, and open the claim again. Check the Pi still has power and that `AutoFAB-XXXX` has gone (it should, once shop Wi-Fi worked). |
| "Already claimed" | The card was copied from another cell. Stop, flash a fresh provided image, and contact us. |
| Cell offline in the app | Check the Pi has power. Use Ethernet on the printers' network if you can, not guest Wi-Fi. Online/offline should follow the real box. |
| Cell appears twice | You claimed the same box twice or cloned a card. Stop and contact us. Don't keep both. |
| Camera shows a black picture | Plug cameras into the powered hub, not the Pi alone. Until the picture is back, don't use that view. |
| Wrist picture is blurry or shows a cable, not the jaws | Re-seat the mount, check focus, and aim so both jaws are in view. |
| Printer shows unreachable | Put the printer and the cell on the same network. First confirm the printer's own app can see it. |
| A print start looks uncertain | Look at the printer itself (is a job already running?) before you tap retry. |
| Carriage clicks or jumps | Tighten the pinion on the rack. Check the rack pieces sit in the slot. Don't accept a rail home if it skips teeth. |
| Cell restarts when the arm or rail moves | The 12 V supply is too small. Use one with headroom (we suggest 10 A). |
| Wrist-camera mount cracked | Reprint it (4 walls, or PETG). File: `cad/elrobot/stl/CameraMount_square_27mm.stl`. |
| Power was cut to the arm or rail | Unplug 12 V, support the arm, and tell AutoFAB. Don't assume the rail still knows where it is. |
| A joint does not move later (when AutoFAB asks you to power 12 V) | Check servo IDs, reseat the bus cable (a loose gripper plug is a common miss), confirm 12 V is on. Notes: [servos](reference/servos.md). |

Don't put passwords, claim codes, or tokens in photos or issues.
