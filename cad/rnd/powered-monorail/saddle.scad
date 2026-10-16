// AutoFAB powered monorail: brush saddle (inverted U). DRAFT v0, parametric.
// R&D, NOT part of the current kit. Licence: CERN-OHL-P-2.0.
// Units: mm. The rail is 2040 V-slot standing on edge (Z = travel axis; travel is probably horizontal, to be confirmed).
// Cross-section in the XY plane: X = 20 mm (front/back faces), Y = 40 mm (side faces, +12 V left / GND right).
// The saddle straddles the front 20 mm face; its two legs run alongside the left and right 40 mm faces
// and each leg holds one brush block facing the 14 mm centre channel.
// NOTE: the bridge on the front face must clear the front-face wheels/rack. VERIFY against the plate layout.
// Every value marked VERIFY must be measured on real parts before printing.

/* [Rail] */
rail_w        = 20.0;   // 2040 short side (OpenBuilds)
rail_d        = 40.0;   // 2040 long side (OpenBuilds)
rail_clear    = 1.0;    // air gap, saddle to rail, each side (no rubbing)

/* [Brush block] VERIFY all: Hoypeyfiy dims not published in our sources */
blk_w         = 20.0;   // across the brush face. VERIFY
blk_h         = 32.0;   // along travel (two brushes, 11.1 c-c). VERIFY
blk_t         = 12.0;   // block thickness, mount face to brush face at nominal. VERIFY
blk_hole_d    = 6.35;   // 1/4" holes (spec)
blk_hole_pitch= 25.4;   // 1" centres (spec)
brush_pitch   = 11.1;   // tandem brush spacing (spec), for reference only
preload       = 3.0;    // brush compression, 2..4 (spec)

/* [Saddle] */
wall          = 4.0;    // PETG/ASA: 4 mm webs, 100% perimeters around holes
leg_len       = 40.0;   // along travel (Z)
fdm_hole_clear= 0.3;    // add to diameter for FDM holes (horizontal, PETG)
bolt_d        = 6.35 + fdm_hole_clear;  // 1/4" bolts, or M6 (6.0+0.3)
plate_bolt_d  = 5.0 + fdm_hole_clear;   // M5 to V-slider plate (OpenBuilds plates use M5)
plate_pitch   = 20.0;   // VERIFY on the actual plate's hole grid

// The 40 mm side faces are 20 mm apart (rail_w), so the legs sit either side of the 20 mm width.
// Each block sits between its leg and the copper. Preload is set by SHIMS between the block and the leg:
// leg inner gap = rail_w + 2*(blk_t - preload + shim_nom).
shim_nom  = 2.0;        // nominal shim stack; 0..4 mm of printed shims gives 2..4 mm preload with margin
leg_gap_y = rail_w + 2*(blk_t - preload + shim_nom);
leg_depth = rail_clear + rail_d + rail_clear; // legs span the full 40 mm face depth

module leg(side=1) {
  difference() {
    translate([0, side>0 ? leg_gap_y/2 : -leg_gap_y/2 - wall, 0])
      cube([wall + leg_depth, wall, leg_len]);
    // two 1/4" holes at 1" centres, centred on the 14 mm channel (= mid-depth of the 40 mm face)
    for (z=[leg_len/2 - blk_hole_pitch/2, leg_len/2 + blk_hole_pitch/2])
      translate([wall + rail_clear + rail_d/2, 0, z])
        rotate([90,0,0]) cylinder(d=bolt_d, h=200, center=true, $fn=32);
  }
}

// Bridge: across the FRONT 20 mm face; bolts to the V-slider plate.
module bridge() {
  difference() {
    translate([0, -leg_gap_y/2 - wall, 0]) cube([wall, leg_gap_y + 2*wall, leg_len]);
    for (y=[-plate_pitch/2, plate_pitch/2], z=[leg_len/2 - plate_pitch/2, leg_len/2 + plate_pitch/2])
      translate([0, y, z]) rotate([0,90,0]) cylinder(d=plate_bolt_d, h=3*wall, center=true, $fn=32);
  }
}

// Printable shim: 1/4" holes at 1" centres
module shim(t=1) difference() {
  cube([blk_w, t, blk_hole_pitch + 12]);
  for (z=[6, 6+blk_hole_pitch]) translate([blk_w/2,0,z]) rotate([90,0,0]) cylinder(d=bolt_d,h=10,center=true,$fn=32);
}

bridge(); leg(1); leg(-1);
