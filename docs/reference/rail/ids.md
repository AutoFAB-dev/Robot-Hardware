# Rail — IDs

Credit: leslider sets the slider motor to a Feetech ID **outside 1–6** and defaults that to **7**, because a stock SO-101 uses IDs 1–6 ([leslider README](https://github.com/pham-tuan-binh/leslider#5-set-the-slider-motor-id), section 5). This cell’s arm is ElRobot and already uses **1–8** ([arm IDs](../arm/ids.md)). The AutoFAB cell map therefore puts the rail on **ID 9**.

Set the ID **one servo at a time**, with only the rail servo on the driver. Label it **9** before you install it. **TODO:** ElRobot says “Set Servo ids using app” and does not name the app. Use the same method as the arm, on the [controller](../controller/assembly.md) driver.

| ID | Where it goes | Source |
|---|---|---|
| 9 | Rail / slider drive | AutoFAB cell map |

Do **not** use leslider’s SO-101 slider ID **7** on this cell: ElRobot joint 6 is already ID 7.

leslider software defaults (`slider_id = 7`, velocity vs position mode) are not used here. AutoFAB software is closed; IDs on this page are the hardware labels only.
