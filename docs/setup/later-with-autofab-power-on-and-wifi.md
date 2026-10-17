# 5. Power on and Wi-Fi

This page covers a later step done with AutoFAB; it is not part of first-day onboarding.

Bring the small computer online and add the cell to your AutoFAB account. AutoFAB software is closed source; this page is only what you do with the box and what you see in the app.

**Safety:** Support the arm. Leave the 12 V supply off. Claiming the cell must **never** move a motor. Someone must stay able to hit the stop before you ever switch the arm on.

**TODO image:** phone joined to the AutoFAB-XXXX setup network, then the claim screen at app.autofab.net

> **An updated setup flow is coming.** Use the steps below for now. See [Coming soon](#coming-soon).

## If the microSD card is blank
1. Get the provided AutoFAB cell image. **TODO:** public download (ask via [info@autofab.net](mailto:info@autofab.net) for now).
2. Write it with [Raspberry Pi Imager](https://www.raspberrypi.com/software/) — choose "Use custom".
3. Use a fresh flash for this cell. Don't copy a card from a cell that has already been turned on.

If the card came already written, skip this.

## Power the computer
1. Insert the card (or confirm it is already in).
2. Plug in the Pi's USB-C supply. Leave 12 V off. Use Ethernet to the printers' network if you have a cable.
3. Wait up to two minutes.

## Join the setup network
1. On your phone, join the Wi-Fi network named `AutoFAB-XXXX`. Use the **setup card** in the box for the exact name and password. **TODO:** where DIY builders get that password if there is no card.
2. A page should open on its own (a captive page). Pick your shop Wi-Fi — the same network as the printers, not a guest network — and enter its password.
3. The page gives you a **claim link** (and may show a code). Don't unplug the Pi.
4. Leave the setup network. Switch your phone back to your usual Wi-Fi or mobile data.

If the shop Wi-Fi details were wrong, `AutoFAB-XXXX` comes back. Join that same setup network again and retry. Don't re-flash. More help: [Troubleshooting](../troubleshooting.md).

## Add the cell in the app
1. On usual Wi-Fi or mobile data, open the claim link if you have one, or go to [app.autofab.net](https://app.autofab.net).
2. Sign in. Choose the right organization (your company) if the app asks.
3. Choose **Add a Fab**, open the claim link or enter the code if the app asks, then **Claim**. Give the cell a name.
4. Wait until the cell shows **Online**. It should appear **once**. If you unplug the Pi, it should go offline.

The cell needs a normal outbound internet connection (HTTPS) and must be on the same network as the printers.

## Coming soon
Placeholder: an updated setup flow will replace some of these steps (image download, DIY setup password, and which checks you do yourself). Until then, follow this page and email [info@autofab.net](mailto:info@autofab.net) if you need a password.

**Back:** [4. Wiring, power, stop and cameras](04-wiring-power-stop-cameras.md)
**Next:** [6. Link your printer](06-link-your-printer.md)
