# Arm — IDs

Credit: IDs **1–8** and “label each servo 1 to 8” from the ElRobot [follower assembly manual](https://github.com/norma-core/norma-core/blob/main/hardware/elrobot/manual-follower.pdf) (steps 3–4 and each joint). ElRobot step 4 says “Set Servo ids using app”, shows a **PC/Laptop (USB)** plus the power supply on one ST3215, and says “Repeat 8 times.” The manual does not name the app.

This cell’s driver is the [Waveshare Bus Servo Adapter (A)](https://www.waveshare.com/wiki/Bus_Servo_Adapter_(A)). Waveshare’s wiki is the public procedure for that board: USB Control, jumper **B**, **9–12.6 V** matching the servo, and the **ST serial bus servo control library (Python)** demo (`STServo_Python`). The wiki says that demo supports changing the servo ID.

## How to set an ID

Do this on a bench **before** you install the servo. Connect **one** servo at a time. Apply 12 V only while setting the ID (step 4); unplug it before swapping servos (step 9).

1. Put the adapter jumper on **B** (Waveshare [USB Control](https://www.waveshare.com/wiki/Bus_Servo_Adapter_(A))). UART (jumper **A**) is a different wiring and is not what ElRobot’s USB diagram shows.
2. Plug **one** ST3215 into a servo socket on the adapter. Waveshare: IDs on one board must not conflict; change one servo at a time.
3. Connect a **data** USB cable from the adapter to a **PC or laptop** (ElRobot step 4: “PC/Laptop (USB)”). Waveshare USB Control also lists Raspberry Pi 4B, Jetson Orin Nano, and RDK X3. USB is data only (ElRobot and Waveshare); it does not power the motor.
4. Connect 12 V to the adapter’s 5.5×2.1 mm DC jack. Waveshare input range is **9–12.6 V** and must match the servo. This cell’s follower servos are **12 V**.
5. On the host, download the **ST serial bus servo control library (Python)** demo from the [adapter wiki](https://www.waveshare.com/wiki/Bus_Servo_Adapter_(A)) Demo section (folder name `STServo_Python`). Unzip it. The bundled `stservo-env` only works on Windows: activate it and install `requirements.txt` (`pyserial`). Waveshare’s walkthrough is for Windows. On Linux/macOS: `python3 -m venv venv && . venv/bin/activate && pip install pyserial`, then run the scripts in `stservo-env/sms_sts/`.
6. Set the demo’s `DEVICENAME` to the serial port the host assigned. Waveshare’s Windows example uses Device Manager (their example port is `COM41`). The demo comments also show Linux `/dev/ttyUSB0` and macOS `/dev/tty.usbserial-*`.
7. Baud rate must match the servo. Waveshare’s default for ST/SC series servos is **1,000,000**.
8. Factory default ID is **1**. For ST-series servos (this cell’s STS3215 / ST3215), Waveshare puts the examples in `stservo-env/sms_sts/`. Edit `change_id.py` in that folder: `SCS_ID` is the current ID (1 on a new servo), `NEW_ID` is the number from the table below, `BAUDRATE` is `1000000`. Set `DEVICENAME` in both `change_id.py` and `ping.py` (the demo’s default port is `COM53`). Run `python change_id.py`. Confirm with `python ping.py` after setting `SCS_ID` to the new ID (Waveshare’s named walkthrough).
9. Unplug 12 V. Unplug the servo. Label it with a marker (ElRobot: “label each Servo 1 to 8”). Repeat until 1–8 are done.

The adapter wiki’s published walkthrough is `ping.py`. `change_id.py` is the ID-write example in the same `STServo_Python` zip that wiki tells you to download; `sms_sts` is the ST-series folder Waveshare names on the [Python example page](https://docs.waveshare.com/Bus_Servo_Adapter_A/Python_Execution_Example). Waveshare also documents a [serial debugging assistant](https://docs.waveshare.com/ST3215_Servo/Serial-Debugging-Tool-Use) on this adapter at baud **1000000** (HEX) if you prefer that tool.

**TODO:** the Seeed XIAO driver listed as an ElRobot alternate is not covered by the Adapter (A) wiki. Use the Waveshare board for this procedure.

| ID | Where it goes (ElRobot manual) |
|---|---|
| 1 | Base |
| 2 | Joint 1 |
| 3 | Joint 2 |
| 4 | Joint 3 |
| 5 | Joint 4 |
| 6 | Joint 5 |
| 7 | Joint 6 |
| 8 | Gripper |

Rail drive is **ID 9**: [rail IDs](../rail/ids.md). Do not use leslider's SO-101 slider ID 7 on this arm.
