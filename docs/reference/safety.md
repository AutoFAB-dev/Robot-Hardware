# Safety

Read this before you power the arm. Each setup step also has a short safety note.

- Someone must be present and able to hit the physical stop whenever the arm has power.
- A **physical stop** (inline stop button or switched strip) within reach is required before any motion. Test it before first motion.
- No arm power until setup is done and AutoFAB has asked you to switch 12 V on. Support the arm whenever it is unpowered.
- Keep hands out of the arm's reach (**430 mm** from the base, ElRobot spec, plus rail travel) while it moves. Watch for pinch points at the gripper and the rail rack.
- First motions: small, single-joint moves, with your hand on the stop.
- Enclosed printers: doors are opened by hand. Arm door opening isn't supported.
- Don't leave the cell running unattended. AutoFAB is a managed service (AI agents plus a human supervision service) and this hardware is not for unattended use.

## Disclaimer
DIY at your own risk. The licences in this repository give no warranty beyond what they themselves state (see [LICENSE](../../LICENSE)). AutoFAB is a managed service: our systems manage production on your machines, including AutoFAB's AI agents plus a human supervision service.
