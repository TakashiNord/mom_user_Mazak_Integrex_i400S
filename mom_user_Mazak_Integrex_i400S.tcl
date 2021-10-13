##
## mom_user_MAZAK_INTEGREX_e1060V8.dll
## mom_user_MAZAK_INTEGREX_i630_64.dll -> entry_rtv_mom_cp_part_attr
## mom_user_MAZAK_INTEGREX_i630_32.dll -> entry_rtv_mom_cp_part_attr
## Aviastar_ATT.dll -> entry_aviastar
##
##   set user_file ${cam_post_dir}mom_user_Mazak_Integrex_i400S.tcl
##   if [file exists "$user_file"] {
##        source $user_file
##   }
##
##
##

# ===========================================
proc EXTN_rtv_mom_cp_part_attr { sw } {
# ===========================================
 global PI
 set sw [ format "%d" $sw ]
 set sw [ expr $sw-1 ]

 switch $sw {

    0 {
     global mom_post_point
     global mom_post_point_pos

#/* coordinate space of the root part which is the whole part being displayed */
#//#define UF_CSYS_ROOT_COORDS     1
#/* coordinate space of the work part */
#//#define UF_CSYS_WORK_COORDS     2
#/* work coordinate space of the root part */
#//#define UF_CSYS_ROOT_WCS_COORDS 3
#     UF_CSYS_map_point(UF_CSYS_ROOT_COORDS,point,UF_CSYS_ROOT_WCS_COORDS,point);

    }

    1 {
     #MOM_output_literal "(EXTN_rtv_mom_cp_part_attr 2)"

     # "3DCOMP"
     global mom_contact_normal
     global mom_v_vector
     global mom_comp_vector
     global mom_tool_axis
     global mom_out_angle_pos

     set xmm6 [ expr $mom_out_angle_pos(0)*(-$PI)/180. ] ;
     set xmm8 [ expr $mom_out_angle_pos(1)*$PI/180. ] ;

     set xmm9 [ expr cos($xmm6)*$mom_contact_normal(0)-sin($xmm6)*$mom_contact_normal(2) ];

     set contact_normal(0) [ expr cos($xmm8)*$xmm9 -  sin($xmm8)*$mom_contact_normal(1) ];
     set contact_normal(1) [ expr cos($xmm8)*$mom_contact_normal(1) + sin($xmm8)*$xmm9 ] ;
     set contact_normal(2) [ expr sin($xmm6)*$mom_contact_normal(0) + cos($xmm6)*$mom_contact_normal(2) ];

     set dot [ VEC3_dot contact_normal mom_tool_axis ]

     for { set i 0 } {$i<3} { incr i } {
       set v_vector_temp($i) [ expr $mom_tool_axis($i)*$dot - $contact_normal($i) ]
     }

     set magnitude [ VEC3_unitize v_vector_temp v_vector ]

     for { set i 0 } {$i<3} { incr i } {
       set mom_v_vector($i) $v_vector($i)
       set mom_contact_normal($i) $contact_normal($i) ]
       set mom_comp_vector($i) [ expr $mom_tool_axis($i) - $mom_v_vector($i) ]
     }

    }

    2 {
     #MOM_output_literal "(EXTN_rtv_mom_cp_part_attr 3)"

     # "POLYFORM" ?
     global mom_pos
     global mom_poly_ang
     global mom_poly_dlina

     set unit_vec(0) 0 ; set unit_vec(1) 0 ; set unit_vec(2) 0 ;
     set vec_from(0) 1 ; set vec_from(1) 0 ; set vec_from(2) 0 ;
     set vec_ccw(0) 0 ;  set vec_ccw(1) 0 ;  set vec_ccw(2) 1 ;

     set vec(0) $mom_pos(0) ;  set vec(1) $mom_pos(1) ;  set vec(2) 0.0 ;

     set magnitude [ VEC3_unitize vec unit_vec ]

     set dot [ VEC3_dot vec_from vec ]
     set p1 [ VEC3_mag vec_from ]
     set p2 [ VEC3_mag vec ]
     set p3 [ expr $p1*$p2 ]
     if {[ EQ_is_zero $p3]} {
       set angle 0
     } else {
       set angle [ expr acos($dot/$p3) ]
     }

     set angle [expr  $angle*180.0/$PI ] ;
     if {$angle>180.} { set angle [ expr $angle-360. ] ; }

     set mom_poly_ang $angle;
     set mom_poly_dlina  $magnitude ;
    }

    3 {
     #// INPUT_RETRACT

     global mom_kin_retract_distance
     global mom_kin_reengage_distance

     # Введите значения отвода и врезания инструмента
     # задание :Отвод (мм)=
     set mom_kin_retract_distance 100.0

     # задание :Врезание (мм)=
     set mom_kin_reengage_distance 100.0
    }

    4 {
     # INPUT_RETRACT_DIST
     #uc1601(":Ввод дистанций отвода и врезания:", 0);

     global mom_prev_mcs_goto
     global mom_prev_tool_axis
     global mom_kin_retract_distance
     global mom_kin_reengage_distance

     for { set i 0 } {$i<3} { incr i } {
       set mom_pos($i) [ expr $mom_prev_tool_axis($i) * $mom_kin_retract_distance + $mom_prev_mcs_goto($i) ]
       set mom_pos_reen($i) [ expr $mom_prev_tool_axis($i) * $mom_kin_reengage_distance + $mom_prev_mcs_goto($i) ]
     }
    }

    5 {
     #MOM_output_literal "(EXTN_rtv_mom_cp_part_attr 6)"

     # "G43_MOVE" ?
     global mom_out_angle_pos
     set x [ expr  cos($mom_out_angle_pos(0)*$PI/180.0) ];
     set str [ format "%.8lf" $x ]
     # #600=[[#[60000+#3020]+#58203]*[____]]
     MOM_output_literal "\043600=\133\133\043\13360000+\0433020\135+\04358203\135*\133${str}\135\135"
    }

    6 {
     # ?
     global mom_angle_tool_new
     global mom_input_zero_int

     set str [ format "%.3lf" $mom_angle_tool_new ]
     MOM_output_literal "G0 B${str}"
     MOM_output_literal "M107"
    }

    7 {
     # ?
     global mom_angle_tool_new
     global mom_input_zero_int

     set str [ format "%.3lf" $mom_angle_tool_new ]
     MOM_output_literal "G0 B${str}"
     MOM_output_literal "M107"
     puts $ofile  "#600=\[\[#\[60000+#3020\]+300.086\]\]"
    }

    8 {
      set dword_180009820 0 ; # ufusr_ask_unload
    }

    9 {
      MOM_output_literal "(DLL VERSION 24.02.2015)"
    }

    17 {
     global mom_angle_tool_new
     global mom_input_zero_int
     global mom_tool_number

     MOM_output_literal "G49"
     set str [ format "%.3lf" $mom_angle_tool_new ]
     MOM_output_literal "G0 B${str}"
     MOM_output_literal "M107"
     MOM_output_literal "G43 P1 H$mom_tool_number"
   }

    18 {
     global mom_out_angle_pos mom_prev_out_angle_pos mom_pos
     global mom_P_num
     set x [ expr  cos($mom_out_angle_pos(0)*$PI/180.0) ];
     set str [ format "%.8lf" $x ]
     MOM_output_literal "\043600=\133\133\043\13360000+\0433020\135+300.086\135*\133${str}\135\135"
    }

    19 {
       PB_CMD_output_spindle
    }

    20 {
       MOM_output_literal "G53.5 Z\133\043751\135"
       MOM_output_literal "G18"
       MOM_output_literal "M202"
       MOM_output_literal "G123.1"
    }

    21 {
       MOM_output_literal "G0 G53 X0.0"
    }

    22 {
       MOM_output_literal "\043701=0"
       MOM_output_literal "\043702=0"
       MOM_output_literal "\043751 = \0439101"
    }

    23 {
       MOM_output_literal "G53.5 Z\133\043751\135"
    }

    24 {
       MOM_output_literal "G17 U0.0 H0.0"
       MOM_output_literal "G12.1 (INTERPOLYAZIA VKL)"
    }

    25 {
       MOM_output_literal "G18 W0.0 H0.0"
    }

    26 {
       MOM_output_literal "G122.1"
    }

    29 {
      MOM_output_literal "G10.9X1"
      MOM_output_literal "G0 G53 X0."
      MOM_output_literal "G0 G53 Y-125. Z0."
    }

    30 {
      global mom_C_VAL mom_U_VAL
      MOM_output_literal "M00"
      MOM_output_literal "M202 M302"
      MOM_output_literal "M205 M305"
      MOM_output_literal "M902"
      MOM_output_literal "M300"
      set str [ format "%.3lf" $mom_U_VAL ]
      MOM_output_literal "G55 G0 G90 U${str}"
      MOM_output_literal "M901"
      MOM_output_literal "M200"
      set str [ format "%.3lf" $mom_C_VAL ]
      MOM_output_literal "G54 G0 G90 C${str}"
      MOM_output_literal "M306"
      MOM_output_literal "M542"
      MOM_output_literal "G0 W\133\043750\135"
      MOM_output_literal "M508"
      MOM_output_literal "G1 G94 W\133-\043751\135 F500."
    }

    31 {
      MOM_output_literal "(Перенос нул !!!)"
      MOM_output_literal "\0435243 = \0435223 - \133\0435226 - \043751\135"
      MOM_output_literal "\0435248 = \0435228 - \133\0435226 - \043751\135"
      MOM_output_literal "G10.9X0"
      MOM_output_literal "\0435241 = -490."
    }

    32 {
      global mom_alt_X mom_alt_Y mom_alt_Z
      MOM_output_literal "G10.9X1"
      set str [ format "%.3lf" $mom_alt_X ]
      MOM_output_literal "G0 G53 X${str}"
      set str [ format "G0 G53 Y%.3lf Z%.3lf" $mom_alt_Y $mom_alt_Z ]
      MOM_output_literal "${str}"
    }

    199 {
     global mom_mcs_goto
     global mom_out_angle_pos
     global mom_tool_number

     MOM_output_to_listing_device "http://www.postprocessor.ru, ЗАО КГ \"ПОСТПРОЦЕССОР\" "

     set G43_4_flag 0
     MOM_output_literal "G49"

     set str [format "G68.2 P1 X%.3lf Y%.3lf Z%.3lf I0.0 J%.3lf K%.3lf" $mom_mcs_goto(0) $mom_mcs_goto(1) $mom_mcs_goto(2) $mom_out_angle_pos(0) $mom_out_angle_pos(1) ]
     MOM_output_literal $str

     MOM_output_literal "G53.1"
     MOM_output_literal "#600=\[#\[60000+#3020\]+#58203\]"
     MOM_output_literal "G1 G43 G91 Z\[-#600\] F5.0 H$mom_tool_number"
     MOM_output_literal "G90"
     MOM_output_literal "G31 X0 Y0 Z0 F[format %.3f $mom_feed_rate]"
     MOM_output_literal "#501 = #5061 - #600*SIN\[[format %.3f $mom_out_angle_pos(0)]\]"
     MOM_output_literal "#502 = #5062"
     MOM_output_literal "#504 = 2.0*SQRT\[#501*#501+#502*#502\]-2.0*2.978"

     set dz [expr sqrt($mom_mcs_goto(0)*$mom_mcs_goto(0)+$mom_mcs_goto(1)*$mom_mcs_goto(1)) ]
     MOM_output_literal "#500 = [format %.3f $dz]"

     MOM_output_literal "DPRNT\[---------------ONE*POINT*DIAMETER*MEASUREMENT----------------\]"
     MOM_output_literal "DPRNT\[MEASURED*DIAMETER*#504\[53\]\]"
     MOM_output_literal "DPRNT\[NOMINAL*DIAMETER *#500\[53\]\]"
     MOM_output_literal "#501 = #500-#504"
     MOM_output_literal "DPRNT\[-------------------------------------------------------------\]"
     MOM_output_literal "G69"
    }

    200 {
     global mom_mcs_goto
     global mom_out_angle_pos
     global mom_tool_number
     global mom_feed_rate

     set G43_4_flag 0
     MOM_output_literal "G49"

     set str [format "G68.2 P1 X%.3lf Y%.3lf Z%.3lf I0.0 J%.3lf K%.3lf" $mom_mcs_goto(0) $mom_mcs_goto(1) $mom_mcs_goto(2) $mom_out_angle_pos(0) $mom_out_angle_pos(1) ]
     MOM_output_literal $str

     MOM_output_literal "G53.1"
     MOM_output_literal "#600=\[#\[60000+#3020\]+#58203\]"
     MOM_output_literal "G1 G43 G91 Z\[-#600\] F5.0 H$mom_tool_number"
     MOM_output_literal "G90"
     MOM_output_literal "G31 X0 Y0 Z0 F[format %.3f $mom_feed_rate]"
     MOM_output_literal "#511 = #5061 - #600*SIN\[[format %.3f $mom_out_angle_pos(0)]\]"
     MOM_output_literal "#512 = #5062"
     MOM_output_literal "#501 = #511*COS\[[format %.3f $mom_out_angle_pos(1)]\] - #512*SIN\[[format %.3f $mom_out_angle_pos(1)]\]"
     MOM_output_literal "#502 = #511*SIN\[[format %.3f $mom_out_angle_pos(1)]\] + #512*COS\[[format %.3f $mom_out_angle_pos(1)]\]"
     MOM_output_literal "#503 = #5063 - #600*COS\[[format %.3f $mom_out_angle_pos(0)]\]"
     MOM_output_literal "#504 = SQRT\[\[#501-\[[format %.3f $mom_mcs_goto(0)]\]\]*\[#501-\[[format %.3f $mom_mcs_goto(0)]\]\]+\[#502-\[[format %.3f $mom_mcs_goto(1)]\]\]*\[#502-\[[format %.3f $mom_mcs_goto(1)]\]\]+ \[#503-\[[format %.3f $mom_mcs_goto(2)]\]\]*\[#503-\[[format %.3f $mom_mcs_goto(2)]\]\]\]-2.978"
     MOM_output_literal "DPRNT\[---------------SURFACE*POINT*MEASUREMENT---------------------\]"
     MOM_output_literal "DPRNT\[DATA**#3011\[80\]***TIME**#3012\[60\]--------------------\]"
     MOM_output_literal "DPRNT\[MEASURED**X**#501\[43\]***Y*=*#502\[43\]***Z*=*#503\[43\]\]"
     MOM_output_literal "DPRNT\[ERROR********#504\[43\]\]"
     MOM_output_literal "DPRNT\[-------------------------------------------------------------\]"
     MOM_output_literal "G69"
    }

    201 {
     global mom_mcs_goto
     global mom_out_angle_pos
     global mom_tool_number
     global mom_programmed_feed_rate
     global meas_pt1

     set meas_pt1(0) $mom_mcs_goto(0)
     set meas_pt1(1) $mom_mcs_goto(1)
     set meas_pt1(2) $mom_mcs_goto(2)
     set G43_4_flag 0
     MOM_output_literal "G49"

     set str [format "G68.2 P1 X%.3lf Y%.3lf Z%.3lf I0.0 J%.3lf K%.3lf" $mom_mcs_goto(0) $mom_mcs_goto(1) $mom_mcs_goto(2) $mom_out_angle_pos(0) $mom_out_angle_pos(1) ]
     MOM_output_literal $str

     MOM_output_literal "G53.1"
     MOM_output_literal "#600=\[#\[60000+#3020\]+#58203\]"
     MOM_output_literal "G1 G43 G91 Z\[-#600\] F5.0 H$mom_tool_number"
     MOM_output_literal "G90"
     MOM_output_literal "G31 X0 Y0 Z0 F[format %.3f [expr abs($mom_programmed_feed_rate)]]"
     MOM_output_literal "#501 = #5061 - #600*SIN\[[format %.3f $mom_out_angle_pos(0)]\]"
     MOM_output_literal "#502 = #5062"
     MOM_output_literal "#503 = #5063 - #600*COS\[[format %.3f $mom_out_angle_pos(0)]\]"
     MOM_output_literal "G69"
    }

    202 {
     global mom_mcs_goto
     global mom_out_angle_pos
     global mom_tool_number
     global mom_programmed_feed_rate
     global meas_pt1

     set G43_4_flag 0
     MOM_output_literal "G49"

     set str [format "G68.2 P1 X%.3lf Y%.3lf Z%.3lf I0.0 J%.3lf K%.3lf" $mom_mcs_goto(0) $mom_mcs_goto(1) $mom_mcs_goto(2) $mom_out_angle_pos(0) $mom_out_angle_pos(1) ]
     MOM_output_literal $str

     MOM_output_literal "G53.1"
     MOM_output_literal "#600=\[#\[60000+#3020\]+#58203\]"
     MOM_output_literal "G1 G43 G91 Z\[-#600\] F5.0 H$mom_tool_number"
     MOM_output_literal "G90"
     MOM_output_literal "G31 X0 Y0 Z0 F[format %.3f [expr abs($mom_programmed_feed_rate)]]"
     MOM_output_literal "#511 = #5061 - #600*SIN\[[format %.3f $mom_out_angle_pos(0)]\]"
     MOM_output_literal "#512 = #5062"
     MOM_output_literal "#513 = #5063 -#600*COS\[[format %.3f $mom_out_angle_pos(0)]\]"
     if {$mom_programmed_feed_rate > 0.0} {
        MOM_output_literal "#504 = SQRT\[\[#501-#511\]*\[#501-#511\]+\[#502-#512\]*\[#502-#512\]+\[#503-#513\]*\[#503-#513\]\]-2.0*2.978"
     }
     if {$mom_programmed_feed_rate < 0.0} {
        MOM_output_literal "#504 = SQRT\[\[#501-#511\]*\[#501-#511\]+\[#502-#512\]*\[#502-#512\]+\[#503-#513\]*\[#503-#513\]\]+2.0*2.978"
     }
     MOM_output_literal "#505 = [format%.3f [expr sqrt(($mom_mcs_goto(0)-$meas_pt1(0))*($mom_mcs_goto(0)-$meas_pt1(0)) + ($mom_mcs_goto(1)-$meas_pt1(1))*($mom_mcs_goto(1)-$meas_pt1(1)) + ($mom_mcs_goto(2)-$meas_pt1(2))*($mom_mcs_goto(2)-$meas_pt1(2)))]]"
     MOM_output_literal "DPRNT\[---------------WALL*THICKNESS*MEASUREMENT----------------\]"
     MOM_output_literal "DPRNT\[MEASURED*AT*POINT***X=#501\[53\]*Y=#502\[53\]*Z=#503\[53\]\]"
     MOM_output_literal "DPRNT\[NOMINAL*THICKNESS****#505\[53\]\]"
     MOM_output_literal "DPRNT\[MEASURED*THICKNESS****#504\[53\]\]"
     MOM_output_literal "#506 = #505-#504"
     MOM_output_literal "DPRNT\[ERROR*****************#506\[34\]\]"
     MOM_output_literal "DPRNT\[---------------------------------------------------------\]"
     MOM_output_literal "G69"
    }

    204 {
     global mom_post_arc_center
     global mom_out_angle_pos
     global mom_tool_number
     global mom_post_z
     global mom_post_f
     global mom_post_d

     set G43_4_flag 0
     MOM_output_literal "G49"
     MOM_output_literal "G68.2 P1 X[format %.3f $mom_post_arc_center(0)] Y[format %.3f $mom_post_arc_center(1)] Z[format %.3f $mom_post_arc_center(2)] I0.0 J[format %.3f $mom_out_angle_pos(0)] K[format %.3f $mom_out_angle_pos(1)]"
     MOM_output_literal "G53.1"
     MOM_output_literal "#600=\[#\[60000+#3020\]+#58203\]"
     MOM_output_literal "G1 G43 G91 Z\[-#600\] F5.0 H$mom_tool_number"
     MOM_output_literal "G90"
     MOM_output_literal "G1 X0.0 Y0.0 Z[format %.3f $mom_post_z] F[format %.3f $mom_post_f]"
     MOM_output_literal "G31 X[format %.3f [expr 0.5*$mom_post_d]] Y0.0 Z[format %.3f $mom_post_z] F100.0"
     MOM_output_literal "#501=#5161"
     MOM_output_literal "#502=#5162"
     MOM_output_literal "#503=#5163"
     MOM_output_literal "G1 X0.0 Y0.0 Z[format %.3f $mom_post_z] F[format %.3f $mom_post_f]"
     MOM_output_literal "G31 X0.0 Y[format %.3f [expr 0.5*$mom_post_d]] Z[format %.3f $mom_post_z] F100.0"
     MOM_output_literal "#511=#5161"
     MOM_output_literal "#512=#5162"
     MOM_output_literal "#513=#5163"
     MOM_output_literal "G1 X0.0 Y0.0 Z[format %.3f $mom_post_z] F[format %.3f $mom_post_f]"
     MOM_output_literal "G31 X[format %.3f [expr -0.5*$mom_post_d]] Y0.0 Z[format %.3f $mom_post_z] F100.0"
     MOM_output_literal "#521=#5161"
     MOM_output_literal "#522=#5162"
     MOM_output_literal "#523=#5163"
     MOM_output_literal "G1 X0.0 Y0.0 Z[format %.3f $mom_post_z] F[format %.3f $mom_post_f]"
     MOM_output_literal "#1=\[#501-#511\]*\[#501-#511\]+\[#502-#512\]*\[#502-#512\]+\[#503-#513\]*\[#503-#513\]"
     MOM_output_literal "#2=\[#501-#521\]*\[#501-#521\]+\[#502-#522\]*\[#502-#522\]+\[#503-#523\]*\[#503-#523\]"
     MOM_output_literal "#3=\[#511-#521\]*\[#511-#521\]+\[#512-#522\]*\[#512-#522\]+\[#513-#523\]*\[#513-#523\]"
     MOM_output_literal "#4=SQRT\[2.0*#1*#2+2.0*#1*#3+2.0*#3*#2-#1*#1-#2*#2-#3*#3\]"
     MOM_output_literal "#4=2.0*2.978+2.0*SQRT\[#1*#2*#3\]/#4"
     MOM_output_literal "#514=[format %.4f $mom_out_angle_pos(0)]"
     MOM_output_literal "#515=[format %.4f $mom_out_angle_pos(1)]"
     MOM_output_literal "#516=[format %.4f $mom_post_z]"
     MOM_output_literal "#5=#3*\[#1+#2-#3\]"
     MOM_output_literal "#6=#2*\[#1+#3-#2\]"
     MOM_output_literal "#7=#1*\[#2+#3-#1\]"
     MOM_output_literal "#8=#5+#6+#7"
     MOM_output_literal "#517=\[#501*#5 + #511*#6 + #521*#7\]/#8"
     MOM_output_literal "#518=\[#502*#5 + #512*#6 + #522*#7\]/#8"
     MOM_output_literal "#519=\[#503*#5 + #513*#6 + #523*#7\]/#8"
     MOM_output_literal "#520=SQRT\[#517*#517+#518*#518\]"
     MOM_output_literal "DPRNT\[---------------BOSS*BORE*MEAS----------------\]"
     MOM_output_literal "DPRNT\[MEASURED*DIAMETER*FOR*Z=#516\[44\]*=*#4\[44\]\]"
     MOM_output_literal "DPRNT\[ARC\]"
     MOM_output_literal "DPRNT\[POINT***#501\[44\]***#502\[44\]***#503\[44\]\]"
     MOM_output_literal "DPRNT\[POINT***#511\[44\]***#512\[44\]***#513\[44\]\]"
     MOM_output_literal "DPRNT\[POINT***#521\[44\]***#522\[44\]***#523\[44\]\]"
     MOM_output_literal "DPRNT\[XC*#517\[44\]***YC*#518\[44\]\]"
     MOM_output_literal "DPRNT\[CENTER*DEVIATION***#520\[44\]\]"
     MOM_output_literal "DPRNT\[********#600\[44\]***#514\[44\]***#515\[44\]\]"
    }

    205 {
     global mom_post_second_dep
     global mom_post_z
     global mom_post_f
     global mom_post_d

     set mom_post_z $mom_post_second_dep
     MOM_output_literal "G1 X0.0 Y0.0 Z[format %.3f $mom_post_z] F[format %.3f $mom_post_f]"
     MOM_output_literal "G31 X[format %.3f [expr 0.5*$mom_post_d]] Y0.0 Z[format %.3f $mom_post_z] F100.0"
     MOM_output_literal "#501=#5161"
     MOM_output_literal "#502=#5162"
     MOM_output_literal "#503=#5163"
     MOM_output_literal "G1 X0.0 Y0.0 Z[format %.3f $mom_post_z] F[format %.3f $mom_post_f]"
     MOM_output_literal "G31 X0.0 Y[format %.3f [expr 0.5*$mom_post_d]] Z[format %.3f $mom_post_z] F100.0"
     MOM_output_literal "#511=#5161"
     MOM_output_literal "#512=#5162"
     MOM_output_literal "#513=#5163"
     MOM_output_literal "G1 X0.0 Y0.0 Z[format %.3f $mom_post_z] F[format %.3f $mom_post_f]"
     MOM_output_literal "G31 X[format %.3f [expr -0.5*$mom_post_d]] Y0.0 Z[format %.3f $mom_post_z] F100.0"
     MOM_output_literal "#521=#5161"
     MOM_output_literal "#522=#5162"
     MOM_output_literal "#523=#5163"
     MOM_output_literal "G1 X0.0 Y0.0 Z[format %.3f $mom_post_z] F[format %.3f $mom_post_f]"
     MOM_output_literal "#1=\[#501-#511\]*\[#501-#511\]+\[#502-#512\]*\[#502-#512\]+\[#503-#513\]*\[#503-#513\]"
     MOM_output_literal "#2=\[#501-#521\]*\[#501-#521\]+\[#502-#522\]*\[#502-#522\]+\[#503-#523\]*\[#503-#523\]"
     MOM_output_literal "#3=\[#511-#521\]*\[#511-#521\]+\[#512-#522\]*\[#512-#522\]+\[#513-#523\]*\[#513-#523\]"
     MOM_output_literal "#4=SQRT\[2.0*#1*#2+2.0*#1*#3+2.0*#3*#2-#1*#1-#2*#2-#3*#3\]"
     MOM_output_literal "#4=2.0*2.978+2.0*SQRT\[#1*#2*#3\]/#4"
     MOM_output_literal "#516=[format %.4f $mom_post_z]"
     MOM_output_literal "#5=#3*\[#1+#2-#3\]"
     MOM_output_literal "#6=#2*\[#1+#3-#2\]"
     MOM_output_literal "#7=#1*\[#2+#3-#1\]"
     MOM_output_literal "#8=#5+#6+#7"
     MOM_output_literal "#527=\[#501*#5 + #511*#6 + #521*#7\]/#8"
     MOM_output_literal "#528=\[#502*#5 + #512*#6 + #522*#7\]/#8"
     MOM_output_literal "#529=\[#503*#5 + #513*#6 + #523*#7\]/#8"
     MOM_output_literal "#520=SQRT\[#527*#527+#528*#528\]"
     MOM_output_literal "#530=SQRT\[\[#527-#517\]*\[#527-#517\] + \[#528-#518\]*\[#528-#518\] + \[#529-#519\]*\[#529-#519\]\]"
     MOM_output_literal "#531=ACOS\[\[#519 - #529\]/#530\]"
     MOM_output_literal "+++++++++++++++++++++++++++++++++"
     MOM_output_literal "DPRNT\[MEASURED*DIAMETER*FOR*Z=#516\[44\]*=*#4\[44\]\]"
     MOM_output_literal "DPRNT\[ARC\]"
     MOM_output_literal "DPRNT\[POINT***#501\[44\]***#502\[44\]***#503\[44\]\]"
     MOM_output_literal "DPRNT\[POINT***#511\[44\]***#512\[44\]***#513\[44\]\]"
     MOM_output_literal "DPRNT\[POINT***#521\[44\]***#522\[44\]***#523\[44\]\]"
     MOM_output_literal "DPRNT\[XC*#527\[44\]***YC*#528\[44\]\]"
     MOM_output_literal "DPRNT\[CENTER*DEVIATION***#520\[44\]\]"
     MOM_output_literal "DPRNT\[AXIS***DEVIATION***#531\[44\]\]"
     MOM_output_literal "DPRNT\[********#600\[44\]***#514\[44\]***#515\[44\]\]"
     MOM_output_literal "++++++++"
    }

    default {
        puts "Program encountered code $sw"
        break
    }
  }

 return $sw
}

