# 6. Link your printer

Add the printer this cell will tend. AutoFAB works with almost any 3D printer through its Klipper and Bambu integrations.

**Safety:** The arm stays unpowered. You are only talking to the printer over the network.

**TODO image:** app screen after a printer has been added, with the cell Online

## Before you tap Add
- The cell shows **Online** at [app.autofab.net](https://app.autofab.net).
- The printer is on the **same network** as the cell, not a guest or isolated network.
- The printer is powered and finished its own start-up.
- The printer already works in **its own app or software** on that network. Prove that first, then add it in AutoFAB.

It has run on a Voron (Klipper), Creality K2 Plus with CFS, Creality K1, Bambu Lab X1C, Bambu Lab H2S and FlashForge Adventurer. Other Klipper or Bambu printers should work the same way.

## In the app
1. Open your cell.
2. Choose **Add a printer** (or the same wording the app shows).
3. Pick that printer **explicitly**. Follow the prompts — the app asks for what it needs.
4. Wait until the printer shows as reachable.

If it shows unreachable, move the printer and the cell onto one network, confirm the printer's own app can still see it, and try again. See [Troubleshooting](../troubleshooting.md).

Don't type passwords, claim codes, or printer access codes into a GitHub issue. If you are stuck, use [Getting help](../getting-help.md).

**Back:** [5. Flash, install, remote access](05-flash-install-remote-access.md)
**Next:** [Calibrate the cell](../calibration/) (before the [ready check](07-ready-check-and-handover.md))
