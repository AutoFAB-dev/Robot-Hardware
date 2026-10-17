# Controller — wiring

Credit: ElRobot README (“Hardware & Design Notes”: driver USB is data only; motors from the external DC supply; 5.5×2.1 mm jack; 12 V / 4 A follower) and the customer wiring step.

**TODO image:** stop in the 12 V lead, barrel in the driver, USB data to the Pi, 27 W USB-C in the Pi, 12 V still off

## 12 V (arm and rail)
1. Plug the 12 V supply into the servo driver barrel (5.5×2.1 mm). The stripe on the plug must match the socket.
2. Put the physical stop **in the 12 V lead**, or plug that supply into a switched strip you can reach.
3. Leave 12 V **off / unplugged** until AutoFAB asks you to switch it on.

ElRobot specifies **12 V / 4 A** for the follower **alone**. The cell parts list recommends **12 V 10 A** for arm + rail headroom. Fuse or polarity-protection parts beyond the barrel stripe: **TODO**.

The rail servo shares this 12 V bus: [rail wiring](../rail/wiring.md). Arm daisy-chain: [arm wiring](../arm/wiring.md).

## USB data (driver)
The Serial Bus Servo Driver **does not consume USB power for the motors**. USB is data signals only (ElRobot). Use a **data** cable, not a charge-only cable.

Plug the driver into the Raspberry Pi. Whether that is a Pi USB-A port or USB-C, and whether a hub is allowed on this link, is **TODO**. Do not put the driver and both cameras on unpowered Pi ports together — cameras go on the [powered hub](../cameras/wiring.md).

## Raspberry Pi power
The Pi has its **own 27 W USB-C** supply. Do not power the Pi from the 12 V driver, and do not power the servos from the Pi.

## Network
If you have Ethernet, plug the Pi into the **same network as your printers**. Guest or isolated Wi-Fi often blocks the cell. Wi-Fi setup is the customer path ([step 5](../../setup/05-power-on-and-wifi.md)), not a hardware ID.

## What this page does not cover
Camera USB: [cameras wiring](../cameras/wiring.md). GPIO, CSI camera connectors, and pin headers: **TODO** (this cell uses USB UVC cameras; no CSI pinout is stated in ElRobot or the cell parts list).
