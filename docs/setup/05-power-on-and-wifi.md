# 5. Power on and Wi-Fi

Bring the small computer online and add the cell to your AutoFAB account. AutoFAB software is closed source; this page is only what you do with the box and what you see in the app.

**Safety:** Power the **Pi only**. Leave the arm's 12 V supply off, with the arm supported. Someone must stay able to hit the stop before you ever switch the arm on.

**TODO image:** phone joined to the AutoFAB-XXXX setup network, then the claim screen at app.autofab.net

> **An updated setup flow is coming.** Use the steps below for now. See [Coming soon](#coming-soon).

## If the microSD card is blank
1. Get the provided AutoFAB cell image. **TODO:** public download (ask via [autofab.net](https://autofab.net) for now).
2. Write it with [Raspberry Pi Imager](https://www.raspberrypi.com/software/) — choose "Use custom".
3. Use a fresh flash for this cell. Don't copy a card from another cell.

If the card came already written, skip this.

## Power the computer
1. Insert the card.
2. Plug in the Pi's USB-C supply. Leave 12 V off.
3. Wait about two minutes.

## Join the setup network
1. On your phone, look for a Wi-Fi network named `AutoFAB-XXXX`. **TODO:** where DIY builders get the setup password (a setup card, if you have one, may show it).
2. Open the setup page and pick your shop Wi-Fi — the same network as the printers, not a guest network.
3. Write down the **6-character code**. If it expires, a new one appears; don't unplug the Pi.
4. Switch your phone back to your usual Wi-Fi.

If the shop Wi-Fi details were wrong, `AutoFAB-XXXX` comes back. Join it again and retry. Don't re-flash. More help: [Troubleshooting](../troubleshooting.md).

## Add the cell in the app
1. Sign in at [app.autofab.net](https://app.autofab.net).
2. Choose **Add a Fab**, enter the code, then **Claim**. Give the cell a name.
3. Wait until it shows **Online**.

The cell needs a normal outbound internet connection (HTTPS) and must be on the same network as the printers.

## Coming soon
Placeholder: an updated setup flow will replace some of these steps (image download, DIY setup password, and which checks you do yourself). Until then, follow this page and [autofab.net](https://autofab.net) if you need the image or a password.

**Back:** [4. Wiring, power, stop and cameras](04-wiring-power-stop-cameras.md)
**Next:** [6. Link your printer](06-link-your-printer.md)
