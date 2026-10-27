# Images

## Photos coming

Setup photos and diagrams are not in the repo yet. Every `TODO image` placeholder is listed below by doc file and step.

Licence: CC-BY-4.0 unless noted. Remove faces, serial numbers, network names and claim codes before committing.

### docs/setup/

| File | Step | Placeholder |
|---|---|---|
| [01-whats-in-the-box.md](../docs/setup/01-whats-in-the-box.md) | 1 | all parts laid out on a table, labelled |
| [02-unboxing-and-damage-checks.md](../docs/setup/02-unboxing-and-damage-checks.md) | 2 | open box with the arm supported and every part visible |
| [03-mounting-arm-and-rail.md](../docs/setup/03-mounting-arm-and-rail.md) | 3 | rail clamped to a bench in front of a printer, arm supported, reach space marked |
| [04-wiring-power-stop-cameras.md](../docs/setup/04-wiring-power-stop-cameras.md) | 4 | wiring overview — stop, two power supplies, computer, hub, two cameras |
| [06-link-your-printer.md](../docs/setup/06-link-your-printer.md) | 6 | app screen after a printer has been added, with the cell Online |
| [07-ready-check-and-handover.md](../docs/setup/07-ready-check-and-handover.md) | 7 | checklist ticked, cell Online, wrist camera showing both gripper jaws, scene camera showing the bed |
| [later-with-autofab-power-on-and-wifi.md](../docs/setup/later-with-autofab-power-on-and-wifi.md) | later with AutoFAB | phone joined to the AutoFAB-XXXX setup network, then the claim screen at app.autofab.net |

`docs/setup/05-flash-install-remote-access.md` has no `TODO image` placeholder.

### docs/troubleshooting.md

| File | Step | Placeholder |
|---|---|---|
| [troubleshooting.md](../docs/troubleshooting.md) | page | common layout — Pi lights on, AutoFAB-XXXX in the phone Wi-Fi list |

### docs/reference/arm/

| File | Step | Placeholder |
|---|---|---|
| [assembly.md](../docs/reference/arm/assembly.md) | Prepare (1) | printed parts cleaned, supports removed |
| [assembly.md](../docs/reference/arm/assembly.md) | Set IDs 1–8 (2) | one servo on the driver, labelled 1 |
| [assembly.md](../docs/reference/arm/assembly.md) | Base (3–5) | servo 1 seated in the base |
| [assembly.md](../docs/reference/arm/assembly.md) | Joint 1 (6–7) | servo 2 on Joint 1 |
| [assembly.md](../docs/reference/arm/assembly.md) | Joint 2 (8–12) | Joint 2 on servo 2 |
| [assembly.md](../docs/reference/arm/assembly.md) | Joint 3 (13–15) | servo 4 in Joint 3 |
| [assembly.md](../docs/reference/arm/assembly.md) | Joint 4 (16–19) | servo 5 in Joint 4 |
| [assembly.md](../docs/reference/arm/assembly.md) | Joint 5 (20–21) | servo 6 in Joint 5 |
| [assembly.md](../docs/reference/arm/assembly.md) | Joint 6 (22–24) | servo 7 in Joint 6 |
| [assembly.md](../docs/reference/arm/assembly.md) | Gripper (25–32) | servo 8 in the gripper base, jaws even |
| [wiring.md](../docs/reference/arm/wiring.md) | Bus | daisy-chain of servos 1–8, sockets on one side, wiring bracket on the gripper |
| [checks.md](../docs/reference/arm/checks.md) | page | arm supported, every joint moved by hand, gripper jaws even |

### docs/reference/rail/

| File | Step | Placeholder |
|---|---|---|
| [assembly.md](../docs/reference/rail/assembly.md) | Prepare (1–2) | printed legs, pinion, track segments, and adapter cleaned |
| [assembly.md](../docs/reference/rail/assembly.md) | Set ID 9 (3) | one rail servo on the driver, labelled 9 |
| [assembly.md](../docs/reference/rail/assembly.md) | Rack track (4–5) | 20 mm track segments in the top channel of the 2020 |
| [assembly.md](../docs/reference/rail/assembly.md) | Carriage (6) | gantry plate V-wheels in the side channels |
| [assembly.md](../docs/reference/rail/assembly.md) | Legs (7–8) | a leg bolted to one end with an M5 T-nut |
| [assembly.md](../docs/reference/rail/assembly.md) | Base mount on the gantry (9–10) | base mount on the gantry, two M5 holes 20 mm apart |
| [assembly.md](../docs/reference/rail/assembly.md) | ElRobot adapter (11–12) | adapter between the leslider carriage and the ElRobot base |
| [assembly.md](../docs/reference/rail/assembly.md) | Rail drive (13–15) | servo 9 in the base-mount cutout, pinion on the rack |
| [assembly.md](../docs/reference/rail/assembly.md) | Bus (16) | rail servo daisy-chained after the gripper, slack along the rail |
| [wiring.md](../docs/reference/rail/wiring.md) | page | rail servo on the bus after the gripper, slack loop along the extrusion |
| [checks.md](../docs/reference/rail/checks.md) | page | rail clamped, carriage rolled by hand the full length, pinion on the rack |

### docs/reference/controller/

| File | Step | Placeholder |
|---|---|---|
| [assembly.md](../docs/reference/controller/assembly.md) | Optional driver enclosure (1–2) | enclosure around the Waveshare or Seeed board, 5× M2×6 |
| [assembly.md](../docs/reference/controller/assembly.md) | Driver and 12 V (3–6) | 5.5×2.1 mm barrel in the driver, stripe matching the socket, stop in the lead |
| [assembly.md](../docs/reference/controller/assembly.md) | USB data to the Pi (7) | data-rated USB from driver to Pi, not a charge-only cable |
| [assembly.md](../docs/reference/controller/assembly.md) | Raspberry Pi (8–10) | microSD seated, 27 W USB-C ready, Ethernet if you have it |
| [assembly.md](../docs/reference/controller/assembly.md) | Use the driver to set IDs (11–13) | one servo on the driver, labelled, 12 V on only for that step |
| [wiring.md](../docs/reference/controller/wiring.md) | page | stop in the 12 V lead, barrel in the driver, USB data to the Pi, 27 W USB-C in the Pi, 12 V still off |
| [checks.md](../docs/reference/controller/checks.md) | page | two supplies distinct, stop in the 12 V lead, driver USB seated, 12 V off |

### docs/reference/cameras/

| File | Step | Placeholder |
|---|---|---|
| [assembly.md](../docs/reference/cameras/assembly.md) | Wrist camera on the mount (1–2) | UVC camera on mount S, 4× M2×6 |
| [assembly.md](../docs/reference/cameras/assembly.md) | Mount on the gripper (3–4) | mount on the gripper base, 2× M3×8 |
| [assembly.md](../docs/reference/cameras/assembly.md) | Route the wrist cable and remaining shields (5–12) | camera cable along the arm, shields on, full rotation at each joint |
| [assembly.md](../docs/reference/cameras/assembly.md) | Hub (13–14) | powered hub in the Pi, both camera cables in the hub |
| [assembly.md](../docs/reference/cameras/assembly.md) | Scene camera (15–17) | scene camera fixed with a clear view of the whole bed, outside the arm’s reach |
| [wiring.md](../docs/reference/cameras/wiring.md) | page | both cameras in the powered hub, hub in the Pi, wrist cable routed along the arm |
| [checks.md](../docs/reference/cameras/checks.md) | page | wrist view showing both jaws the right way up; scene view showing the bed; both cables in the powered hub |
