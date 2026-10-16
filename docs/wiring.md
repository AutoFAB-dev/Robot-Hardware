# Wiring and power
```
mains ─ switched strip / e-stop ─┬─ 12 V PSU ─ servo driver ─ servo bus: IDs 1–7 arm, 8 gripper, 9 rail (daisy-chained)
                                 └─ Pi 27 W USB-C PSU ─ Raspberry Pi
Pi USB ── servo driver (data only)
Pi USB ── powered USB hub ── wrist camera, scene camera
Pi Ethernet (recommended) or Wi-Fi ── same network as your printers
```
- Servos are powered **only** from the 12 V supply. The driver's USB link carries data, not power.
- Keep the Pi and servo supplies separate. A Pi 5 needs the 27 W (5.1 V / 5 A) USB-C supply.
- Daisy-chain the rail servo (ID 9) after the gripper.
- Check barrel plug size (5.5×2.1 mm) and polarity before connecting.
- Put the e-stop inline on the 12 V lead, or plug the 12 V supply into a switched strip you can reach.
- Route cables with slack through each joint's full range, and along the rail with a drag chain or service loop. TODO: recommended cable management.
- Cameras go through the powered hub. Pi ports alone can brown out with two cameras.
