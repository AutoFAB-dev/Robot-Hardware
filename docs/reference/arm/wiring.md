# Wiring

Credit: arm bus and power from ElRobot README (“Hardware & Design Notes”) and the follower manual (wire routing at each joint). Rail daisy-chain from the [leslider assembly](https://github.com/pham-tuan-binh/leslider#3-assembly).

**TODO image:** driver, 12 V barrel, USB data-only, servo chain 1→8, rail on the end

## Power
- Follower motors take **12 V** from the servo driver board's DC jack (5.5×2.1 mm). ElRobot specifies a **12 V / 4 A** supply for the follower alone.
- The driver's USB link is **data only**. It does not power the motors.
- Keep the Raspberry Pi on its own USB-C supply. Cameras need a **powered USB hub**.

## Arm bus (ElRobot)
Daisy-chain the eight ST3215s with the servo wires in the manual (V4). The manual shows the sockets on one side and routes each new wire before the next joint. Use the printed **wiring bracket** (R) on the gripper (manual steps 58–59).

## Rail (leslider)
leslider (written for SO-101) daisy-chains the slider onto that arm's bus: unplug the cable from the base yaw to the controller, plug it into the slider servo, then run a new cable from the slider to the controller.

On the AutoFAB cell the arm already uses IDs 1–8, so the rail servo is **ID 9** and sits on the same bus **after the gripper**. **TODO:** confirm the exact cable order on a built AutoFAB cell (leslider's “base yaw → slider → controller” order is for SO-101).

## Cameras
Wrist camera on the gripper mount; scene camera fixed with a view of the bed. Both through the powered hub. ElRobot: any UVC USB camera.

## Stop
**TODO:** not in ElRobot or leslider. AutoFAB cells put a physical stop on the 12 V lead or a switched strip within reach. See [safety](../safety.md).
