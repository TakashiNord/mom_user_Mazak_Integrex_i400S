# mom_user_Mazak_Integrex_i400S
 mom_user for Mazak Integrex i400S (2017)
____

The part of the postprocessor for Mazak Integrex i400S (Mazatrol).
- 2017? year.
- CAD\CAM\CAE : Unigraphics
- parts postprocessor: tcl, def and dll
- Инструкция к постпроцессору для станка Mazak Integrex_i400S_Matrix_NAMI - documentation
- mom_user_Mazak_Integrex_i400S.tcl - replacing the dll
- Exporting function dll : EXTN_rtv_mom_cp_part_attr

used
```
EXTN_rtv_mom_cp_part_attr   1 ; # = > UF_CSYS_map_point
EXTN_rtv_mom_cp_part_attr   2 ; # "3DCOMP"
EXTN_rtv_mom_cp_part_attr   3 ; # "POLYFORM"
EXTN_rtv_mom_cp_part_attr   4 ; # INPUT_RETRACT
EXTN_rtv_mom_cp_part_attr   5 ; # INPUT_RETRACT_DIST
EXTN_rtv_mom_cp_part_attr   6 ; # "G43_MOVE"
EXTN_rtv_mom_cp_part_attr   7 ; # M107
EXTN_rtv_mom_cp_part_attr   8 ; # M107 + output file
EXTN_rtv_mom_cp_part_attr   9 ; # UNLOAD
EXTN_rtv_mom_cp_part_attr  10 ; # DLL VERSION

EXTN_rtv_mom_cp_part_attr  18 ; # M107 + G43 P1
EXTN_rtv_mom_cp_part_attr  19 ; #
EXTN_rtv_mom_cp_part_attr  20 ; # PB_CMD_output_spindle
EXTN_rtv_mom_cp_part_attr  21 ; # M202 + G123.1
EXTN_rtv_mom_cp_part_attr  22 ; # G0 G53 X0.0
EXTN_rtv_mom_cp_part_attr  23 ; #
EXTN_rtv_mom_cp_part_attr  24 ; # G53.5
EXTN_rtv_mom_cp_part_attr  25 ; # G12.1
EXTN_rtv_mom_cp_part_attr  26 ; # G18 W0.0 H0.0
EXTN_rtv_mom_cp_part_attr  27 ; # G122.1

EXTN_rtv_mom_cp_part_attr  30 ; # G10.9
EXTN_rtv_mom_cp_part_attr  31 ; # C_VAL U_VAL
EXTN_rtv_mom_cp_part_attr  32 ; # 5243+5248 + G10.9
EXTN_rtv_mom_cp_part_attr  33 ; # alt_X alt_Y alt_Z

EXTN_rtv_mom_cp_part_attr 200 ; # ONE*POINT*DIAMETER*MEASUREMENT
EXTN_rtv_mom_cp_part_attr 201 ; # SURFACE*POINT*MEASUREMENT
EXTN_rtv_mom_cp_part_attr 202 ; # G68.2 + G53.1 + G1 G43 G91 + G31 X0 Y0 Z0
EXTN_rtv_mom_cp_part_attr 203 ; # WALL*THICKNESS*MEASUREMENT

EXTN_rtv_mom_cp_part_attr 205 ; # BOSS*BORE*MEAS
EXTN_rtv_mom_cp_part_attr 206 ; # second_dep

```
____
