# Troubleshooting
| Symptom | Likely cause | Fix |
|---|---|---|
| No `AutoFAB-XXXX` Wi-Fi after 3 minutes | card not flashed correctly; Pi underpowered | Re-flash with Raspberry Pi Imager; use the 27 W supply |
| Wrong setup Wi-Fi password chosen | typo | Rejoin the setup network and retry. Don't re-flash |
| Claim code expired | normal | Wait: a new code appears by itself |
| Claim lands on an existing cell / "already claimed" | card cloned from another cell | Stop, re-flash from the image (don't clone), and contact us |
| Cell offline in the app | power, Wi-Fi, or guest/isolated network | Check power and network; use Ethernet on the printers' network |
| A servo doesn't respond | wrong ID, duplicate ID, loose bus cable, 12 V off | Check IDs one at a time; reseat cables; check the supply |
| A servo is "limp" and ignores goals | goals sent before torque was enabled | Use the app's arm/disarm controls; don't drive servos with other tools while the cell is running |
| Rail position wrong after a power cut | the rail servo lost its turn count | Power-cycle with the carriage at the low end, then re-home the rail |
| Carriage clicks or jumps | pinion skipping rack teeth | Tighten the mesh; check the rack segments are seated and continuous; lower speed |
| Cell resets when the rail or arm moves | supply too small or brownout | Use a 12 V supply with headroom (we recommend 10 A); check wiring |
| Camera shows no picture | USB power | Use the powered hub; check it's a UVC camera |
| Wrist-camera mount broken | transit or a crash | Reprint `CameraMount_square_27mm.stl` (4 walls / PETG) |
| Printer shows unreachable | different network | Put printer and cell on the same network |

Still stuck? Open a GitHub issue (no passwords, codes or tokens in logs or photos), or for the done-for-you setup, see [autofab.net](https://autofab.net).
