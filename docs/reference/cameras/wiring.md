# Cameras — wiring

Credit: ElRobot README (“USB Hub & Power Distribution”, “USB Cables”, “Camera Compatibility”) and follower manual steps 68, 70, 73, 75 (route the camera wires as shown).

**TODO image:** both cameras in the powered hub, hub in the Pi, wrist cable routed along the arm

## Hub
Plug the **powered** USB hub into the Raspberry Pi. Plug the wrist camera and the scene camera into the **hub**, not into the Pi alone. ElRobot: high-frame-rate video can overwhelm a PC or SBC (including a Raspberry Pi) onboard port. Two cameras on the Pi alone can starve it of power (customer step 4).

The hub needs its own external power. Wattage: **TODO**.

## Wrist cable
Route the wrist-camera cable as the ElRobot manual shows at steps 68, 70, 73, and 75 (along the arm, then through the base). Leave slack at every joint. The printed **wiring bracket** (R) on the gripper is an arm part ([arm assembly](../arm/assembly.md) steps 58–59); the camera cable uses the same path.

Cable clips along the arm: **TODO**.

## Scene cable
Fix the scene camera so it sees the whole bed, then do not move it after setup (customer step 4). Cable length and clips: **TODO**.

## USB cables
Use **data** cables, not charge-only cables (ElRobot). Camera connectors (USB-A vs USB-C) depend on the camera you bought; the listed Innomaker / Logitech examples are USB cameras — exact plug type is **TODO** beyond “UVC USB.”

## What this page does not cover
12 V and the driver: [controller wiring](../controller/wiring.md). CSI / ribbon cameras: **TODO** (not used in the cited BOMs).
