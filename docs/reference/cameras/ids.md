# Cameras — IDs

Credit: ElRobot names a wrist / arm camera and a table camera; the cell path names the second view **scene**. Cameras are USB UVC devices. They do **not** have Feetech servo IDs.

| View | What it looks at | Source |
|---|---|---|
| Wrist | Gripper / both jaws | ElRobot arm camera + mount S; customer ready check |
| Scene | Whole print bed and the space the arm will work in | ElRobot “Table Camera”; cell parts list “scene camera” |

USB device paths, `/dev/video*` numbers, and OpenCV indices are **TODO**. Do not invent them. AutoFAB software is closed; this page is the two hardware views only.

The hub is shared by both cameras. Which hub port is wrist vs scene is **TODO**.

Servo IDs 1–8 and 9 live on the [arm](../arm/ids.md) and [rail](../rail/ids.md), not here.
