# Arm — assembly

Credit: ElRobot [follower assembly manual](https://github.com/norma-core/norma-core/blob/main/hardware/elrobot/manual-follower.pdf) steps 1–64 (camera steps are under [cameras](../cameras/assembly.md)).

**Safety:** Keep 12 V unplugged except when setting IDs. Support the arm.

Tools: PH1 and PH2 screwdrivers, a marker, clamps, a knife.

## Prepare
**TODO image:** printed parts cleaned, supports removed

1. Remove supports and clean parts. Servo footprints must be clear (manual step 1).

## Set IDs 1–8
**TODO image:** one servo on the driver, labelled 1

2. Connect **one** ST3215 at a time. Set its ID, then label it 1 through 8 (manual steps 3–4). Repeat eight times. See [IDs](ids.md) for the Waveshare Adapter (A) / ElRobot method. Use the [controller](../controller/assembly.md) driver for this.

## Base (servo 1)
**TODO image:** servo 1 seated in the base

3. Press servo 1 into the Base (A). 4× M2×6 (steps 5–6).
4. Fit the idler horn and servo horn. 1× M3×8. Route two servo wires (steps 8–9).
5. Route wires through the Base Shield (K). Attach Joint 1 (B) to servo 1. 8× M3×8 (steps 10–11).

## Joint 1 (servo 2)
**TODO image:** servo 2 on Joint 1

6. Press servo 2 into Joint 1. 4× M2×6 (steps 12–13).
7. Fit idler horn and servo horn. 1× M3×8. Route one servo wire. Confirm full rotation (steps 14–15).

## Joint 2 (servo 3)
**TODO image:** Joint 2 on servo 2

8. Press servo 3 into Joint 2 (C). 4× M2×6 (steps 16–17).
9. Attach Joint 2 to servo 2. 6× M3×8. Route the wire; sockets on one side (steps 18–19).
10. Connect and route the next wire (steps 20–21).
11. Fit idler horn and servo horn on servo 3. 1× M3×8. Fit one Joint 2 Shield (L). 2× M2×6. Confirm full rotation (steps 22–23).
12. Attach Joint 3 (D) to servo 3. 6× M3×8. Turn the arm as the manual shows (steps 24–25).

## Joint 3 (servo 4)
**TODO image:** servo 4 in Joint 3

13. Press servo 4 into Joint 3. 4× M2×6 (steps 26–27).
14. Route the wire. Fit Joint 3 Shield Drive Side (M). 2× M2×6. Confirm full rotation (steps 28–29).
15. Fit idler horn and servo horn on servo 4. Attach Joint 4 (E). 1× M3×8 + 6× M3×8 (steps 30–31).

## Joint 4 (servo 5)
**TODO image:** servo 5 in Joint 4

16. Press servo 5 into Joint 4. Connect its wire (steps 32–33).
17. Fasten servo 5. 4× M2×6. Route the wire (steps 34–35).
18. Fit the servo horn. 1× M3×8. Fit one Joint 4 Shield (O). 2× M2×6. Confirm full rotation (steps 36–37).
19. Attach Joint 5 (F) to servo 5. 4× M3×8 (step 38).

## Joint 5 (servo 6)
**TODO image:** servo 6 in Joint 5

20. Press servo 6 into Joint 5. 4× M2×6. Route the wire. Confirm full rotation (steps 39–41).
21. Fit idler horn and servo horn on servo 6. Attach Joint 6 (G). 1× M3×8 + 6× M3×8 (steps 42–43).

## Joint 6 (servo 7)
**TODO image:** servo 7 in Joint 6

22. Press servo 7 into Joint 6. Connect its wire (steps 44–45).
23. Fasten servo 7. 4× M2×6. Route the wire (steps 46–47).
24. Fit the servo horn. 1× M3×8. Fit one Joint 6 Shield (P). 2× M2×6. Confirm full rotation (steps 48–49).

## Gripper (servo 8)
**TODO image:** servo 8 in the gripper base, jaws even

25. Clean the Gripper Base (H). Attach it to servo 7. 4× M3×8 (steps 50–51).
26. Press an idler horn into the gripper base (steps 52–53).
27. Press servo 8 into the gripper base. Connect its wire (steps 54–55).
28. Fasten servo 8. 2× M2×6. Confirm full rotation (steps 56–57).
29. Fit the wiring bracket (R). 2× M2×6 (steps 58–59).
30. Fit the servo horn on servo 8. 1× M3×8. Rail both Gripper Jaws (J) onto the base (steps 60–61).
31. Install the Gripper Gear (I). Move the jaws evenly. 4× M3×8 (steps 62–63).
32. Fit a Gripper Base Shield (Q). 1× M2×6. Confirm full movement (step 64).

Then: [cameras assembly](../cameras/assembly.md) (manual steps 65–75), [rail](../rail/assembly.md), [checks](checks.md).
