# Troubleshooting

Use this if a setup step does not match what you see. Still stuck? [Getting help](getting-help.md).

**Safety:** If something smells hot, sounds wrong, or the stop does not cut 12 V, unplug the arm supply and stop. Claiming and first power-on must not move a motor.

**TODO image:** common layout — Pi lights on, AutoFAB-XXXX in the phone Wi-Fi list

| What you see | Try this |
|---|---|
| No `AutoFAB-XXXX` Wi-Fi after two minutes | Confirm the card is seated and the Pi has the 27 W USB-C supply. If the card was blank, re-flash the **provided** image. Don't copy a card from a cell that has already been turned on. |
| Setup Wi-Fi password was wrong | Rejoin the **same** `AutoFAB-XXXX` network and try again. Don't re-flash. |
| Claim did not finish | Leave the setup network, use usual Wi-Fi or mobile data, and open the claim link again. Check the Pi still has power and that `AutoFAB-XXXX` has gone (it should, once shop Wi-Fi worked). |
| Already claimed / won't take this box | The card was copied from a cell that was already turned on, or this box was already assigned. Stop and contact AutoFAB. Don't copy cards. |
| Cell offline in the app | Check the Pi has power. Use Ethernet on the printers' network if you can, not guest Wi-Fi. Online/offline should follow the real box. |
| Cell appears twice | You should see the cell **once**. Two entries usually means a copied card (each box needs its own image). Stop and contact AutoFAB. Don't keep both. |
| Camera shows a black picture | Plug cameras into the powered hub, not the Pi alone. Until the picture is back, don't use that view. |
| Wrist picture is blurry or shows a cable, not the jaws | Re-seat the mount, check focus, and aim so both jaws are in view. |
| Printer shows unreachable | Put the printer and the cell on the same network. First confirm the printer's own app can see it. |
| Carriage clicks or jumps | Tighten the pinion on the rack. Check the rack pieces sit in the slot. |
| Wrist-camera mount cracked | Reprint it. File: [`CameraMount_square_27mm.stl`](../hardware/cameras/STL/gripper_camera_mounts/CameraMount_square_27mm.stl). |
| A joint does not move later (when AutoFAB asks you to power 12 V) | Check [arm IDs](reference/arm/ids.md) and [rail IDs](reference/rail/ids.md), reseat the bus cable, confirm 12 V is on. |

Don't put passwords, claim codes, or tokens in photos or issues.
