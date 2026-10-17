# Assembly

Credit: arm steps follow the ElRobot [follower assembly manual](https://github.com/norma-core/norma-core/blob/main/hardware/elrobot/manual-follower.pdf) (steps 1–75). Rail steps follow [leslider §3](https://github.com/pham-tuan-binh/leslider#3-assembly).

**Safety:** Keep 12 V unplugged except when the manual has you set IDs. Support the arm.

Tools the manual asks for: PH1 and PH2 screwdrivers, a marker, clamps, a knife.

## Arm — prepare
**TODO image:** printed parts cleaned, supports removed

1. Remove supports and clean parts. The servo footprints must be clear (manual step 1).
2. Optional: assemble the enclosure around the servo driver (Waveshare or SeeedStudio). 5× M2×6 (manual step 2).

## Arm — set IDs 1–8
**TODO image:** one servo on the driver, labelled 1

3. Connect **one** ST3215 at a time. Label it 1 through 8 (manual steps 3–4). Repeat eight times. See [servo IDs](servo-ids.md).

## Base (servo 1)
**TODO image:** servo 1 seated in the base

4. Press servo 1 into the Base (A). 4× M2×6 (steps 5–6).
5. Fit the idler horn and servo horn. 1× M3×8. Route two servo wires (steps 8–9).
6. Route wires through the Base Shield (K). Attach Joint 1 (B) to servo 1. 8× M3×8 (steps 10–11).

## Joint 1 (servo 2)
**TODO image:** servo 2 on Joint 1

7. Press servo 2 into Joint 1. 4× M2×6 (steps 12–13).
8. Fit idler horn and servo horn. 1× M3×8. Route one servo wire. Confirm full rotation (steps 14–15).

## Joint 2 (servo 3)
**TODO image:** Joint 2 on servo 2

9. Press servo 3 into Joint 2 (C). 4× M2×6 (steps 16–17).
10. Attach Joint 2 to servo 2. 6× M3×8. Route the wire; sockets on one side (steps 18–19).
11. Connect and route the next wire (steps 20–21).
12. Fit idler horn and servo horn on servo 3. 1× M3×8. Fit one Joint 2 Shield (L). 2× M2×6. Confirm full rotation (steps 22–23).
13. Attach Joint 3 (D) to servo 3. 6× M3×8. Turn the arm as the manual shows (steps 24–25).

## Joint 3 (servo 4)
**TODO image:** servo 4 in Joint 3

14. Press servo 4 into Joint 3. 4× M2×6 (steps 26–27).
15. Route the wire. Fit Joint 3 Shield Drive Side (M). 2× M2×6. Confirm full rotation (steps 28–29).
16. Fit idler horn and servo horn on servo 4. Attach Joint 4 (E). 1× M3×8 + 6× M3×8 (steps 30–31).

## Joint 4 (servo 5)
**TODO image:** servo 5 in Joint 4

17. Press servo 5 into Joint 4. Connect its wire (steps 32–33).
18. Fasten servo 5. 4× M2×6. Route the wire (steps 34–35).
19. Fit the servo horn. 1× M3×8. Fit one Joint 4 Shield (O). 2× M2×6. Confirm full rotation (steps 36–37).
20. Attach Joint 5 (F) to servo 5. 4× M3×8 (step 38).

## Joint 5 (servo 6)
**TODO image:** servo 6 in Joint 5

21. Press servo 6 into Joint 5. 4× M2×6. Route the wire. Confirm full rotation (steps 39–41).
22. Fit idler horn and servo horn on servo 6. Attach Joint 6 (G). 1× M3×8 + 6× M3×8 (steps 42–43).

## Joint 6 (servo 7)
**TODO image:** servo 7 in Joint 6

23. Press servo 7 into Joint 6. Connect its wire (steps 44–45).
24. Fasten servo 7. 4× M2×6. Route the wire (steps 46–47).
25. Fit the servo horn. 1× M3×8. Fit one Joint 6 Shield (P). 2× M2×6. Confirm full rotation (steps 48–49).

## Gripper (servo 8)
**TODO image:** servo 8 in the gripper base, jaws even

26. Clean the Gripper Base (H). Attach it to servo 7. 4× M3×8 (steps 50–51).
27. Press an idler horn into the gripper base (steps 52–53).
28. Press servo 8 into the gripper base. Connect its wire (steps 54–55).
29. Fasten servo 8. 2× M2×6. Confirm full rotation (steps 56–57).
30. Fit the wiring bracket (R). 2× M2×6 (steps 58–59).
31. Fit the servo horn on servo 8. 1× M3×8. Rail both Gripper Jaws (J) onto the base (steps 60–61).
32. Install the Gripper Gear (I). Move the jaws evenly. 4× M3×8 (steps 62–63).
33. Fit a Gripper Base Shield (Q). 1× M2×6. Confirm full movement (step 64).

## Wrist camera
**TODO image:** camera on the mount, mount on the gripper (manual steps 65–68)

34. Fix the camera to the mount (S) with 4× M2×6 (step 65).
35. Fix the mount to the gripper base with 2× M3×8 (steps 66–67).
36. Route the camera cable as the manual shows. Fit remaining shields on Joint 6, Joint 4, Joint 2 / Joint 3 camera side, and the Base Shield. Confirm rotation at each (steps 68–75).

## Rail (leslider)
**TODO image:** rack in the 2020 slot, gantry on, legs on, pinion meshed

1. Print 2 legs, 1 base mount, 1 pinion, and enough 20 mm track to span the extrusion.
2. Slide the track into the top-facing channel of the 2020.
3. Slide the gantry plate on so the V-wheels engage (before the legs).
4. Bolt a leg at each end (M5 + T-nut).
5. Mount the base plate to the gantry (two M5, 20 mm apart).
6. **TODO:** ElRobot-to-carriage adapter. leslider then bolts an SO-101 base with four M3 ≥20 mm — that step does not fit ElRobot as written.
7. Drop the rail STS3215 into the cutout, fit the pinion on the output gear so it meshes the rack, and use the screws that came with the servo.
8. Daisy-chain the rail servo after the gripper ([wiring](wiring.md)). Set it to **ID 9**.

With power off, move every joint and the carriage through its range. Leave slack at every joint.
