# Bill of materials: one cell (1 arm + rail)
Prices are **indicative** (public listings, Oct 2026), in USD, and exclude tax and shipping. Check current prices before you buy. Links are examples; any equivalent part works unless noted.

## Arm (ElRobot follower)
| Qty | Part | Example / link | Approx. unit cost |
|---|---|---|---|
| 8 | Feetech STS3215 servo, **12 V**, 30 kg·cm | [WowRobo](https://shop.wowrobo.com/products/feetech-sts3215-servo-12v-30kg-high-torque-servo-for-so-arm100) · [Seeed](https://www.seeedstudio.com/STS3215-30KG-Serial-Servo-p-6340.html) | $16–22 |
| 1 | Serial bus servo driver | [Waveshare Bus Servo Adapter (A)](https://www.waveshare.com/bus-servo-adapter-a.htm) | ~$5 |
| 1 | 12 V DC power supply, 5.5×2.1 mm barrel (ElRobot specifies 4 A; we recommend 10 A for arm + rail headroom) | [Waveshare 12 V 4 A](https://www.waveshare.com/psu-12v4a-5.5-2.1.htm) or an equivalent 12 V 10 A supply | $8–20 |
| 1 set | Printed ElRobot parts + fasteners | [ElRobot files and manual](https://github.com/norma-core/norma-core/tree/main/hardware/elrobot) | filament |
| 2 | Bench clamps | any | ~$10 |

## Rail (leslider design)
| Qty | Part | Example / link | Approx. unit cost |
|---|---|---|---|
| 1 | Feetech STS3215 servo, 12 V (rail drive, servo ID 9) | as above | $16–22 |
| 1 | 2020 V-slot extrusion, length to suit your printers | see [leslider BOM](https://github.com/pham-tuan-binh/leslider#1-bill-of-materials) | TODO |
| 1 | Gantry plate with V-wheels | see leslider BOM | TODO |
| 4 | M3 bolts, ≥20 mm | — | — |
| 2 sets | M5 bolts ≥10 mm + M5 nuts | — | — |
| 2 sets | M5 bolts 12–16 mm + M5 drop-in T-nuts for 2020 | — | — |
| 1 set | Printed legs (2), base mount (1), pinion (1), rack track segments (20 mm each, enough for your length) | [leslider 3d/](https://github.com/pham-tuan-binh/leslider/tree/main/3d) | filament |
| 1 | ElRobot-to-carriage adapter | **TODO** | filament |

## Controller and cameras
| Qty | Part | Example / link | Approx. unit cost |
|---|---|---|---|
| 1 | Raspberry Pi 5, 8 GB (Pi 4 also works) | [CanaKit](https://www.canakit.com/raspberry-pi-5-8gb.html) | ~$95–125 |
| 1 | Raspberry Pi 27 W USB-C power supply | [Adafruit 5814](https://www.adafruit.com/product/5814) | ~$14 |
| 1 | microSD card, 16 GB+ (64 GB A2 recommended) | [Raspberry Pi 64 GB](https://www.pishop.us/product/raspberry-pi-sd-card-64gb/) | ~$13–40 |
| 1 | Powered USB hub (cameras need external power) | any externally powered USB 3 hub | ~$24 |
| 1 | Wrist camera: Innomaker U20CAM-1080P (any UVC camera works) | [Amazon B0CNCSFQC1](https://www.amazon.com/dp/B0CNCSFQC1) | ~$19 |
| 1 | Wrist-camera mount, printed + 4× M2×6 self-tapping + 2× M3×8 | [`cad/elrobot/stl/CameraMount_square_27mm.stl`](../cad/elrobot/stl/CameraMount_square_27mm.stl) | filament |
| 1 | Scene camera: any 1080p UVC USB webcam | e.g. [Arducam 1080p](https://www.amazon.com/dp/B0CZL1X463) or Logitech C920 | $35–70 |
| 2+ | USB data cables | — | ~$5 |
| 1 | Ethernet cable (recommended) | Cat6 | — |

## Safety
| Qty | Part | Example / link | Approx. unit cost |
|---|---|---|---|
| 1 | Physical stop: inline 22 mm mushroom e-stop (≥10 A) on the 12 V lead, **or** a switched power strip within reach | any | ~$10 |

## Rough total
Roughly **$450–550** in purchased parts, plus filament, the rail extrusion, the gantry plate and fasteners (**TODO: price these**).
