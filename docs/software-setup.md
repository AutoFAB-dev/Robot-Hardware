# Controller setup and connecting to AutoFAB

AutoFAB software is closed source. This page covers only what you do with the hardware and what you can see in the app.

> **An updated setup flow is coming.** Use the steps below for now. See [Coming soon](#coming-soon).

## What you need
A Raspberry Pi 5 (or 4), a 16 GB+ microSD card, a computer with a card reader, a phone, and the **provided AutoFAB cell image**.

## Hardware prep
- Finish assembly and wiring. Read [safety.md](safety.md) first.
- Place the cell next to your printers. Support the arm so it can't fall.
- Keep the arm's 12 V supply **unplugged**. Leave the physical stop within reach.
- Connect Ethernet to the Pi if you can (same network as the printers).

## 1. Flash the provided image
1. Download the AutoFAB cell image. **TODO:** public download link (request it through [autofab.net](https://autofab.net) for now).
2. Write it to the microSD card with [Raspberry Pi Imager](https://www.raspberrypi.com/software/) ("Use custom").
3. Each cell needs its own fresh flash. Don't clone a card from a cell that's already connected.

## 2. Power-up (controller only)
- Insert the card.
- Power the **Pi only**. Leave the arm's 12 V supply unplugged, with the arm supported.

## 3. Network join
1. Within about 2 minutes the Pi creates a setup Wi-Fi network named `AutoFAB-XXXX`. Join it from your phone. **TODO:** where the setup password comes from for DIY builds.
2. On the setup page, choose your shop Wi-Fi. Use the same network as your printers, not a guest or isolated network.
3. The page shows a **6-character code**. If it expires, the Pi shows a new one by itself; don't power-cycle.
4. Switch your phone back to your usual network.

If the shop Wi-Fi details were wrong, the `AutoFAB-XXXX` network comes back. Join it again and retry. Don't re-flash.

## 4. Claim the cell at app.autofab.net
1. Sign in at [app.autofab.net](https://app.autofab.net).
2. Choose **Add a Fab** → enter the code → **Claim**, and give your cell a name.
3. The cell shows **Online**.

## 5. Checks you can see
In the app, confirm:
- The cell is **Online**.
- You can add your printer (AutoFAB works with almost any 3D printer through its Klipper and Bambu integrations).
- The wrist and scene cameras show a picture (after you plug them in through the powered hub).
- Calibration and the first small moves: [calibration.md](calibration.md), with your hand on the stop.

Don't power the arm until those checks look right and [safety.md](safety.md) is done.

## Network requirements
The cell needs outbound HTTPS (port 443) to AutoFAB, and must be on the same network as the printers with no client isolation.

## Coming soon
Placeholder: an updated setup flow will replace some of the steps above (image download, DIY setup password, and which checks you do yourself). Until then, follow this page and [autofab.net](https://autofab.net) if you need the image or a password.
