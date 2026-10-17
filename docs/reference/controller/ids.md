# Controller — IDs

Credit: ElRobot follower manual steps 3–4 (IDs are set **through** the driver, one servo at a time). The driver and the Pi do not themselves have Feetech IDs.

| What | ID or role | Source |
|---|---|---|
| Servo bus adapter | Bus host. No servo ID | ElRobot README: USB is **data only**; motors take 12 V from the barrel |
| Raspberry Pi | Host for the closed AutoFAB image. No servo ID | Cell parts list |
| Physical stop | Cuts the 12 V lead. No bus ID | Cell parts list |
| Arm servos 1–8 | Set on this driver | [arm IDs](../arm/ids.md) |
| Rail servo 9 | Set on this driver | [rail IDs](../rail/ids.md) |

USB device paths, serial-port names, and GPIO pin numbers are **TODO**. Do not invent them. AutoFAB software is closed; this page is hardware roles only.

When setting IDs: connect **one** servo at a time. Label it before you install it. **TODO:** ElRobot says “Set Servo ids using app” and does not name the app.
