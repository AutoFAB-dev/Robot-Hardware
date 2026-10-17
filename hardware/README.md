# Hardware files

Printable and CAD files for each cell component. Same layout on every folder: a README with a part-by-part table (file, quantity, material, print settings, notes), plus the Apache-2.0 licence text where the files are third-party.

| Folder | What | Upstream | Commit |
|---|---|---|---|
| [arm/follower/](arm/follower/) | ElRobot follower printed parts (STL, STEP, 3MF) | [norma-core / hardware/elrobot](https://github.com/norma-core/norma-core/tree/main/hardware/elrobot) | `0d17bb300d712eeb5437d41ddb95ce380b5384e6` |
| [rail/](rail/) | leslider rail printed parts (3MF) | [pham-tuan-binh/leslider `3d/`](https://github.com/pham-tuan-binh/leslider/tree/main/3d) | `a7c5c86669f7452e60e764f14ab0bff406213e3d` |
| [controller/](controller/) | ElRobot driver enclosures (STL, STEP, 3MF) | same ElRobot tree | `0d17bb300d712eeb5437d41ddb95ce380b5384e6` |
| [cameras/](cameras/) | ElRobot gripper camera mounts (STL, STEP, 3MF) | same ElRobot tree | `0d17bb300d712eeb5437d41ddb95ce380b5384e6` |

Leader-arm files, combined leader+follower plates, simulation, images, and the 13 MB `STEP/ElRobot.stp` assembly are **not** copied (follower-only; that STEP is over the 10 MB repo limit). Use them [upstream](https://github.com/norma-core/norma-core/tree/main/hardware/elrobot) if you need them.

Docs: [arm](../docs/reference/arm/) · [rail](../docs/reference/rail/) · [controller](../docs/reference/controller/) · [cameras](../docs/reference/cameras/). Earlier camera-mount copies also remain in [`cad/elrobot/`](../cad/elrobot/).
