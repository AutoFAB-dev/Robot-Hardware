# Controller — checks

Credit: polarity, two-supply split, and “USB is data only” from ElRobot; stop and 27 W notes from the cell parts list and [step 4](../../setup/04-wiring-power-stop-cameras.md).

**TODO image:** two supplies distinct, stop in the 12 V lead, driver USB seated, 12 V off

With **12 V off** (except the labelled stop test, which you do by switching that lead only):

- [ ] Driver is the Waveshare adapter (or the documented Seeed alt), not a random UART dongle
- [ ] Optional enclosure matches that board; 5× M2×6 if fitted
- [ ] 12 V barrel is 5.5×2.1 mm; stripe matches the socket
- [ ] Physical stop is in the **12 V** lead (or that supply is on a switched strip you can reach)
- [ ] The stop **cuts 12 V**. Test that before any later motion. It must not cut only the Pi
- [ ] Driver-to-Pi cable is a **data** cable
- [ ] Raspberry Pi is a Pi 5 8 GB or a Pi 4 (BOM). 27 W USB-C is its only power
- [ ] microSD is seated (16 GB or larger)
- [ ] 12 V and 27 W USB-C are not swapped
- [ ] Ethernet, if used, is on the printers’ network, not a guest network
- [ ] Cameras are **not** required to live on this page — they go through the [hub](../cameras/checks.md)

Do not command motion from software for these checks. Powered arm motion is done with AutoFAB after handover.
