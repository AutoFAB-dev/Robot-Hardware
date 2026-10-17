# Rail — wiring

Credit: leslider [assembly step 8](https://github.com/pham-tuan-binh/leslider#3-assembly) (daisy-chain onto the servo bus) and ElRobot README (“Hardware & Design Notes”) for 12 V on the driver.

**TODO image:** rail servo on the bus after the gripper, slack loop along the extrusion

## Bus
The rail ST3215 shares the arm’s serial bus. On this cell, join it **after the gripper** (after arm IDs 1–8). IDs: [ids.md](ids.md).

leslider’s SO-101 recipe is different: unplug the cable from the base yaw to the USB-TTL adapter, plug that cable into the slider, then run a new cable from the slider to the controller (order: base yaw → slider → controller). That order is for an SO-101, not this ElRobot cell. Do not follow it here.

The bus cable for the slider ships with the servo (leslider BOM). Extra servo-wire length beyond that is **TODO**.

## Power
The rail motor takes **12 V** from the same [controller](../controller/wiring.md) servo driver as the arm. The driver’s USB link is **data only**.

ElRobot specifies **12 V / 4 A** for the follower **alone**. The cell parts list recommends a **12 V 10 A** supply for arm + rail headroom ([BOM](../../../bom/BOM.md)). Which rating you must use is **TODO** beyond those two statements.

## Cable along the rail
Leave a loop so the carriage can travel the full extrusion. Cable clips: **TODO**.
