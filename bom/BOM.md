# Hardware configuration: one cell (1 arm + rail)

Everything one AutoFAB cell needs, with a place to buy each part. Amazon links are given where we
have a confirmed listing; the other links go to the maker or a known reseller. Any equivalent part
works unless the row says otherwise. Prices are not listed.

Some links are marked **TODO**: we haven't confirmed a listing yet, so we don't link one.

## Controller

| Qty | Part | Must be | Buy |
|---|---|---|---|
| 1 | Raspberry Pi 5, 8 GB (4 GB works; Pi 4 with 4 GB+ also works) | 64-bit Raspberry Pi | [Raspberry Pi (resellers)](https://www.raspberrypi.com/products/raspberry-pi-5/) · [CanaKit](https://www.canakit.com/raspberry-pi-5-8gb.html) · Amazon: TODO |
| 1 | Official Raspberry Pi power supply | Pi 5: **27 W USB-C** (5.1 V 5 A). Pi 4: **15 W USB-C** (5.1 V 3 A). Never power the Pi from the 12 V arm supply | Pi 5: [Raspberry Pi 27 W](https://www.raspberrypi.com/products/27w-power-supply/) · [Adafruit 5814](https://www.adafruit.com/product/5814) · Amazon: TODO. Pi 4: [Raspberry Pi 15 W](https://www.raspberrypi.com/products/type-c-power-supply/) |
| 1 | microSD card | 32 GB or larger, **A2** rated; 64 GB recommended. Cheap slow cards make the arm stutter | [Raspberry Pi SD cards](https://www.raspberrypi.com/products/sd-cards/) · [PiShop 64 GB](https://www.pishop.us/product/raspberry-pi-sd-card-64gb/) · Amazon: TODO |
| 1 | Cooling | Pi 5: official **Active Cooler**, or the official case with fan. Pi 4: a case with a fan | [Active Cooler](https://www.raspberrypi.com/products/active-cooler/) · [Pi 5 case](https://www.raspberrypi.com/products/raspberry-pi-5-case/) · Amazon: TODO |
| 1 | Ethernet cable (recommended) | Cat6, to the printers' network | any |
| 1 | Micro-HDMI cable + monitor + USB keyboard (optional) | only if you can't SSH from a computer | any |

## Arm (ElRobot follower)

| Qty | Part | Must be | Buy |
|---|---|---|---|
| 8 | Feetech STS3215 servo | **12 V**, 30 kg·cm | [WowRobo](https://shop.wowrobo.com/products/feetech-sts3215-servo-12v-30kg-high-torque-servo-for-so-arm100) · [Seeed](https://www.seeedstudio.com/STS3215-30KG-Serial-Servo-p-6340.html) |
| 1 | Serial bus servo driver | Waveshare Bus Servo Adapter (A) | [Waveshare](https://www.waveshare.com/bus-servo-adapter-a.htm) |
| 1 | 12 V DC power supply | 5.5×2.1 mm barrel; **10 A** recommended for arm + rail (ElRobot alone: 4 A) | 10 A: [Amazon B087LY94T6](https://www.amazon.com/dp/B087LY94T6) · 4 A: [Waveshare](https://www.waveshare.com/psu-12v4a-5.5-2.1.htm) |
| 1 | USB **data** cable, driver to Pi | data-rated (charge-only cables don't work) | any |
| 1 set | Printed ElRobot parts + fasteners | | [hardware/arm/follower/](../hardware/arm/follower/) · [arm parts](../docs/reference/arm/parts.md) |
| 2 | Bench clamps | | any |

## Rail (leslider design)

| Qty | Part | Buy |
|---|---|---|
| 1 | Feetech STS3215 servo, 12 V (rail drive, servo ID 9) | as above |
| 1 | 2020 V-slot extrusion, length to suit your printers | see [leslider BOM](https://github.com/pham-tuan-binh/leslider#1-bill-of-materials) |
| 1 | Gantry plate with V-wheels | see leslider BOM |
| — | M3 / M5 bolts, nuts and 2020 T-nuts | see [rail parts](../docs/reference/rail/parts.md) |
| 1 set | Printed legs, base mount, pinion, rack segments | [hardware/rail/](../hardware/rail/) |
| 1 | ElRobot-to-carriage adapter | **TODO** |

## Cameras

| Qty | Part | Must be | Buy |
|---|---|---|---|
| 1 | Wrist camera | USB UVC. Default: **Innomaker U20CAM-1080P** (the printed mount fits it). The **Arducam OV9782** is a supported alternative | Innomaker U20CAM-1080P: [Amazon B0CNCSFQC1](https://www.amazon.com/dp/B0CNCSFQC1) · Arducam OV9782: Amazon TODO |
| 1 | Wrist-camera mount | printed; 4× M2×6 self-tapping + 2× M3×8 | Default (U20CAM): [`CameraMount_square_27mm.stl`](../hardware/cameras/STL/gripper_camera_mounts/CameraMount_square_27mm.stl) · Arducam OV9782 mount: TODO · [camera parts](../docs/reference/cameras/parts.md) |
| 1 | Scene camera (optional for first setup) | 1080p USB UVC webcam. Our software looks for a **Logitech MX Brio** by default; another webcam works with a setting change | Logitech MX Brio: Amazon TODO · alternative: [Arducam 1080p, Amazon B0CZL1X463](https://www.amazon.com/dp/B0CZL1X463) |
| 1 | Powered USB hub | **externally powered** (cameras need it), USB 3 | Amazon: TODO |
| 2+ | USB data cables | camera ↔ hub ↔ Pi | any |

## Safety

| Qty | Part | Must be | Buy |
|---|---|---|---|
| 1 | Physical stop | inline 22 mm mushroom e-stop (≥10 A) on the 12 V lead, **or** a switched power strip within reach | e-stop: [Amazon B0FJQYHM3B](https://www.amazon.com/dp/B0FJQYHM3B) · or any switched strip |

## Your network and printer

- The Pi and the printers on the **same network** (no guest network, no client isolation).
- Outbound internet (HTTPS) from that network.
- A supported printer on the LAN with **LAN mode** available.
