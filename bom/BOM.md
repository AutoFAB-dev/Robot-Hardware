# Hardware configuration: one cell (1 arm + rail)

Everything one AutoFAB cell needs, with a place to buy each part. Links go to
the maker or a known reseller. Any equivalent part works unless the row says
otherwise. Prices are not listed.

Some rows are **not yet released**: there is no file or confirmed listing yet.

## Controller

| Qty | Part | Must be | Buy |
|---|---|---|---|
| 1 | Raspberry Pi 5, 8 GB (4 GB works; Pi 4 with 4 GB+ also works) | 64-bit Raspberry Pi | [Raspberry Pi (resellers)](https://www.raspberrypi.com/products/raspberry-pi-5/) · [CanaKit](https://www.canakit.com/raspberry-pi-5-8gb.html) |
| 1 | Official Raspberry Pi power supply | Pi 5: **27 W USB-C** (5.1 V 5 A). Pi 4: **15 W USB-C** (5.1 V 3 A). Never power the Pi from the 12 V arm supply | Pi 5: [Raspberry Pi 27 W](https://www.raspberrypi.com/products/27w-power-supply/) · [Adafruit 5814](https://www.adafruit.com/product/5814). Pi 4: [Raspberry Pi 15 W](https://www.raspberrypi.com/products/type-c-power-supply/) |
| 1 | microSD card | 32 GB or larger, **A2** rated; 64 GB recommended. Cheap slow cards make the arm stutter | [Raspberry Pi SD cards](https://www.raspberrypi.com/products/sd-cards/) · [PiShop 64 GB](https://www.pishop.us/product/raspberry-pi-sd-card-64gb/) |
| 1 | Cooling | Pi 5: official **Active Cooler**, or the official case with fan. Pi 4: a case with a fan | [Active Cooler](https://www.raspberrypi.com/products/active-cooler/) · [Pi 5 case](https://www.raspberrypi.com/products/raspberry-pi-5-case/) |
| 1 | Ethernet cable (recommended) | Cat6, to the printers' network | any |
| 1 | Micro-HDMI cable + monitor + USB keyboard (optional) | only if you can't SSH from a computer | any |
| 1 | Optional driver enclosure | printed Waveshare **or** Seeed pair (ElRobot); skip if unused. Manual step 2: 5× M2×6 | [hardware/controller/](../hardware/controller/) · [controller parts](../docs/reference/controller/parts.md) |

The servo driver, 12 V supply, and USB data cable are listed under Arm.

## Arm (ElRobot follower)

| Qty | Part | Must be | Buy |
|---|---|---|---|
| 8 | Feetech STS3215 servo | **12 V**, 30 kg·cm | [WowRobo](https://shop.wowrobo.com/products/feetech-sts3215-servo-12v-30kg-high-torque-servo-for-so-arm100) · [Seeed](https://www.seeedstudio.com/STS3215-30KG-Serial-Servo-p-6340.html) |
| 1 | Serial bus servo driver | Waveshare Bus Servo Adapter (A) | [Waveshare](https://www.waveshare.com/bus-servo-adapter-a.htm) |
| 1 | 12 V DC power supply | 5.5×2.1 mm barrel; **10 A** recommended for arm + rail (ElRobot alone: 4 A) | 10 A: [Amazon B087LY94T6](https://www.amazon.com/dp/B087LY94T6) · 4 A: [Waveshare](https://www.waveshare.com/psu-12v4a-5.5-2.1.htm) |
| 1 | USB **data** cable, driver to Pi | data-rated (charge-only cables don't work) | any |
| 1 set | Printed ElRobot parts + fasteners | PLA parts and counted hardware from the ElRobot follower manual | [hardware/arm/follower/](../hardware/arm/follower/) · [arm parts](../docs/reference/arm/parts.md) |
| 2 | Bench clamps | | any |

## Rail (leslider design)

| Qty | Part | Must be | Buy |
|---|---|---|---|
| 1 | Feetech STS3215 servo (rail drive, ID 9) | **12 V**, 30 kg·cm, same model as the arm motors (leslider) | [WowRobo](https://shop.wowrobo.com/products/feetech-sts3215-servo-12v-30kg-high-torque-servo-for-so-arm100) · [Seeed](https://www.seeedstudio.com/STS3215-30KG-Serial-Servo-p-6340.html) |
| 1 | 2020 V-slot extrusion | length to suit your printers. leslider: 300 to 500 mm is typical | [leslider BOM](https://github.com/pham-tuan-binh/leslider#1-bill-of-materials) |
| 1 | Gantry plate with V-wheels | rides the 2020 as the carriage (leslider BOM) | [leslider BOM](https://github.com/pham-tuan-binh/leslider#1-bill-of-materials) |
| 4 | M3 bolts | ≥20 mm (leslider: SO-101 base to base mount; adapter use on this cell is **not yet released**) | any |
| 2 sets | M5 bolts + M5 nuts | bolts ≥10 mm (leslider: base mount to gantry) | any |
| 2 sets | M5 bolts + M5 drop-in T-nuts for 2020 | bolts 12–16 mm (leslider: legs to extrusion) | any |
| — | Servo package screws | leslider: secure the servo with the screws that ship in its package. Count **TODO** | included with the servo |
| 2 | Legs (printed) | one at each end of the 2020 | [hardware/rail/](../hardware/rail/) · [rail parts](../docs/reference/rail/parts.md) |
| 1 | Base mount (printed) | designed for the SO-101 base, not ElRobot (leslider) | [hardware/rail/](../hardware/rail/) · [rail parts](../docs/reference/rail/parts.md) |
| 1 | Pinion (printed) | press-fits on the rail servo output gear | [hardware/rail/](../hardware/rail/) · [rail parts](../docs/reference/rail/parts.md) |
| as needed | Rack track segments, 20 mm each (printed) | enough to span the extrusion; trim the last if it overruns (leslider) | [hardware/rail/](../hardware/rail/) · [rail parts](../docs/reference/rail/parts.md) |
| 1 | ElRobot-to-carriage adapter | **not yet released** | — |

## Cameras

| Qty | Part | Must be | Buy |
|---|---|---|---|
| 1 | Wrist camera | USB UVC. Default: **Innomaker U20CAM-1080P** (the printed mount fits it). The **Arducam OV9782** is a supported alternative | Innomaker U20CAM-1080P: [Amazon B0CNCSFQC1](https://www.amazon.com/dp/B0CNCSFQC1) |
| 1 | Wrist-camera mount | printed; 4× M2×6 self-tapping + 2× M3×8 | Default (U20CAM): [`CameraMount_square_27mm.stl`](../hardware/cameras/STL/gripper_camera_mounts/CameraMount_square_27mm.stl) · Arducam OV9782 mount: **not yet released** · [camera parts](../docs/reference/cameras/parts.md) |
| 1 | Scene camera (optional for first setup) | 1080p USB UVC webcam. Our software looks for a **Logitech MX Brio** by default; another webcam works with a setting change | Logitech MX Brio: [Logitech](https://www.logitech.com/en-us/shop/p/mx-brio-4k-webcam) · alternative: [Arducam 1080p, Amazon B0CZL1X463](https://www.amazon.com/dp/B0CZL1X463) |
| 1 | Powered USB hub | **externally powered** (cameras need it), USB 3 | any |
| 2+ | USB data cables | camera ↔ hub ↔ Pi | any |

## Safety

| Qty | Part | Must be | Buy |
|---|---|---|---|
| 1 | Physical stop | inline 22 mm mushroom e-stop (≥10 A) on the 12 V lead, **or** a switched power strip within reach | e-stop: [Amazon B0FJQYHM3B](https://www.amazon.com/dp/B0FJQYHM3B) · or any switched strip |

## Your network and printer

- The Pi and the printers on the **same network** (no guest network, no client isolation).
- Outbound internet (HTTPS) from that network.
- A supported printer on the LAN with **LAN mode** available.
