# Controller setup and connecting to AutoFAB

## What you need
A Raspberry Pi 5 (or 4), a 16 GB+ microSD card, a computer with a card reader, and a phone.

## 1. Flash the card
1. Download the AutoFAB cell image. **TODO:** public download link (request it through [autofab.net](https://autofab.net) for now).
2. Write it to the microSD card with [Raspberry Pi Imager](https://www.raspberrypi.com/software/) ("Use custom").
3. Each cell needs its own fresh flash. Don't clone a card from a cell that's already connected.

## 2. First power-on (controller only)
- Insert the card and connect Ethernet if you can.
- Power the **Pi only**. Leave the arm's 12 V supply unplugged, with the arm supported.

## 3. Connect to your network
1. Within about 2 minutes the Pi creates a setup Wi-Fi network named `AutoFAB-XXXX`. Join it from your phone. **TODO:** where the setup password comes from for DIY builds.
2. On the setup page, choose your shop Wi-Fi. Use the same network as your printers, not a guest or isolated network.
3. The page shows a **6-character code**. If it expires, the Pi shows a new one by itself; don't power-cycle.

## 4. Add the cell to your AutoFAB account
1. Sign in at [autofab.net](https://autofab.net).
2. Choose **Add a Fab** → enter the code → **Claim**, and give your cell a name.
3. The cell shows **Online**.

## 5. Add your printer
In the app, add your printer (the FlashForge AD5X is found on your network). For other printers, talk to us first.

## 6. Commissioning
Servo checks, calibration ([calibration.md](calibration.md)), the e-stop test and the first supervised motion. **TODO:** confirm the self-service steps vs. those done with AutoFAB support.

## Network requirements
The cell needs outbound HTTPS (port 443) to AutoFAB, and must be on the same network as the printers with no client isolation.
