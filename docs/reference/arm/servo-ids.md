# Servo IDs

Credit: IDs **1–8** and the “label each servo 1 to 8” step are from the ElRobot [follower assembly manual](https://github.com/norma-core/norma-core/blob/main/hardware/elrobot/manual-follower.pdf) (steps 3–4 and each joint). The **rail on ID 9** is the AutoFAB cell map (ElRobot already uses 1–8). leslider's SO-101 recipe uses slider ID **7** because that arm only has IDs 1–6 — do not use 7 on an ElRobot cell.

Set IDs **one servo at a time** on the bus. Label each servo before you install it. **TODO:** ElRobot says “Set Servo ids using app” and does not name the app.

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
| 9 | Rail / slider drive (AutoFAB cell; leslider hardware, not ElRobot) |

Repeat the ID step eight times for the arm, then once for the rail servo.
