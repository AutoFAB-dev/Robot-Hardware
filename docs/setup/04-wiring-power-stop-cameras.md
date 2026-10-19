# 4. Wiring, power, stop and cameras

Connect power, the stop, and the cameras. Do not switch the arm's 12 V on yet.

**Safety:** The stop must be within reach before any later motion. Servos take power only from the 12 V supply. The small computer has its own USB-C supply. Mix those up and you can brown out or overheat parts.

**TODO image:** wiring overview — stop, two power supplies, computer, hub, two cameras

## Power and stop
1. Plug the 12 V supply into the servo driver (barrel size 5.5×2.1 mm). Check the stripe on the plug matches the socket.
2. Put the red stop button **in the 12 V lead**, or plug that supply into a switched strip you can reach.
3. Leave the 12 V supply **off / unplugged** for now.
4. Plug the 27 W USB-C supply into the Raspberry Pi. Don't turn it on yet.

The rail servo sits on the same cable chain as the arm, after the gripper. You should not need to re-wire that if the cell arrived built. Hardware notes (same depth for each component): [controller wiring](../reference/controller/wiring.md) · [rail wiring](../reference/rail/wiring.md) · [arm wiring](../reference/arm/wiring.md) · [cameras wiring](../reference/cameras/wiring.md).

## Cameras
1. Plug the powered USB hub into the Pi.
2. Plug the wrist camera and the scene camera into the **hub**, not into the Pi alone (two cameras can starve the Pi of power).
3. Fit the wrist camera on the gripper if it is still packed separately ([packing a built cell](../reference/cameras/assembly.md#packing-a-built-cell)). If the camera is already on the mount, use the **2× M3×8** into the gripper. If it is not, use **4× M2×6** into the mount and then those two gripper screws. Zip-tie the cable to the mount so a pull cannot land on the connector or the lens. Full steps: [cameras assembly](../reference/cameras/assembly.md).
4. Fix the scene camera so it sees the whole bed. Don't move it after you finish setup.

## Network cable
If you have Ethernet, plug the Pi into the **same network as your printers**. Guest or isolated Wi-Fi often blocks the cell.

Route cables so the arm and carriage can move their full range. Leave a loop along the rail. **TODO:** recommended cable clips.

**Back:** [3. Mount the arm and rail](03-mounting-arm-and-rail.md)
**Next:** [5. Flash, install, remote access](05-flash-install-remote-access.md)
