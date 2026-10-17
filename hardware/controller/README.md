# Controller hardware

Optional ElRobot servo-driver enclosures. Unmodified copies from [ElRobot / NormaCore](https://github.com/norma-core/norma-core/tree/main/hardware/elrobot) (Apache-2.0). Upstream file names are unchanged.

- **Upstream commit:** `0d17bb300d712eeb5437d41ddb95ce380b5384e6`
- **Licence:** [LICENSE](LICENSE) (Apache-2.0). Copyright NormaCore.

Print defaults (ElRobot README): **PLA**, **0.4 mm nozzle**, **0.2 mm layers**. Infill is **TODO**. The enclosure is **optional**. Choose the pair that matches the board (Waveshare **or** Seeed). Mapping of manual letters T1 / T2 / U1 / U2 to those two boards is **TODO**. Manual step 2: **5× M2×6**.

A printed case for the Raspberry Pi is **TODO**.

Docs: [controller reference](../../docs/reference/controller/).

## Printed parts

| File | Qty | Material | Print settings | Notes |
|---|---|---|---|---|
| [STL/case_for_waveshare/ws_enclosure_case.stl](STL/case_for_waveshare/ws_enclosure_case.stl) | 1 (Waveshare pair) | PLA | 0.4 mm nozzle, 0.2 mm layers; infill **TODO**; orientation **TODO** | STEP: `STEP/case_for_waveshare/ws_enclosure_case.stp` |
| [STL/case_for_waveshare/ws_enclosure_lid.stl](STL/case_for_waveshare/ws_enclosure_lid.stl) | 1 (Waveshare pair) | PLA | same | STEP: `ws_enclosure_lid.stp` |
| [STL/case_for_seedstudio/ss_enclosure_case.stl](STL/case_for_seedstudio/ss_enclosure_case.stl) | 1 (Seeed pair) | PLA | same | Upstream folder spelling `seedstudio`. STEP: `STEP/case_for_seedstudio/ss_enclosure_case.stp` |
| [STL/case_for_seedstudio/ss_enclosure_lid.stl](STL/case_for_seedstudio/ss_enclosure_lid.stl) | 1 (Seeed pair) | PLA | same | STEP: `ss_enclosure_lid.stp` |

Plates: [print/basic/enclosure_for_waveshare_basic.3mf](print/basic/enclosure_for_waveshare_basic.3mf) · [print/basic/enclosure_for_seedstudio_basic.3mf](print/basic/enclosure_for_seedstudio_basic.3mf) · [print/ams/enclosure_for_waveshare_ams.3mf](print/ams/enclosure_for_waveshare_ams.3mf) · [print/ams/enclosure_for_seedstudio_ams.3mf](print/ams/enclosure_for_seedstudio_ams.3mf).
