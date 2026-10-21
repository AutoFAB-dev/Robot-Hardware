# Controller — assembly

Credit: ElRobot follower manual **step 2** (optional driver enclosure) and steps 3–4 (driver used to set IDs). Pi, supplies, and stop from the cell parts list and [step 4](../../setup/04-wiring-power-stop-cameras.md).

**Safety:** Keep 12 V unplugged except when setting servo IDs. The stop must be in the 12 V lead before any later motion. Do not mix the 12 V barrel with the Pi’s USB-C supply.

Tools: PH1 screwdriver for the enclosure’s M2×6 (ElRobot). Other tools: **TODO**.

## Optional driver enclosure
**TODO image:** enclosure around the Waveshare or Seeed board, 5× M2×6

1. Choose the printed enclosure that matches your board: Waveshare **or** Seeed (ElRobot README). Mapping of manual letters T1 / T2 / U1 / U2 to those two boards is **TODO**.
2. Assemble the enclosure around the servo driver. **5× M2×6** (manual step 2). Skip this section if you are not using an enclosure.

## Driver and 12 V
**TODO image:** 5.5×2.1 mm barrel in the driver, stripe matching the socket, stop in the lead

3. Confirm the driver is the Waveshare Bus Servo Adapter (A), or the Seeed XIAO alt with its 5.5×2.1 mm socket fitted.
4. Plug the 12 V supply into the driver barrel. Check the stripe.
5. Fit the physical stop in the 12 V lead, or place that supply on a switched strip within reach.
6. Leave 12 V **off**.

## USB data to the Pi
**TODO image:** data-rated USB from driver to Pi, not a charge-only cable

7. Connect a **data** USB cable from the driver to the Raspberry Pi. See [wiring](wiring.md).

## Raspberry Pi
**TODO image:** microSD seated, 27 W USB-C ready, Ethernet if you have it

8. Seat the microSD card (16 GB or larger). If the card is blank, the customer path flashes Raspberry Pi OS Lite and runs the install script ([step 5](../../setup/05-flash-install-remote-access.md)). Do not invent flash flags here.
9. Do **not** plug in the 27 W USB-C yet if you are following the customer path (step 4: “Don't turn it on yet”). Setting IDs on a bench uses a **PC or laptop** over USB (ElRobot step 4: “PC/Laptop (USB)”), with the adapter jumper on **B**. Waveshare USB Control also lists Raspberry Pi 4B, Jetson Orin Nano, and RDK X3. This bench step does not use the closed AutoFAB image. Method: [arm IDs](../arm/ids.md#how-to-set-an-id).
10. If you have Ethernet, plug it into the same network as the printers. Do not power the Pi from 12 V.

## Use the driver to set IDs
**TODO image:** one servo on the driver, labelled, 12 V on only for that step

11. Set arm IDs 1–8: [arm assembly](../arm/assembly.md).
12. Set rail ID 9: [rail assembly](../rail/assembly.md).
13. Unplug 12 V when the labels are done.

Then: [cameras assembly](../cameras/assembly.md), [checks](checks.md).
