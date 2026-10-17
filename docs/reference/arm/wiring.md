# Arm — wiring

Credit: ElRobot README (“Hardware & Design Notes”) and the follower manual (wire routing at each joint).

**TODO image:** daisy-chain of servos 1–8, sockets on one side, wiring bracket on the gripper

## Bus
Daisy-chain the eight ST3215s with the servo wires (manual V4). The manual shows the sockets on one side and routes each new wire before the next joint. Use the printed **wiring bracket** (R) on the gripper (manual steps 58–59).

IDs: [ids.md](ids.md).

## Power
Motors take **12 V** from the [controller](../controller/wiring.md) servo driver. The driver's USB link is **data only**. ElRobot specifies **12 V / 4 A** for the follower **alone**.

## Next on the bus
The rail servo joins after the gripper: [rail wiring](../rail/wiring.md).
