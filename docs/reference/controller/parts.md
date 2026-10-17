# Controller — parts

Credit: servo driver, 12 V supply, optional printed enclosure, and USB cable notes from the ElRobot [README BOM](https://github.com/norma-core/norma-core/blob/main/hardware/elrobot/README.md) and the follower manual (parts W2 / W3 / W4, enclosures T1 / T2 / U1 / U2, step 2). Raspberry Pi, 27 W USB-C, microSD, Ethernet, and the stop from the [cell parts list](../../../bom/BOM.md).

Print defaults for the optional ElRobot enclosure (ElRobot README): **PLA**, **0.4 mm nozzle**, **0.2 mm layers**. Combined STLs are exported in the **optimal printing orientation**. Infill is **TODO**. Which manual letter (T1 / T2 vs U1 / U2) is the Waveshare pair and which is the Seeed pair is **TODO**.

Files in this repo: [`hardware/controller/`](../../../hardware/controller/) (Apache-2.0; upstream commit recorded there).

Arm printed parts: [arm parts](../arm/parts.md). Rail: [rail parts](../rail/parts.md). Cameras and the powered USB hub: [cameras parts](../cameras/parts.md).

## Printed

| Qty | Part | File | Material | Infill | Orientation |
|---|---|---|---|---|---|
| 1 | Waveshare enclosure case | [`ws_enclosure_case.stl`](../../../hardware/controller/STL/case_for_waveshare/ws_enclosure_case.stl) | PLA | TODO | TODO |
| 1 | Waveshare enclosure lid | [`ws_enclosure_lid.stl`](../../../hardware/controller/STL/case_for_waveshare/ws_enclosure_lid.stl) | PLA | TODO | TODO |
| 1 | Seeed enclosure case | [`ss_enclosure_case.stl`](../../../hardware/controller/STL/case_for_seedstudio/ss_enclosure_case.stl) | PLA | TODO | TODO |
| 1 | Seeed enclosure lid | [`ss_enclosure_lid.stl`](../../../hardware/controller/STL/case_for_seedstudio/ss_enclosure_lid.stl) | PLA | TODO | TODO |

Print **either** the Waveshare pair **or** the Seeed pair. The enclosure is **optional** (ElRobot README: “Driver enclosure: Optional. Choose the enclosure that fits your servo driver board (Waveshare or SeeedStudio) or remove if not needed.”). Manual step 2 uses **5× M2×6** on the chosen pair. Plates: [`enclosure_for_waveshare_basic.3mf`](../../../hardware/controller/print/basic/enclosure_for_waveshare_basic.3mf), [`enclosure_for_seedstudio_basic.3mf`](../../../hardware/controller/print/basic/enclosure_for_seedstudio_basic.3mf).

A printed case for the Raspberry Pi is **TODO** (not in ElRobot or the cell parts list). Full file table: [hardware/controller/README.md](../../../hardware/controller/README.md).

## Purchased

| Qty | Part | Spec |
|---|---|---|
| 1 | Raspberry Pi 5, 8 GB | Pi 4 also works ([BOM](../../../bom/BOM.md)). Other Pi models: **TODO** |
| 1 | Raspberry Pi USB-C power supply | **27 W** (BOM; official Raspberry Pi 5 supply). Do not power the Pi from the 12 V driver |
| 1 | microSD card | 16 GB or larger; 64 GB A2 recommended (BOM) |
| 1 | Serial bus servo driver | [Waveshare Bus Servo Adapter (A)](https://www.waveshare.com/bus-servo-adapter-a.htm). ElRobot alt: [SeeedStudio XIAO bus driver](https://www.seeedstudio.com/Bus-Servo-Driver-Board-for-XIAO-p-6413.html) (that alt “requires 5.5×2.1mm DC socket with wires”) |
| 1 | 12 V DC power supply | 5.5×2.1 mm barrel. ElRobot: **12 V / 4 A** for the follower **alone**. Cell parts list: an equivalent **12 V 10 A** for arm + rail headroom. Required rating beyond those two statements: **TODO** |
| 1 | Physical stop | Inline 22 mm mushroom e-stop (**≥10 A**) on the 12 V lead, **or** a switched power strip within reach (BOM) |
| 1 | USB data cable | Driver to Pi. ElRobot: rated for **data transfer**; power-only charging cables will not enumerate the driver. USB-C to USB-A or USB-C to USB-C as your ports require |
| 1 | Ethernet cable | Cat6 recommended (BOM). Optional if you use shop Wi-Fi, but guest / isolated Wi-Fi often blocks the cell |

The powered USB hub belongs with the [cameras](../cameras/parts.md) (ElRobot: required primarily for the cameras).
