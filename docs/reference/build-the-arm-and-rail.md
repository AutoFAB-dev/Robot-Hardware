# Build the arm and rail

For people printing and assembling from parts. If your cell arrived built, skip to [What's in the box](../setup/01-whats-in-the-box.md).

**Safety:** Keep the 12 V supply **unplugged** for the whole build. Support the arm so it cannot fall.

**TODO image:** arm on the rail carriage, wrist-camera mount fitted

## 1. Set servo IDs (before you install them)
Connect **one servo at a time** to the driver board and give it its ID. How: [servos](servos.md). Label each servo.

| ID | Joint |
|---|---|
| 1–7 | arm joints, base to wrist |
| 8 | gripper |
| 9 | rail drive |

## 2. Build the arm
Follow the upstream ElRobot follower manual step by step. For the wrist-camera mount (manual steps 65–68): fix the camera to the mount with 4× M2×6 self-tapping screws, then the mount to the gripper base with 2× M3×8.

## 3. Build the rail
Follow leslider's assembly steps:
1. Slide the printed rack track segments into the top-facing channel of the 2020 extrusion.
2. Slide the gantry plate onto the extrusion so its V-wheels engage.
3. Bolt a printed leg to each end (M5 bolt + T-nut).
4. Mount the rail servo so the printed pinion meshes firmly with the rack. A loose mesh skips teeth.

Then mount the arm on the carriage. **TODO:** ElRobot adapter part and steps.

## 4. Check by hand
With power off, move every joint and the carriage through its full range. Check for cable snags; leave slack at every joint.

## Shipping a built cell
Remove the wrist camera and its mount, or foam-block them, before packing.

Then go to the customer path: [1. What's in the box](../setup/01-whats-in-the-box.md).
