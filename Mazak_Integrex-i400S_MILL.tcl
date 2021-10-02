########################## TCL Event Handlers ##########################
#
#  Mazak_Integrex-i400S_MILL.tcl -
#
#  Created by Batarev  @  5 декабря 2016 г. 16:23:17 RTZ 2 (Р·РёРјР°)
#  with Post Builder version  6.0.3.
#
########################################################################


  set cam_post_dir [MOM_ask_env_var UGII_CAM_POST_DIR]


  if { ![info exists mom_sys_post_initialized] } {

     source ${cam_post_dir}ugpost_base.tcl
 
 
     set mom_sys_debug_mode OFF
 
 
     if { ![info exists env(PB_SUPPRESS_UGPOST_DEBUG)] } {
        set env(PB_SUPPRESS_UGPOST_DEBUG) 0
     }
 
     if $env(PB_SUPPRESS_UGPOST_DEBUG) {
        set mom_sys_debug_mode OFF
     }
 
     if { ![string compare $mom_sys_debug_mode "OFF"] } {
 
        proc MOM_before_each_add_var {} {}
        proc MOM_before_each_event {} {}
 
     } else {
 
        set cam_debug_dir [MOM_ask_env_var UGII_CAM_DEBUG_DIR]
        source ${cam_debug_dir}mom_review.tcl
     }
 
     MOM_set_debug_mode ON


   ####  Listing File variables 
     set mom_sys_list_output                       "OFF"
     set mom_sys_header_output                     "OFF"
     set mom_sys_list_file_rows                    "40" 
     set mom_sys_list_file_columns                 "30" 
     set mom_sys_warning_output                    "OFF"
     set mom_sys_group_output                      "OFF"
     set mom_sys_list_file_suffix                  "lpt"
     set mom_sys_output_file_suffix                "eia"
     set mom_sys_commentary_output                 "ON" 
     set mom_sys_commentary_list                   "x y z 4axis 5axis feed speed"


   #=============================================================
   proc MOM_before_output { } {
   #=============================================================
   # This command is executed just before every NC block is
   # to be output to a file.
   #
   # - Never overload this command!
   # - Any customization should be done in PB_CMD_before_output!
   #

      if { [llength [info commands PB_CMD_kin_before_output]] } {
         PB_CMD_kin_before_output
      }

   ######### The following procedure invokes the listing file with warnings.

      LIST_FILE
   }



     set mom_sys_control_out                       "("  
     set mom_sys_control_in                        ")"  

     set mom_sys_post_initialized 1
  }


########## SYSTEM VARIABLE DECLARATIONS ##############
  set mom_sys_rapid_code                        "0"  
  set mom_sys_linear_code                       "1"  
  set mom_sys_circle_code(CLW)                  "2"  
  set mom_sys_circle_code(CCLW)                 "3"  
  set mom_sys_delay_code(SECONDS)               "4"  
  set mom_sys_delay_code(REVOLUTIONS)           "4"  
  set mom_sys_cutcom_plane_code(XY)             "17" 
  set mom_sys_cutcom_plane_code(ZX)             "18" 
  set mom_sys_cutcom_plane_code(XZ)             "18" 
  set mom_sys_cutcom_plane_code(YZ)             "19" 
  set mom_sys_cutcom_plane_code(ZY)             "19" 
  set mom_sys_cutcom_code(OFF)                  "40" 
  set mom_sys_cutcom_code(LEFT)                 "41" 
  set mom_sys_cutcom_code(RIGHT)                "42" 
  set mom_sys_adjust_code                       "43" 
  set mom_sys_adjust_code_minus                 "44" 
  set mom_sys_adjust_cancel_code                "49" 
  set mom_sys_unit_code(IN)                     "70" 
  set mom_sys_unit_code(MM)                     "71" 
  set mom_sys_cycle_start_code                  "79" 
  set mom_sys_cycle_off                         "80" 
  set mom_sys_cycle_drill_code                  "82" 
  set mom_sys_cycle_drill_dwell_code            "82" 
  set mom_sys_cycle_drill_deep_code             "83" 
  set mom_sys_cycle_drill_break_chip_code       "73" 
  set mom_sys_cycle_tap_code                    "84" 
  set mom_sys_cycle_bore_code                   "85" 
  set mom_sys_cycle_bore_drag_code              "85" 
  set mom_sys_cycle_bore_no_drag_code           "75" 
  set mom_sys_cycle_bore_dwell_code             "85" 
  set mom_sys_cycle_bore_manual_code            "85" 
  set mom_sys_cycle_bore_back_code              "87" 
  set mom_sys_cycle_bore_manual_dwell_code      "85" 
  set mom_sys_output_code(ABSOLUTE)             "90" 
  set mom_sys_output_code(INCREMENTAL)          "91" 
  set mom_sys_cycle_ret_code(AUTO)              "98" 
  set mom_sys_cycle_ret_code(MANUAL)            "99" 
  set mom_sys_reset_code                        "92" 
  set mom_sys_feed_rate_mode_code(IPM)          "98" 
  set mom_sys_feed_rate_mode_code(IPR)          "95" 
  set mom_sys_feed_rate_mode_code(FRN)          "93" 
  set mom_sys_spindle_mode_code(SFM)            "96" 
  set mom_sys_spindle_mode_code(RPM)            "97" 
  set mom_sys_return_code                       "28" 
  set mom_sys_feed_rate_mode_code(MMPM)         "94" 
  set mom_sys_feed_rate_mode_code(MMPR)         "95" 
  set mom_sys_feed_rate_mode_code(DPM)          "94" 
  set mom_sys_program_stop_code                 "0"  
  set mom_sys_optional_stop_code                "1"  
  set mom_sys_end_of_program_code               "2"  
  set mom_sys_spindle_direction_code(CLW)       "3"  
  set mom_sys_spindle_direction_code(CCLW)      "4"  
  set mom_sys_spindle_direction_code(OFF)       "5"  
  set mom_sys_tool_change_code                  "6"  
  set mom_sys_coolant_code(ON)                  "8"  
  set mom_sys_coolant_code(FLOOD)               "8"  
  set mom_sys_coolant_code(MIST)                "7"  
  set mom_sys_coolant_code(THRU)                "26" 
  set mom_sys_coolant_code(TAP)                 "8"  
  set mom_sys_coolant_code(OFF)                 "9"  
  set mom_sys_rewind_code                       "30" 
  set mom_sys_4th_axis_has_limits               "1"  
  set mom_sys_5th_axis_has_limits               "1"  
  set mom_sys_sim_cycle_drill                   "0"  
  set mom_sys_sim_cycle_drill_dwell             "0"  
  set mom_sys_sim_cycle_drill_deep              "0"  
  set mom_sys_sim_cycle_drill_break_chip        "0"  
  set mom_sys_sim_cycle_tap                     "1"  
  set mom_sys_sim_cycle_bore                    "1"  
  set mom_sys_sim_cycle_bore_drag               "1"  
  set mom_sys_sim_cycle_bore_nodrag             "1"  
  set mom_sys_sim_cycle_bore_manual             "1"  
  set mom_sys_sim_cycle_bore_dwell              "1"  
  set mom_sys_sim_cycle_bore_manual_dwell       "1"  
  set mom_sys_sim_cycle_bore_back               "1"  
  set mom_sys_cir_vector                        "Vector - Arc Start to Center"
  set mom_sys_spindle_ranges                    "0"  
  set mom_sys_rewind_stop_code                  "\#" 
  set mom_sys_home_pos(0)                       "0"  
  set mom_sys_home_pos(1)                       "0"  
  set mom_sys_home_pos(2)                       "0"  
  set mom_sys_zero                              "0"  
  set mom_sys_opskip_block_leader               "/"  
  set mom_sys_seqnum_start                      "1"  
  set mom_sys_seqnum_incr                       "1"  
  set mom_sys_seqnum_freq                       "1"  
  set mom_sys_seqnum_max                        "99999"
  set mom_sys_lathe_x_double                    "1"  
  set mom_sys_lathe_i_double                    "1"  
  set mom_sys_lathe_y_double                    "1"  
  set mom_sys_lathe_j_double                    "1"  
  set mom_sys_lathe_x_factor                    "1"  
  set mom_sys_lathe_y_factor                    "1"  
  set mom_sys_lathe_z_factor                    "1"  
  set mom_sys_lathe_i_factor                    "1"  
  set mom_sys_lathe_j_factor                    "1"  
  set mom_sys_lathe_k_factor                    "1"  
  set mom_sys_leader(N)                         "N"  
  set mom_sys_leader(X)                         "X"  
  set mom_sys_leader(Y)                         "Y"  
  set mom_sys_leader(Z)                         "Z"  
  set mom_sys_leader(fourth_axis)               "B"  
  set mom_sys_leader(fifth_axis)                "C"  
  set mom_sys_contour_feed_mode(LINEAR)         "MMPM"
  set mom_sys_rapid_feed_mode(LINEAR)           "MMPM"
  set mom_sys_cycle_feed_mode                   "Auto"
  set mom_sys_feed_param(IPM,format)            "Feed_IPM"
  set mom_sys_feed_param(IPR,format)            "Feed_IPR"
  set mom_sys_feed_param(FRN,format)            "Feed_INV"
  set mom_sys_vnc_rapid_dogleg                  "1"  
  set mom_sys_prev_mach_head                    ""   
  set mom_sys_curr_mach_head                    ""   
  set mom_sys_contour_feed_mode(ROTARY)         "MMPM"
  set mom_sys_contour_feed_mode(LINEAR_ROTARY)  "MMPM"
  set mom_sys_feed_param(DPM,format)            "Feed_DPM"
  set mom_sys_rapid_feed_mode(ROTARY)           "MMPM"
  set mom_sys_rapid_feed_mode(LINEAR_ROTARY)    "MMPM"
  set mom_sys_feed_param(MMPM,format)           "Feed_MMPM"
  set mom_sys_feed_param(MMPR,format)           "Feed_MMPR"
  set mom_sys_retract_distance                  "10" 
  set mom_sys_post_description                  "This is a 5-Axis Milling Machine With\n\
                                                  Dual Rotary Tables."
  set mom_sys_ugpadvkins_used                   "0"
  set mom_sys_post_builder_version              "6.0.3"

####### KINEMATIC VARIABLE DECLARATIONS ##############
  set mom_kin_4th_axis_ang_offset               "0.0"
  set mom_kin_4th_axis_center_offset(0)         "0.0"
  set mom_kin_4th_axis_center_offset(1)         "0.0"
  set mom_kin_4th_axis_center_offset(2)         "0"  
  set mom_kin_4th_axis_direction                "MAGNITUDE_DETERMINES_DIRECTION"
  set mom_kin_4th_axis_incr_switch              "OFF"
  set mom_kin_4th_axis_leader                   "B"  
  set mom_kin_4th_axis_limit_action             "Warning"
  set mom_kin_4th_axis_max_limit                "210"
  set mom_kin_4th_axis_min_incr                 "0.001"
  set mom_kin_4th_axis_min_limit                "0"  
  set mom_kin_4th_axis_plane                    "ZX" 
  set mom_kin_4th_axis_point(0)                 "0.0"
  set mom_kin_4th_axis_point(1)                 "0.0"
  set mom_kin_4th_axis_point(2)                 "0.0"
  set mom_kin_4th_axis_rotation                 "standard"
  set mom_kin_4th_axis_type                     "Table"
  set mom_kin_4th_axis_vector(0)                "0"  
  set mom_kin_4th_axis_vector(1)                "1"  
  set mom_kin_4th_axis_vector(2)                "0"  
  set mom_kin_4th_axis_zero                     "0.0"
  set mom_kin_5th_axis_ang_offset               "0.0"
  set mom_kin_5th_axis_center_offset(0)         "0.0"
  set mom_kin_5th_axis_center_offset(1)         "0.0"
  set mom_kin_5th_axis_center_offset(2)         "0.0"
  set mom_kin_5th_axis_direction                "MAGNITUDE_DETERMINES_DIRECTION"
  set mom_kin_5th_axis_incr_switch              "OFF"
  set mom_kin_5th_axis_leader                   "C"  
  set mom_kin_5th_axis_limit_action             "Warning"
  set mom_kin_5th_axis_max_limit                "360"
  set mom_kin_5th_axis_min_incr                 "0.001"
  set mom_kin_5th_axis_min_limit                "0"  
  set mom_kin_5th_axis_plane                    "XY" 
  set mom_kin_5th_axis_point(0)                 "0.0"
  set mom_kin_5th_axis_point(1)                 "0.0"
  set mom_kin_5th_axis_point(2)                 "0.0"
  set mom_kin_5th_axis_rotation                 "standard"
  set mom_kin_5th_axis_type                     "Table"
  set mom_kin_5th_axis_vector(0)                "0"  
  set mom_kin_5th_axis_vector(1)                "0"  
  set mom_kin_5th_axis_vector(2)                "1"  
  set mom_kin_5th_axis_zero                     "0.0"
  set mom_kin_arc_output_mode                   "QUADRANT"
  set mom_kin_arc_valid_plane                   "XYZ"
  set mom_kin_clamp_time                        "2.0"
  set mom_kin_flush_time                        "2.0"
  set mom_kin_linearization_flag                "1"  
  set mom_kin_linearization_tol                 "0.01"
  set mom_kin_machine_resolution                "0.001"
  set mom_kin_machine_type                      "5_axis_dual_table"
  set mom_kin_machine_zero_offset(0)            "0.0"
  set mom_kin_machine_zero_offset(1)            "0.0"
  set mom_kin_machine_zero_offset(2)            "0.0"
  set mom_kin_max_arc_radius                    "99999.999"
  set mom_kin_max_dpm                           "100"
  set mom_kin_max_fpm                           "15000"
  set mom_kin_max_fpr                           "20" 
  set mom_kin_max_frn                           "1000"
  set mom_kin_min_arc_length                    "0.01"
  set mom_kin_min_arc_radius                    "0.002"
  set mom_kin_min_dpm                           "0.0"
  set mom_kin_min_fpm                           "0.1"
  set mom_kin_min_fpr                           "0.001"
  set mom_kin_min_frn                           "0.01"
  set mom_kin_output_unit                       "MM" 
  set mom_kin_pivot_gauge_offset                "0"  
  set mom_kin_pivot_guage_offset                ""   
  set mom_kin_post_data_unit                    "MM" 
  set mom_kin_rapid_feed_rate                   "10000"
  set mom_kin_retract_distance                  "500"
  set mom_kin_rotary_axis_method                "PREVIOUS"
  set mom_kin_spindle_axis(0)                   "0.0"
  set mom_kin_spindle_axis(1)                   "0.0"
  set mom_kin_spindle_axis(2)                   "1.0"
  set mom_kin_tool_change_time                  "0.0"
  set mom_kin_x_axis_limit                      "1000"
  set mom_kin_y_axis_limit                      "1000"
  set mom_kin_z_axis_limit                      "1000"




if [llength [info commands MOM_SYS_do_template] ] {
   if [llength [info commands MOM_do_template] ] {
      rename MOM_do_template ""
   }
   rename MOM_SYS_do_template MOM_do_template
}




#=============================================================
proc MOM_start_of_program { } {
#=============================================================
  global mom_logname mom_date is_from
  global mom_coolant_status mom_cutcom_status
  global mom_clamp_status mom_cycle_status
  global mom_spindle_status mom_cutcom_plane pb_start_of_program_flag
  global mom_cutcom_adjust_register mom_tool_adjust_register
  global mom_tool_length_adjust_register mom_length_comp_register
  global mom_flush_register mom_wire_cutcom_adjust_register
  global mom_wire_cutcom_status

    set pb_start_of_program_flag 0
    set mom_coolant_status UNDEFINED
    set mom_cutcom_status  UNDEFINED
    set mom_clamp_status   UNDEFINED
    set mom_cycle_status   UNDEFINED
    set mom_spindle_status UNDEFINED
    set mom_cutcom_plane   UNDEFINED
    set mom_wire_cutcom_status  UNDEFINED

    catch {unset mom_cutcom_adjust_register}
    catch {unset mom_tool_adjust_register}
    catch {unset mom_tool_length_adjust_register}
    catch {unset mom_length_comp_register}
    catch {unset mom_flush_register}
    catch {unset mom_wire_cutcom_adjust_register}

    set is_from ""

    catch { OPEN_files } ; #open warning and listing files
    LIST_FILE_HEADER ; #list header in commentary listing



  global mom_sys_post_initialized
  if { $mom_sys_post_initialized > 1 } { return }


#************
uplevel #0 {


#=============================================================
proc MOM_sync { } {
#=============================================================
  if [llength [info commands PB_CMD_kin_handle_sync_event] ] {
    PB_CMD_kin_handle_sync_event
  }
}


#=============================================================
proc MOM_set_csys { } {
#=============================================================
  if [llength [info commands PB_CMD_kin_set_csys] ] {
    PB_CMD_kin_set_csys
  }
}


#=============================================================
proc MOM_msys { } {
#=============================================================
}


#=============================================================
proc MOM_end_of_program { } {
#=============================================================
   PB_CMD_for_prefun_in_end
   PB_CMD_g53z0
   MOM_do_template end_of_program_1
   PB_CMD_set_mode_end

#**** The following procedure lists the tool list with time in commentary data
   LIST_FILE_TRAILER

#**** The following procedure closes the warning and listing files
   CLOSE_files
}


  incr mom_sys_post_initialized


} ;# uplevel
#***********


}


#=============================================================
proc PB_init_new_iks { } {
#=============================================================
  global mom_kin_iks_usage mom_kin_spindle_axis
  global mom_kin_4th_axis_vector mom_kin_5th_axis_vector


   set mom_kin_iks_usage 1

  # Override spindle axis vector defined in PB_CMD_init_rotary
   set mom_kin_spindle_axis(0)  0.0
   set mom_kin_spindle_axis(1)  0.0
   set mom_kin_spindle_axis(2)  1.0

  # Unitize vectors
   foreach i { 0 1 2 } {
      set vec($i) $mom_kin_spindle_axis($i)
   }
   VEC3_unitize vec mom_kin_spindle_axis

   foreach i { 0 1 2 } {
      set vec($i) $mom_kin_4th_axis_vector($i)
   }
   VEC3_unitize vec mom_kin_4th_axis_vector

   foreach i { 0 1 2 } {
      set vec($i) $mom_kin_5th_axis_vector($i)
   }
   VEC3_unitize vec mom_kin_5th_axis_vector

  # Reload kinematics
   MOM_reload_kinematics
}


#=============================================================
proc PB_DELAY_TIME_SET { } {
#=============================================================
  global mom_sys_delay_param mom_delay_value
  global mom_delay_revs mom_delay_mode delay_time

   # post builder provided format for the current mode:
    if {[info exists mom_sys_delay_param(${mom_delay_mode},format)] != 0} {
      MOM_set_address_format dwell $mom_sys_delay_param(${mom_delay_mode},format)
    }

    switch $mom_delay_mode {
      SECONDS {set delay_time $mom_delay_value}
      default {set delay_time $mom_delay_revs}
    }
}


#=============================================================
proc MOM_before_motion { } {
#=============================================================
  global mom_motion_event mom_motion_type

    FEEDRATE_SET


    switch $mom_motion_type {
      ENGAGE   {PB_engage_move}
      APPROACH {PB_approach_move}
      FIRSTCUT {PB_first_cut}
      RETRACT  {PB_retract_move}
      RETURN   {PB_return_move}
    }

    if [llength [info commands PB_CMD_kin_before_motion] ] { PB_CMD_kin_before_motion }
    if [llength [info commands PB_CMD_before_motion] ]     { PB_CMD_before_motion }
}


#=============================================================
proc MOM_start_of_group {} {
#=============================================================
  global mom_sys_group_output mom_group_name group_level ptp_file_name
  global mom_sequence_number mom_sequence_increment mom_sequence_frequency
  global mom_sys_ptp_output pb_start_of_program_flag

    if {![hiset group_level]} {set group_level 0 ; return}

    if {[hiset mom_sys_group_output]} {if { ![string compare $mom_sys_group_output "OFF"] } {set group_level 0 ; return}}

    if {[hiset group_level]} {incr group_level} else {set group_level 1}
    if {$group_level > 1} {return}

    SEQNO_RESET ; #<4133654>
    MOM_reset_sequence $mom_sequence_number $mom_sequence_increment $mom_sequence_frequency

    if {[info exists ptp_file_name]} {
      MOM_close_output_file $ptp_file_name ; MOM_start_of_program
      if { ![string compare $mom_sys_ptp_output "ON"] } {MOM_open_output_file $ptp_file_name }
    } else {
      MOM_start_of_program
    }

    PB_start_of_program ; set pb_start_of_program_flag 1
}


#=============================================================
proc MOM_machine_mode {} {
#=============================================================
  global pb_start_of_program_flag
  global mom_operation_name mom_sys_change_mach_operation_name

   set mom_sys_change_mach_operation_name $mom_operation_name

    if {$pb_start_of_program_flag == 0} {PB_start_of_program ; set pb_start_of_program_flag 1}

    if [llength [info commands PB_machine_mode] ] {
       if [catch {PB_machine_mode} res] {
          global mom_warning_info
          set mom_warning_info "$res"
          MOM_catch_warning
       }
    }
}


#=============================================================
proc PB_FORCE { option args } {
#=============================================================
   set adds [join $args]
   if { [info exists option] && [llength $adds] } {
      lappend cmd MOM_force
      lappend cmd $option
      lappend cmd [join $adds]
      eval [join $cmd]
   }
}


#=============================================================
proc PB_SET_RAPID_MOD { mod_list blk_list ADDR NEW_MOD_LIST } {
#=============================================================
  upvar $ADDR addr
  upvar $NEW_MOD_LIST new_mod_list
  global mom_cycle_spindle_axis traverse_axis1 traverse_axis2


   set new_mod_list [list]

   foreach mod $mod_list {
      switch $mod {
         "rapid1" {
            set elem $addr($traverse_axis1)
            if { [lsearch $blk_list $elem] >= 0 } {
               lappend new_mod_list $elem
            }
         }
         "rapid2" {
            set elem $addr($traverse_axis2)
            if { [lsearch $blk_list $elem] >= 0 } {
               lappend new_mod_list $elem
            }
         }
         "rapid3" {
            set elem $addr($mom_cycle_spindle_axis)
            if { [lsearch $blk_list $elem] >= 0 } {
               lappend new_mod_list $elem
            }
         }
         default {
            set elem $mod
            if { [lsearch $blk_list $elem] >= 0 } {
               lappend new_mod_list $elem
            }
         }
      }
   }
}


########################
# Redefine FEEDRATE_SET
########################
if [llength [info commands ugpost_FEEDRATE_SET] ] {
   rename ugpost_FEEDRATE_SET ""
}

if [llength [info commands FEEDRATE_SET] ] {
   rename FEEDRATE_SET ugpost_FEEDRATE_SET
} else {
   proc ugpost_FEEDRATE_SET {} {}
}


#=============================================================
proc FEEDRATE_SET { } {
#=============================================================
   if [llength [info commands PB_CMD_kin_feedrate_set] ] {
      PB_CMD_kin_feedrate_set
   } else {
      ugpost_FEEDRATE_SET
   }
}


############## EVENT HANDLING SECTION ################


#=============================================================
proc MOM_auxfun { } {
#=============================================================
   MOM_do_template auxfun
}


#=============================================================
proc MOM_bore { } {
#=============================================================
  global cycle_name
  global cycle_init_flag

   set cycle_init_flag TRUE
   set cycle_name BORE
   CYCLE_SET
}


#=============================================================
proc MOM_bore_move { } {
#=============================================================
   global cycle_init_flag


   global mom_sys_abort_next_event
   if { [info exists mom_sys_abort_next_event] } {
      if { [llength [info commands PB_CMD_kin_abort_event]] } {
         PB_CMD_kin_abort_event
      }
   }


   PB_CMD_cycle_init
   PB_CMD_init_cycles2
   PB_CMD_G49_zapret
   PB_CMD_BORING_WARNING
   PB_CMD_coolant_init
   PB_CMD_CYCLE_UNCLAMP
   MOM_do_template cycle_bore
   PB_CMD_test_5axis_for_cycles
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_bore_back { } {
#=============================================================
  global cycle_name
  global cycle_init_flag

   set cycle_init_flag TRUE
   set cycle_name BORE_BACK
   CYCLE_SET
}


#=============================================================
proc MOM_bore_back_move { } {
#=============================================================
   global cycle_init_flag


   global mom_sys_abort_next_event
   if { [info exists mom_sys_abort_next_event] } {
      if { [llength [info commands PB_CMD_kin_abort_event]] } {
         PB_CMD_kin_abort_event
      }
   }


   PB_CMD_cycle_init
   PB_CMD_init_cycles2
   PB_CMD_G49_zapret
   PB_CMD_BORING_WARNING
   PB_CMD_coolant_init
   PB_CMD_CYCLE_UNCLAMP
   MOM_do_template cycle_bore_back
   PB_CMD_test_5axis_for_cycles
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_bore_drag { } {
#=============================================================
  global cycle_name
  global cycle_init_flag

   set cycle_init_flag TRUE
   set cycle_name BORE_DRAG
   CYCLE_SET
}


#=============================================================
proc MOM_bore_drag_move { } {
#=============================================================
   global cycle_init_flag


   global mom_sys_abort_next_event
   if { [info exists mom_sys_abort_next_event] } {
      if { [llength [info commands PB_CMD_kin_abort_event]] } {
         PB_CMD_kin_abort_event
      }
   }


   PB_CMD_cycle_init
   PB_CMD_init_cycles2
   PB_CMD_G49_zapret
   PB_CMD_BORING_WARNING
   PB_CMD_coolant_init
   PB_CMD_CYCLE_UNCLAMP
   MOM_do_template cycle_bore_drag
   PB_CMD_test_5axis_for_cycles
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_bore_dwell { } {
#=============================================================
  global cycle_name
  global cycle_init_flag

   set cycle_init_flag TRUE
   set cycle_name BORE_DWELL
   CYCLE_SET
}


#=============================================================
proc MOM_bore_dwell_move { } {
#=============================================================
   global cycle_init_flag


   global mom_sys_abort_next_event
   if { [info exists mom_sys_abort_next_event] } {
      if { [llength [info commands PB_CMD_kin_abort_event]] } {
         PB_CMD_kin_abort_event
      }
   }


   PB_CMD_cycle_init
   PB_CMD_init_cycles2
   PB_CMD_G49_zapret
   PB_CMD_BORING_WARNING
   PB_CMD_coolant_init
   PB_CMD_CYCLE_UNCLAMP
   MOM_do_template cycle_bore_dwell
   PB_CMD_test_5axis_for_cycles
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_bore_manual { } {
#=============================================================
  global cycle_name
  global cycle_init_flag

   set cycle_init_flag TRUE
   set cycle_name BORE_MANUAL
   CYCLE_SET
}


#=============================================================
proc MOM_bore_manual_move { } {
#=============================================================
   global cycle_init_flag


   global mom_sys_abort_next_event
   if { [info exists mom_sys_abort_next_event] } {
      if { [llength [info commands PB_CMD_kin_abort_event]] } {
         PB_CMD_kin_abort_event
      }
   }


   PB_CMD_cycle_init
   PB_CMD_init_cycles2
   PB_CMD_G49_zapret
   PB_CMD_BORING_WARNING
   PB_CMD_coolant_init
   PB_CMD_CYCLE_UNCLAMP
   MOM_do_template cycle_bore_manual
   PB_CMD_test_5axis_for_cycles
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_bore_manual_dwell { } {
#=============================================================
  global cycle_name
  global cycle_init_flag

   set cycle_init_flag TRUE
   set cycle_name BORE_MANUAL_DWELL
   CYCLE_SET
}


#=============================================================
proc MOM_bore_manual_dwell_move { } {
#=============================================================
   global cycle_init_flag


   global mom_sys_abort_next_event
   if { [info exists mom_sys_abort_next_event] } {
      if { [llength [info commands PB_CMD_kin_abort_event]] } {
         PB_CMD_kin_abort_event
      }
   }


   PB_CMD_cycle_init
   PB_CMD_init_cycles2
   PB_CMD_G49_zapret
   PB_CMD_BORING_WARNING
   PB_CMD_coolant_init
   PB_CMD_CYCLE_UNCLAMP
   MOM_do_template cycle_bore_manual_dwell
   PB_CMD_test_5axis_for_cycles
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_bore_no_drag { } {
#=============================================================
  global cycle_name
  global cycle_init_flag

   set cycle_init_flag TRUE
   set cycle_name BORE_NO_DRAG
   CYCLE_SET
}


#=============================================================
proc MOM_bore_no_drag_move { } {
#=============================================================
   global cycle_init_flag


   global mom_sys_abort_next_event
   if { [info exists mom_sys_abort_next_event] } {
      if { [llength [info commands PB_CMD_kin_abort_event]] } {
         PB_CMD_kin_abort_event
      }
   }


   PB_CMD_cycle_init
   PB_CMD_init_cycles2
   PB_CMD_G49_zapret
   PB_CMD_BORING_WARNING
   PB_CMD_coolant_init
   PB_CMD_CYCLE_UNCLAMP
   MOM_do_template cycle_bore_no_drag
   PB_CMD_test_5axis_for_cycles
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_circular_move { } {
#=============================================================

   global mom_sys_abort_next_event
   if { [info exists mom_sys_abort_next_event] } {
      if { [llength [info commands PB_CMD_kin_abort_event]] } {
         PB_CMD_kin_abort_event
      }
   }


   CIRCLE_SET
   PB_CMD_no_move_flag
   PB_CMD_arc_select
   PB_CMD_test_empty_G2
   PB_CMD_G43_4_recalc
   MOM_force Once G_plane G_motion I J
   MOM_do_template circular_move
   PB_CMD_motion_circ
   PB_CMD_previous_coords
}


#=============================================================
proc MOM_coolant_off { } {
#=============================================================
   COOLANT_SET
   MOM_force Once M_coolant
   MOM_do_template coolant_off
}


#=============================================================
proc MOM_coolant_on { } {
#=============================================================
   COOLANT_SET
   MOM_do_template coolant_on
}


#=============================================================
proc MOM_cutcom_off { } {
#=============================================================
   CUTCOM_SET
}


#=============================================================
proc MOM_cutcom_on { } {
#=============================================================
   CUTCOM_SET

   global mom_cutcom_adjust_register
   set cutcom_register_min 1
   set cutcom_register_max 99
   if { [info exists mom_cutcom_adjust_register] } {
      if { $mom_cutcom_adjust_register < $cutcom_register_min ||\
           $mom_cutcom_adjust_register > $cutcom_register_max } {
         global mom_warning_info
         set mom_warning_info "CUTCOM register $mom_cutcom_adjust_register must be within the range between 1 and 99"
         MOM_catch_warning
      }
   }
}


#=============================================================
proc MOM_cycle_off { } {
#=============================================================
   MOM_do_template cycle_off
}


#=============================================================
proc MOM_cycle_plane_change { } {
#=============================================================
  global cycle_init_flag

   set cycle_init_flag TRUE
}


#=============================================================
proc MOM_delay { } {
#=============================================================
   PB_DELAY_TIME_SET
   MOM_force Once G dwell
   MOM_do_template delay
}


#=============================================================
proc MOM_drill { } {
#=============================================================
  global cycle_name
  global cycle_init_flag

   set cycle_init_flag TRUE
   set cycle_name DRILL
   CYCLE_SET
}


#=============================================================
proc MOM_drill_move { } {
#=============================================================
   global cycle_init_flag


   global mom_sys_abort_next_event
   if { [info exists mom_sys_abort_next_event] } {
      if { [llength [info commands PB_CMD_kin_abort_event]] } {
         PB_CMD_kin_abort_event
      }
   }


   PB_CMD_cycle_init
   PB_CMD_init_cycles2
   PB_CMD_G49_zapret
   PB_CMD_coolant_init
   PB_CMD_CYCLE_UNCLAMP
   MOM_do_template cycle_drill
   PB_CMD_test_5axis_for_cycles
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_drill_break_chip { } {
#=============================================================
  global cycle_name
  global cycle_init_flag

   set cycle_init_flag TRUE
   set cycle_name DRILL_BREAK_CHIP
   CYCLE_SET
}


#=============================================================
proc MOM_drill_break_chip_move { } {
#=============================================================
   global cycle_init_flag


   global mom_sys_abort_next_event
   if { [info exists mom_sys_abort_next_event] } {
      if { [llength [info commands PB_CMD_kin_abort_event]] } {
         PB_CMD_kin_abort_event
      }
   }


   PB_CMD_cycle_init
   PB_CMD_init_cycles2
   PB_CMD_G49_zapret
   PB_CMD_coolant_init
   PB_CMD_CYCLE_UNCLAMP
   MOM_force Once cycle_step
   MOM_do_template cycle_drill_break_chip
   PB_CMD_test_5axis_for_cycles
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_drill_deep { } {
#=============================================================
  global cycle_name
  global cycle_init_flag

   set cycle_init_flag TRUE
   set cycle_name DRILL_DEEP
   CYCLE_SET
}


#=============================================================
proc MOM_drill_deep_move { } {
#=============================================================
   global cycle_init_flag


   global mom_sys_abort_next_event
   if { [info exists mom_sys_abort_next_event] } {
      if { [llength [info commands PB_CMD_kin_abort_event]] } {
         PB_CMD_kin_abort_event
      }
   }


   PB_CMD_cycle_init
   PB_CMD_init_cycles2
   PB_CMD_G49_zapret
   PB_CMD_coolant_init
   PB_CMD_CYCLE_UNCLAMP
   MOM_force Once cycle_step
   MOM_do_template cycle_drill_deep
   PB_CMD_test_5axis_for_cycles
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_drill_dwell { } {
#=============================================================
  global cycle_name
  global cycle_init_flag

   set cycle_init_flag TRUE
   set cycle_name DRILL_DWELL
   CYCLE_SET
}


#=============================================================
proc MOM_drill_dwell_move { } {
#=============================================================
   global cycle_init_flag


   global mom_sys_abort_next_event
   if { [info exists mom_sys_abort_next_event] } {
      if { [llength [info commands PB_CMD_kin_abort_event]] } {
         PB_CMD_kin_abort_event
      }
   }


   PB_CMD_cycle_init
   PB_CMD_init_cycles2
   PB_CMD_G49_zapret
   PB_CMD_coolant_init
   PB_CMD_CYCLE_UNCLAMP
   MOM_do_template cycle_drill_dwell
   PB_CMD_test_5axis_for_cycles
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_end_of_path { } {
#=============================================================

   if [llength [info commands PB_CMD_kin_end_of_path] ] {
      PB_CMD_kin_end_of_path
   }

   PB_CMD_G69
   PB_CMD_G49
   PB_CMD_Sbros_5axis_flag2
   PB_CMD_unsets
   PB_CMD_Rotate_emulation
   PB_CMD_lock_off
   PB_CMD_M950
   PB_CMD_INITS_goto_right
   PB_CMD_init_perehvat
   global mom_sys_in_operation
   set mom_sys_in_operation 0
}


#=============================================================
proc MOM_first_move { } {
#=============================================================
  global mom_feed_rate mom_feed_rate_per_rev mom_motion_type
  global mom_kin_max_fpm mom_motion_event
   COOLANT_SET ; CUTCOM_SET ; SPINDLE_SET ; RAPID_SET
   catch {MOM_$mom_motion_event}
}


#=============================================================
proc MOM_first_tool { } {
#=============================================================
  global mom_tool_change_type mom_manual_tool_change
  global mom_sys_first_tool_handled

  # First tool only gets handled once
   if { [info exists mom_sys_first_tool_handled] } {
      MOM_tool_change
      return
   }

   set mom_sys_first_tool_handled 1

   if { [info exists mom_tool_change_type] } {
      switch $mom_tool_change_type {
         MANUAL { PB_manual_tool_change }
         AUTO   { PB_auto_tool_change }
      }
   } elseif { [info exists mom_manual_tool_change] } {
      if { ![string compare $mom_manual_tool_change "TRUE"] } {
         PB_manual_tool_change
      }
   }
}


#=============================================================
proc MOM_from_move { } {
#=============================================================
  global mom_feed_rate mom_feed_rate_per_rev  mom_motion_type mom_kin_max_fpm
   COOLANT_SET ; CUTCOM_SET ; SPINDLE_SET ; RAPID_SET
   PB_CMD_From_motion
   PB_CMD_From_flag
}


#=============================================================
proc MOM_gohome_move { } {
#=============================================================
   MOM_force Once G_motion Z
   MOM_do_template gohome_move
   MOM_force Once G_motion X Y
   MOM_do_template gohome_move_1
}


#=============================================================
proc MOM_initial_move { } {
#=============================================================
  global mom_feed_rate mom_feed_rate_per_rev mom_motion_type
  global mom_kin_max_fpm mom_motion_event
   COOLANT_SET ; CUTCOM_SET ; SPINDLE_SET ; RAPID_SET

  global mom_programmed_feed_rate
   if { [EQ_is_equal $mom_programmed_feed_rate 0] } {
      MOM_rapid_move
   } else {
      MOM_linear_move
   }
}


#=============================================================
proc MOM_length_compensation { } {
#=============================================================
   TOOL_SET MOM_length_compensation
}


#=============================================================
proc MOM_linear_move { } {
#=============================================================
  global feed_mode mom_feed_rate mom_kin_rapid_feed_rate

   if { ![string compare $feed_mode "IPM"] || ![string compare $feed_mode "MMPM"] } {
      if { [EQ_is_ge $mom_feed_rate $mom_kin_rapid_feed_rate] } {
         MOM_rapid_move
         return
      }
   }


   global mom_sys_abort_next_event
   if { [info exists mom_sys_abort_next_event] } {
      if { [llength [info commands PB_CMD_kin_abort_event]] } {
         PB_CMD_kin_abort_event
      }
   }


   global first_linear_move

   if { !$first_linear_move } {
      PB_first_linear_move
      incr first_linear_move
   }

   PB_CMD_no_move_flag
   PB_CMD_G05_inizialisaciya
   PB_CMD_G49_zapret
   PB_CMD_test_empty_G1
   PB_CMD_G43_4_recalc
   MOM_do_template linear_move_1
   PB_CMD_tool_type_marker
   PB_CMD_coolant_init
   MOM_do_template linear_move
   PB_CMD_test_5axis
   PB_CMD_5axis_flag
   PB_CMD_motion_lin
   PB_CMD_previous_coords
}


#=============================================================
proc MOM_load_tool { } {
#=============================================================
  global mom_tool_change_type mom_manual_tool_change
}


#=============================================================
proc MOM_opstop { } {
#=============================================================
   MOM_do_template opstop
}


#=============================================================
proc MOM_prefun { } {
#=============================================================
   PB_CMD_various_prefun_numbers
}


#=============================================================
proc MOM_rapid_move { } {
#=============================================================
  global rapid_spindle_inhibit rapid_traverse_inhibit
  global spindle_first is_from
  global mom_cycle_spindle_axis traverse_axis1 traverse_axis2
  global mom_motion_event


   global mom_sys_abort_next_event
   if { [info exists mom_sys_abort_next_event] } {
      if { [llength [info commands PB_CMD_kin_abort_event]] } {
         PB_CMD_kin_abort_event
      }
   }


   set aa(0) X ; set aa(1) Y ; set aa(2) Z
   RAPID_SET
   PB_CMD_no_move_flag
   PB_CMD_Hcode_event_and_G54
   PB_CMD_G49_zapret
   MOM_do_template rapid_move
   PB_CMD_tool_type_marker
   PB_CMD_G43_4_recalc
   set rapid_traverse_blk {G_cutcom G_adjust_43_4 G_motion G_mode X Y Z fourth_axis fifth_axis H}
   set rapid_traverse_mod {}
   PB_SET_RAPID_MOD $rapid_traverse_mod $rapid_traverse_blk aa mod_traverse
   PB_FORCE Once $mod_traverse
   MOM_do_template rapid_traverse
   PB_CMD_test_5axis_alt
   PB_CMD_motion_lin
   PB_CMD_previous_coords
}


#=============================================================
proc MOM_sequence_number { } {
#=============================================================
   SEQNO_SET
}


#=============================================================
proc MOM_set_modes { } {
#=============================================================
   MODES_SET
}


#=============================================================
proc MOM_spindle_off { } {
#=============================================================
   MOM_do_template spindle_off
}


#=============================================================
proc MOM_spindle_rpm { } {
#=============================================================
   SPINDLE_SET
   MOM_force Once S M_spindle
   MOM_do_template spindle_rpm
}


#=============================================================
proc MOM_start_of_path { } {
#=============================================================
  global mom_sys_in_operation
   set mom_sys_in_operation 1

  global first_linear_move ; set first_linear_move 0
   TOOL_SET MOM_start_of_path

   if [llength [info commands PB_CMD_kin_start_of_path] ] {
      PB_CMD_kin_start_of_path
   }

   PB_CMD_for_massive
   MOM_set_seq_off
   MOM_do_template start_of_path_3
   PB_CMD_Operation_name
   PB_CMD_INITS_remove_detal
   PB_CMD_Check_marker
   PB_CMD_5axis_flag3_Vnol
   PB_CMD_set_modes
   MOM_force Once Text
   MOM_do_template start_of_path_4
   PB_CMD_G43_v_nol
}


#=============================================================
proc MOM_stop { } {
#=============================================================
   PB_CMD_STOP_INIT
}


#=============================================================
proc MOM_tap { } {
#=============================================================
  global cycle_name
  global cycle_init_flag

   set cycle_init_flag TRUE
   set cycle_name TAP
   CYCLE_SET
}


#=============================================================
proc MOM_tap_move { } {
#=============================================================
   global cycle_init_flag


   global mom_sys_abort_next_event
   if { [info exists mom_sys_abort_next_event] } {
      if { [llength [info commands PB_CMD_kin_abort_event]] } {
         PB_CMD_kin_abort_event
      }
   }


   PB_CMD_cycle_init
   PB_CMD_init_cycles2
   PB_CMD_G49_zapret
   PB_CMD_test_feed
   PB_CMD_coolant_init
   PB_CMD_CYCLE_UNCLAMP
   MOM_do_template cycle_tap
   PB_CMD_test_5axis_for_cycles
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_tool_change { } {
#=============================================================
  global mom_tool_change_type mom_manual_tool_change
   if { [info exists mom_tool_change_type] } {
      switch $mom_tool_change_type {
         MANUAL { PB_manual_tool_change }
         AUTO   { PB_auto_tool_change }
      }
   } elseif { [info exists mom_manual_tool_change] } {
      if { ![string compare $mom_manual_tool_change "TRUE"] } {
         PB_manual_tool_change
      }
   }
}


#=============================================================
proc MOM_tool_preselect { } {
#=============================================================
  global mom_tool_preselect_number mom_tool_number mom_next_tool_number
   if {[info exists mom_tool_preselect_number]} {
      set mom_next_tool_number $mom_tool_preselect_number
   }
}


#=============================================================
proc PB_approach_move { } {
#=============================================================
}


#=============================================================
proc PB_auto_tool_change { } {
#=============================================================
   PB_CMD_tool_datas
   PB_CMD_tool_type_marker
   PB_CMD_tool_change_another_tool
   PB_CMD_init_after_tool
   PB_CMD_for_prefun
   PB_CMD_for_prefun3
}


#=============================================================
proc PB_engage_move { } {
#=============================================================
}


#=============================================================
proc PB_feedrates { } {
#=============================================================
}


#=============================================================
proc PB_first_cut { } {
#=============================================================
}


#=============================================================
proc PB_first_linear_move { } {
#=============================================================
   PB_CMD_Engage
}


#=============================================================
proc PB_manual_tool_change { } {
#=============================================================
}


#=============================================================
proc PB_retract_move { } {
#=============================================================
}


#=============================================================
proc PB_return_move { } {
#=============================================================
}


#=============================================================
proc PB_start_of_program { } {
#=============================================================

   if [llength [info commands PB_CMD_kin_start_of_program] ] {
      PB_CMD_kin_start_of_program
   }

   MOM_set_seq_off
   PB_CMD_init_dll
   PB_CMD_for_prefun
   PB_CMD_Init_vars
   PB_CMD_init_vars1
   PB_CMD_Path_of_Posts_files
   MOM_do_template start_of_program_1
   MOM_set_seq_on
   MOM_force Once G_cutcom G_plane G_mode
   MOM_do_template absolute_mode
   MOM_do_template end_of_path_1
   PB_CMD_B0C0
   PB_CMD_unsets
}


#=============================================================
proc PB_CMD_5axis_flag { } {
#=============================================================
global mom_rotary_delta_4th mom_rotary_delta_5th 
global 5axis_flag 5axis_flag_for_end
global i1 5axis_flag3 oper eng_flag mom_out_angle_pos Clear_G43_flag1
global Clear_G43_flag

if {$mom_rotary_delta_4th != 0 || $mom_rotary_delta_5th != 0} {
    if {$eng_flag == 0} {  
	if {$5axis_flag3 == 0} {
	set i1 [expr $i1+1]
	set 5axis_flag [append 5axis_flag $oper " " $i1 " "]
	set 5axis_flag_for_end 1
	set 5axis_flag3 1
	set eng_flag 0
      }
}
}
set eng_flag 0

if {$mom_out_angle_pos(0) != 0} {
	if {$Clear_G43_flag1 == 0} {
	set i1 [expr $i1+1]
	
	set Clear_G43_flag [append Clear_G43_flag $oper " " $i1 " "]
	set Clear_G43_flag1 1

	}
}
}


#=============================================================
proc PB_CMD_5axis_flag3_Vnol { } {
#=============================================================
global 5axis_flag3 Clear_G43_flag1 Hcode_flag

set 5axis_flag3 0

set Hcode_flag 0

set Clear_G43_flag1 0
}


#=============================================================
proc PB_CMD_B0C0 { } {
#=============================================================
MOM_output_literal "G0 B0. C0."
}


#=============================================================
proc PB_CMD_BORING_WARNING { } {
#=============================================================

#MOM_output_literal "  "
#MOM_output_literal "(ПРОВЕРИТЬ ПРАВИЛЬНОСТЬ ПОЛОЖЕНИЯ РАСТОЧНОГО РЕЗЦА!!!!!!!)"
#MOM_output_literal "M0"
#MOM_output_literal "  "
}


#=============================================================
proc PB_CMD_CHECK32 { } {
#=============================================================
global mom_pos mom_prev_pos mom_prev_mcs_goto mom_mcs_goto mom_kin_4th_axis_min_limit mom_kin_4th_axis_max_limit z_save mom_tool_axis
global mom_rotate_axis_type mom_rotation_mode mom_rotation_angle first_5a_rot
global feed mom_prev_tool_axis
global mom_out_angle_pos mom_podvorot_on mom_tool_length
global mom_prev_out_angle_pos DEG2RAD string_g43
global X_otskok Y_otskok Z_otskok oper mom_warning_info mom_z_safe

set pivot 300.086
set axis_X [expr sin($mom_out_angle_pos(0)*$DEG2RAD)]
#MOM_output_literal "(!!!!!!!!!!!!!!!!!!!!!!!)"
if [info exist mom_podvorot_on] {
#set mom_kin_4th_axis_min_limit -70

	set B_form [format "%.3f" $mom_out_angle_pos(0)]
	set C_form [format "%.3f" $mom_out_angle_pos(1)]
	set pos_head(0) [expr $mom_pos(0) + ($mom_tool_length+$pivot)*$axis_X]
	if {$B_form >= 0} {
	set lim_x -80
	} else {
	set lim_x 0
	}

	if {$pos_head(0) < $lim_x} {

	if [info exist mom_z_safe] {
	set z_save $mom_z_safe
	} else {
	set z_save 100
	}	

 if {[expr abs($B_form)] < [expr abs($mom_kin_4th_axis_min_limit)]} {
   
   #MOM_output_literal ";GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG"
#MOM_output_literal "(B_form = $B_form axis_X = $axis_X mom_pos(0) = $mom_pos(0) mom_tool_length = $mom_tool_length mom_tool_axis(0) = $mom_tool_axis(0))"
   
#MOM_output_literal "G0 G53 Z0"	
#set mom_rotate_axis_type CAXIS
#set mom_rotation_mode "INCREMENTAL"
#set mom_rotation_angle 180
#	MOM_rotate
#	MOM_reload_variable -a mom_pos
#set mom_rotate_axis_type BAXIS
#set mom_rotation_mode "ABSOLUTE"
#set mom_rotation_angle [expr -1*$B_form_prev]
#	MOM_rotate
	

	#MOM_reload_variable -a mom_pos
	#MOM_reload_variable -a mom_prev_pos
	#MOM_reload_variable -a mom_out_angle_pos
	#MOM_reload_variable -a mom_prev_out_angle_pos
	
	#MOM_output_literal ";HHHHHHHHHHHHHHHHHHHHHHHH"


} else {

	set mom_warning_info "Операция ''$oper'' фиксированная под наклоном и при данном вылете инструмента," 
	append mom_warning_info "\n "
	append mom_warning_info "\n расположении нуля и виде траектории не может быть обработана" 
	MOM_output_to_listing_device $mom_warning_info 
	PB_CMD_Messages
	MOM_abort "Неправильная 3+2 траектория!!!!!!" 

}
}
}
}


#=============================================================
proc PB_CMD_CHECK_OTSKOK { } {
#=============================================================
global mom_group_name mom_warning_info oper prev_group_name
global first_group mom_otskok_off first_group


if [info exist mom_group_name] {
	if {$mom_group_name != $prev_group_name} {
		if [info exist mom_otskok_off] {unset mom_otskok_off}
	} else {

	}
set prev_group_name $mom_group_name

}
}


#=============================================================
proc PB_CMD_CHECK_REPOSITION { } {
#=============================================================
global mom_out_angle_pos mom_pos mom_tool_length DEG2RAD oper mom_warning_info mom_prev_pos



set pivot 300.086
set axis_X [expr sin($mom_out_angle_pos(0)*$DEG2RAD)]
set rot_pos [expr -1*$mom_prev_pos(0)]

	set B_form [format "%.3f" $mom_out_angle_pos(0)]
	set C_form [format "%.3f" $mom_out_angle_pos(1)]


#MOM_output_literal "(mom_pos(0) = $mom_pos(0) !!!!!!!!!!!!!!!! B_form = $B_form)"

	set pos_head(0) [expr $rot_pos + ($mom_tool_length+$pivot)*$axis_X]
	if {$B_form >= 0} {
	set lim_x -80
	} else {
	set lim_x -5
	}

if {$pos_head(0) < $lim_x} {

	set mom_warning_info "Операция ''$oper'' 5-ти осевая и при данном вылете инструмента," 
	append mom_warning_info "\n "
	append mom_warning_info "\n расположении нуля и виде траектории не может быть обработана" 
	append mom_warning_info "\n "
	append mom_warning_info "\n Также возможно неправильные настройки управления осью инструмента в траектории"
	append mom_warning_info "\n "
	append mom_warning_info "\n Попробуйте изменить значения максимального и минимального изменения оси в разделе"
	append mom_warning_info "\n "
	append mom_warning_info "\n Резание -> Управление осью инструмента"
	MOM_output_to_listing_device $mom_warning_info 
	PB_CMD_Messages
	MOM_abort "Неправильная 5-ти осевая траектория!!!!!!" 
}
}


#=============================================================
proc PB_CMD_CHECK_TISKI { } {
#=============================================================
global oper path mom_warning_info mom_obrabotka_tiski mom_out_angle_pos

set C_re [format "%.3f" $mom_out_angle_pos(1)]

if [info exist mom_obrabotka_tiski] {
if {$C_re != 0} {
	set mom_warning_info "Операция ''$oper'' выполняется при ненулевом положении оси С," 
	append mom_warning_info "\n "
	append mom_warning_info "\n и включенном режиме постпроцессирования 'В тисках', такой режим недопустим!" 
	MOM_output_to_listing_device $mom_warning_info 
	PB_CMD_Messages
	MOM_abort "Неправильный режим постпроцессирования!!!!!!" 
}
}
}


#=============================================================
proc PB_CMD_CHECK_ZAPRET { } {
#=============================================================
global mom_prev_prev_pos mom_pos mom_prev_pos zapret_G2 mom_motion_event
global X_rec Y_rec Z_rec

set zapret_G2 0

set X_rec [format "%.3f" $X_rec]
set Y_rec [format "%.3f" $Y_rec]



if {($mom_motion_event == "circular_move") || ($mom_motion_event == "helix_move")} {
	if {([format "%.3f" $mom_prev_pos(0)] == $X_rec) && ([format "%.3f" $mom_prev_pos(1)] == $Y_rec)} {
	set zapret_G2 1
	} 
}


#MOM_output_literal "(mom_prev_prev_pos(0)=$mom_prev_prev_pos(0) mom_prev_prev_pos(1)=$mom_prev_prev_pos(1) mom_prev_prev_pos(2)=$mom_prev_prev_pos(2)"
#MOM_output_literal "(mom_prev_pos(0)=$mom_prev_pos(0) mom_prev_pos(1)=$mom_prev_pos(1) mom_prev_pos(2)=$mom_prev_pos(2)"
#MOM_output_literal "(mom_pos(0)=$mom_pos(0) mom_pos(1)=$mom_pos(1) mom_pos(2)=$mom_pos(2)"
#MOM_output_literal "(X_rec=$X_rec Y_rec=$Y_rec Z_rec=$Z_rec)"
}


#=============================================================
proc PB_CMD_CHECK_ZERO { } {
#=============================================================
global path mom_warning_info1 mom_input_zero_int


if ![info exist mom_input_zero_int] {
	set mom_warning_info1 "На программный ноль не установлен номер!!!!" 
	append mom_warning_info1 "\n "
	append mom_warning_info1 "\n Установите номер через события в начале -  "
	append mom_warning_info1 "\n "
	append mom_warning_info1 "\n ''Номер программного нуля'' "
	MOM_output_to_listing_device $mom_warning_info1 
	set user_exe_file "${path}/mesbox.exe"
	if { [file exists $user_exe_file] } {
	set var [exec $user_exe_file $mom_warning_info1]
	}
	MOM_catch_warning
	MOM_abort "Требуется задание постпроцессорной команды!!!!!!"
}
}


#=============================================================
proc PB_CMD_CHECK_cycle_same_plane { } {
#=============================================================
global mom_prev_clearance_plane_point mom_clearance_plane_point mom_prev_pos
global mom_pos mom_calc_pos mom_cycle_feed_rate feed mom_prev_prev_pos

if [info exist mom_clearance_plane_point] {
	if {$mom_prev_clearance_plane_point(2) == $mom_clearance_plane_point(2)} {
		if {($mom_prev_pos(0) == $mom_prev_prev_pos(0)) && ($mom_prev_pos(1) == $mom_prev_prev_pos(1))} {
		set mom_prev_pos(2) [expr $mom_prev_prev_pos(2)]
		#MOM_do_template linear_move_Z_cycle
		set feed $mom_cycle_feed_rate
		}
	}
}

if [info exist mom_prev_pos] {
#MOM_output_literal "mom_prev_pos(2) = $mom_prev_pos(2)"
}
}


#=============================================================
proc PB_CMD_CHECK_cycle_same_plane_1 { } {
#=============================================================
global mom_prev_clearance_plane_point mom_clearance_plane_point mom_prev_pos
global mom_pos mom_calc_pos mom_cycle_feed_rate feed mom_prev_prev_pos

if [info exist mom_clearance_plane_point] {
	if {$mom_prev_clearance_plane_point(2) == $mom_clearance_plane_point(2)} {
		if {($mom_prev_pos(0) == $mom_pos(0)) && ($mom_prev_pos(1) == $mom_pos(1))} {
		set mom_pos(2) [expr $mom_prev_pos(2)]
		#MOM_do_template linear_move_Z_cycle
		set feed $mom_cycle_feed_rate
		}
	}
}

if [info exist mom_prev_pos] {
#MOM_output_literal "mom_prev_pos(2) = $mom_prev_pos(2)"
}
}


#=============================================================
proc PB_CMD_CYCLE_UNCLAMP { } {
#=============================================================
global unlock_turned unlock_turned2 mom_rotary_delta_4th mom_rotary_delta_5th 
global M212_mode M210_mode

	if {($mom_rotary_delta_4th != 0) && ($unlock_turned == 0)} {
	MOM_output_literal "M108"
	set unlock_turned 1
	}
	if {($mom_rotary_delta_5th != 0) && ($unlock_turned2 == 0)} {
	MOM_output_literal "M$M212_mode"
	set unlock_turned2 1
	}
}


#=============================================================
proc PB_CMD_Check_marker { } {
#=============================================================
global mom_operation_type path

set marker 0
switch $mom_operation_type {
      "Turn Roughing" {set marker 1}
      "Turn Threading" {set marker 1}
      "Turn Centerline Drilling" {set marker 1}
      "Turn Finishing" {set marker 1}
    }



if {$marker == 1} {
	set mom_warning_info1 "Попытка отпроцессировать не токарной составляющей постпроцессора!!!!" 
	append mom_warning_info1 "\n "
	append mom_warning_info1 "\n Скорее всего не проставлена постпроцессорная команда HEAD "
	append mom_warning_info1 "\n "
	append mom_warning_info1 "\n\t\t\t со значением TURN. "
	MOM_output_to_listing_device $mom_warning_info1 
	set user_exe_file "${path}/mesbox.exe"
	if { [file exists $user_exe_file] } {
	set var [exec $user_exe_file $mom_warning_info1]
	}
	MOM_catch_warning
	MOM_abort "Требуется задание постпроцессорной команды!!!!!!"
}
}


#=============================================================
proc PB_CMD_Check_range_B { } {
#=============================================================
global mom_range_B1 mom_range_B2 mom_range_B3 mom_range_B4 mom_range_B5
global mom_kin_4th_axis_min_limit 
global mom_kin_4th_axis_max_limit  mom_out_angle_pos
global range_checked 
global vector_min vector_max variant

if {$range_checked == 0} {
set mom_kin_4th_axis_min_limit 0
#####set mom_kin_4th_axis_min_limit 0#########
set mom_kin_4th_axis_max_limit 180
MOM_reload_kinematics
set variant 1

if [info exist mom_range_B1] {
if {$mom_range_B1 == "TRUE"} {
set mom_kin_4th_axis_min_limit 0
set mom_kin_4th_axis_max_limit 180
MOM_reload_kinematics
set range_checked 1
MOM_output_literal ";Лимиты оси B от 0 до 180"
set variant 1
}
}

if [info exist mom_range_B2] {
if {$mom_range_B2 == "TRUE"} {
set mom_kin_4th_axis_min_limit -30
set mom_kin_4th_axis_max_limit 0
MOM_reload_kinematics
MOM_output_literal ";Лимиты оси B от -30 до 0"
set range_checked 1
set variant 2
}
}

if [info exist mom_range_B3] {
if {$mom_range_B3 == "TRUE"} {
set mom_kin_4th_axis_min_limit 0
set mom_kin_4th_axis_max_limit 30
MOM_reload_kinematics
MOM_output_literal ";Лимиты оси B от 0 до 30"
set range_checked 1
set variant 3
}
}

if [info exist mom_range_B4] {
if {$mom_range_B4 == "TRUE"} {
set mom_kin_4th_axis_min_limit -30
set mom_kin_4th_axis_max_limit 180
MOM_reload_kinematics
MOM_output_literal ";Лимиты оси B от 180 до -30"
set range_checked 1
set variant 4
}
}

}

global mom_tool_axis mom_warning_info oper vector_Z vector_X mom_out_angle_pos DEG2RAD
set vector_Z [format "%.9f" $mom_tool_axis(2)]
set vector_X [format "%.9f" $mom_tool_axis(0)]

#set vector_X [expr $vector_X * cos(($mom_out_angle_pos(1)*$DEG2RAD))]

#MOM_output_literal "vector_Z=$vector_Z"
#MOM_output_literal "variant = $variant"
#MOM_output_literal "vector_min=$vector_min"
#MOM_output_literal "vector_X=$vector_X"
#MOM_output_literal "vector_max=$vector_max"
#MOM_output_literal "mom_tool_axis(0)=$mom_tool_axis(0)"
#MOM_output_literal "mom_tool_axis(2)=$mom_tool_axis(2)"

if {$variant == 1} {
if {($vector_X < -0.5)} {
	#MOM_output_literal "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	set mom_warning_info "(1)Недопустимое положение оси инструмента в операции ''$oper''" 
	append mom_warning_info "\n "
	append mom_warning_info "\n При таком положении оси инструмента станок выходит за лимиты" 
	append mom_warning_info "\n\t по угловому перемещению по оси B"
	#MOM_output_to_listing_device $mom_warning_info 
	#PB_CMD_Messages
	#MOM_abort "ВЫХОД ЗА ЛИМИТЫ ПО УГЛУ B!!!!!!" 
}
}

if {$variant == 2} {
if {($vector_X < 0.86602540378443864676372317075294)} {
	#MOM_output_literal "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	set mom_warning_info "(2)Недопустимое положение оси инструмента в операции ''$oper''" 
	append mom_warning_info "\n "
	append mom_warning_info "\n При таком положении оси инструмента станок выходит за лимиты" 
	append mom_warning_info "\n\t по угловому перемещению по оси B"
	#MOM_output_to_listing_device $mom_warning_info 
	#PB_CMD_Messages
	#MOM_abort "ВЫХОД ЗА ЛИМИТЫ ПО УГЛУ B!!!!!!" 
}
}

if {$variant == 3} {
if {($vector_X < 0.86602540378443864676372317075294)} {
	#MOM_output_literal "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	set mom_warning_info "(3)Недопустимое положение оси инструмента в операции ''$oper''" 
	append mom_warning_info "\n "
	append mom_warning_info "\n При таком положении оси инструмента станок выходит за лимиты" 
	append mom_warning_info "\n\t по угловому перемещению по оси B"
	#MOM_output_to_listing_device $mom_warning_info 
	#PB_CMD_Messages
	#MOM_abort "ВЫХОД ЗА ЛИМИТЫ ПО УГЛУ B!!!!!!" 
}
}

if {$variant == 4} {
if {$vector_X < -0.5} {
	#MOM_output_literal "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	set mom_warning_info "(4)Недопустимое положение оси инструмента в операции ''$oper''" 
	append mom_warning_info "\n "
	append mom_warning_info "\n При таком положении оси инструмента станок выходит за лимиты" 
	append mom_warning_info "\n\t по угловому перемещению по оси B"
	#MOM_output_to_listing_device $mom_warning_info 
	#PB_CMD_Messages
	#MOM_abort "ВЫХОД ЗА ЛИМИТЫ ПО УГЛУ B!!!!!!" 
}
}
}


#=============================================================
proc PB_CMD_Engage { } {
#=============================================================
global eng_flag

set eng_flag 1
}


#=============================================================
proc PB_CMD_FEEDRATE_NUMBER { } {
#=============================================================
#
#  This custom command allows you to modify the feed rate number
#  after it has been calculated by the system
#
   global mom_feed_rate_number

   set mom_sys_frn_factor 1.0

   if [info exists mom_feed_rate_number] {
      return [expr $mom_feed_rate_number * $mom_sys_frn_factor]
   } else {
      return 0.0
   }
}


#=============================================================
proc PB_CMD_From_flag { } {
#=============================================================
global from_flag

set from_flag 1
}


#=============================================================
proc PB_CMD_From_motion { } {
#=============================================================
global from_flag Hcode_flag G54_flag G68 G43_4_flag

if {$from_flag == 0} {

MOM_force once G_motion G_mode G_adjust X Y Z H
if {$G54_flag == 0} {
#MOM_force once G_54
set G54_flag 1
}

if {$G68 == 1} {
MOM_suppress once G_adjust H
}

if {$G43_4_flag == 0} {
MOM_suppress once G_adjust_43_4 H
}
set Hcode_flag 1

MOM_do_template from_move
MOM_do_template from_move_1
}
}


#=============================================================
proc PB_CMD_G05_inizialisaciya { } {
#=============================================================
global 5axis_flag2

if {$5axis_flag2 == 0} {
#MOM_output_literal "M43"
set 5axis_flag2 1
}
}


#=============================================================
proc PB_CMD_G43_4_recalc { } {
#=============================================================
global mom_pos mom_mcs_goto G43_4_flag temp_pos pos_G43

set temp_pos $mom_pos(0)
if {$G43_4_flag == 1} {

set mom_pos(0) $mom_mcs_goto(0)
set mom_pos(1) $mom_mcs_goto(1)
set mom_pos(2) $mom_mcs_goto(2)

} else {
#MOM_force once G_motion X Y I J
}
}


#=============================================================
proc PB_CMD_G43_4_recalc_old { } {
#=============================================================
global mom_pos mom_mcs_goto G43_4_flag temp_pos pos_G43

set temp_pos $mom_pos(0)
if {$G43_4_flag == 1} {

set pos_G43(0) $mom_mcs_goto(0)
set pos_G43(1) $mom_mcs_goto(1)
set pos_G43(2) $mom_mcs_goto(2)

MOM_disable_address X Y Z 
MOM_enable_address X_G43 Y_G43 Z_G43
MOM_force once X_G43 Y_G43 Z_G43

} else {
MOM_force once G_motion X Y I J
}
}


#=============================================================
proc PB_CMD_G43_v_nol { } {
#=============================================================
global G43_4_flag mom_output_file_full_name mom_input_zero_int


MOM_force Once G_adjust

#MOM_set_seq_off
#MOM_output_literal "\#818=0."
#MOM_set_seq_on


set G43_4_flag 0
}


#=============================================================
proc PB_CMD_G49 { } {
#=============================================================
global G43_4_flag stop_inited
global mom_sys_lathe_x_double

if {$G43_4_flag == 1} {
MOM_force Once G_adjust


MOM_force Once G_adjust_43_4 H


}

if {$G43_4_flag != 1} {
MOM_output_literal "G69"
}

MOM_do_template end_of_path_3

if [info exist stop_inited] {
if {$stop_inited == 1} {
#MOM_output_literal "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
PB_CMD_STOP
set stop_inited 0
}
}

MOM_output_literal "M01"
}


#=============================================================
proc PB_CMD_G49_zapret { } {
#=============================================================
global G43_4_flag

if {$G43_4_flag != 1} {
	MOM_suppress ONCE G_adjust_43_4 H
}
}


#=============================================================
proc PB_CMD_G69 { } {
#=============================================================
global mom_sys_coordinate_system_status G68 A_stanok C_stanok 2D_machining rot_y
global G10 mom_sys_lathe_x_double G43_4_flag mom_kin_helical_arc_output_mode mom_kin_arc_output_mode
global mom_sys_leader mom_lunet_on mom_which_spindle
global M212_mode M210_mode lunet_turned

PB_CMD_LUNET

MOM_output_literal "M09"
if {$lunet_turned == 1} {
MOM_output_literal "M286"
}

#MOM_enable_address X Y Z 
#MOM_disable_address X_G43 Y_G43 Z_G43
MOM_force once X Y Z

if {$G10 == 1 } {
  #MOM_output_literal "G52 X0 Y0 Z0"
  set G10 0
  set G68 0

 }
  
if {$G68 == 1} {
#MOM_enable_address fourth_axis fifth_axis 
set G68 0
if {$2D_machining == 0} {
set rot_y 0
}
#PB_CMD_Rotate_emulation
}

if {$G43_4_flag == 1} {
PB_CMD_Rotate_emulation
set rot_y 0
}

global polar_flag polar_turned
if {$polar_flag == 1} {
MOM_output_literal "G13.1"
if {$mom_which_spindle == "ПРАВЫЙ"} {
#PB_CMD_Rotate_emulation
MOM_output_literal "G0 U0"
} else {
#PB_CMD_Rotate_emulation
MOM_output_literal "G0 C0"
}
set polar_flag 0
set polar_turned 0
#MOM_enable_address Y
#MOM_disable_address Y_C
set mom_sys_leader(Y) Y
}

MOM_output_literal "M107 M$M210_mode"

set mom_kin_arc_output_mode "FULL_CIRCLE"
set mom_kin_helical_arc_output_mode QUADRANT
MOM_reload_kinematics

global G43_4_init
set G43_4_init 0

global coolant_inited mom_coolant_status
set coolant_inited 0


global mom_next_oper_has_tool_change mom_coolant_status

if {$mom_next_oper_has_tool_change == "YES"} {
set mom_coolant_status UNDEFINED
MOM_reload_variable -a mom_coolant_status
MOM_coolant_off
}
}


#=============================================================
proc PB_CMD_Hcode_event_and_G54 { } {
#=============================================================
global Hcode_flag G54_flag

if {$Hcode_flag == 0} {
#MOM_force Once H
set Hcode_flag 1
}

if {$G54_flag == 0} {
set G54_flag 1
MOM_force Once G_54
}

	MOM_force ONCE X Y Z
}


#=============================================================
proc PB_CMD_INITS_goto_right { } {
#=============================================================
global mom_goto_right inits_was_goto_right mom_which_spindle synch_mode lunet_turned

if ![info exist inits_was_goto_right] {
	if [info exist mom_goto_right] {
PB_CMD_OTSKOK
if {$lunet_turned == 1} {
MOM_output_literal "G1 G91 W\[-\#5226 + \#751\] V\[-\#5226 + \#751\] F5000"
MOM_output_literal "G90"
} else {
MOM_output_literal "G0 G53 W0"
}
	set mom_which_spindle "ПРАВЫЙ"
	set inits_was_goto_right 1
	set synch_mode 0
	}

}
}


#=============================================================
proc PB_CMD_INITS_remove_detal { } {
#=============================================================
global mom_remove_detal inits_was_remove_detal

if ![info exist inits_was_remove_detal] {
	if [info exist mom_remove_detal] {
PB_CMD_OTSKOK
	MOM_output_literal "G0 G53 W0"
	MOM_output_literal "M305"
	MOM_output_literal "M306 (OPEN SUB-SPINDLE)"
	MOM_output_literal "(UBERI DETAL` !!!!!!!!!!!!)"
	MOM_output_literal "M0"
	set inits_was_remove_detal 1
	}

}
}


#=============================================================
proc PB_CMD_Init_vars { } {
#=============================================================
global tool_i i1 i2 5axis G43_f mom_sys_leader
global start_of_program_flag from_flag tool_numbers


	set start_of_program_flag "0"

	set from_flag 0

	set i1 0
	set i2 0
	uplevel #0 {
		set tool_i "0"
		set 5axis 0
		set G43_f 0
		}
set tool_numbers ""



global mom_perehvat_was 
set mom_perehvat_was 0


global mom_which_spindle 
#set mom_which_spindle "ЛЕВЫЙ"

global mom_no_move
set mom_no_move 1

global polar_flag polar_turned
set polar_flag 0
set polar_turned 0

#MOM_disable_address Y_C
set mom_sys_leader(Y) Y

global tool_with_on 
set tool_with_on 0

global first_flag
set first_flag 0

global orient_marker
set orient_marker "00"

global mom_which_turret
set mom_which_turret "ВЕРХНИЙ"

global mom_right_spindle
#set mom_right_spindle ""

global mom_change_turret_was
set mom_change_turret_was 0

global mom_perehvat_was 
set mom_perehvat_was 0

global spindle_rpm_add
set spindle_rpm_add 0

global mom_no_move
set mom_no_move 1

global spindle_is_out
set spindle_is_out 0

global mom_P
set mom_P 10

global B_prev2 C_prev2
set B_prev2 0
set C_prev2 0

global prev_angle_tool
set prev_angle_tool 0

global approach
set approach 0

global tool_changing
set tool_changing 0

global tool_init
set tool_init 0

global G43_4_init
set G43_4_init 0
}


#=============================================================
proc PB_CMD_LUNET { } {
#=============================================================
global mom_lu_mode_1_HH mom_lu_mode_0_HH mom_LB_lunet lunet_first_time
global mom_seqnum lunet_turned


if [info exist mom_lu_mode_1_HH] {

set mom_LB_lunet [format "%.3f" $mom_LB_lunet]
set LB_lunet [expr -1 * $mom_LB_lunet]

MOM_output_literal "M5"
PB_CMD_OTSKOK_LUNET


if {$mom_lu_mode_1_HH == "TRUE"} {
MOM_output_literal "M205"
MOM_output_literal "M292"
MOM_output_literal "G0 V$LB_lunet"
MOM_output_literal "M293"
set lunet_turned 1
} else {
if {$mom_lu_mode_0_HH == "RIGHT"} {
MOM_output_literal "M205"
MOM_output_literal "M292"
MOM_output_literal "G0 G53 V440."
set lunet_turned 0
}
if {$mom_lu_mode_0_HH == "LEFT"} {
MOM_output_literal "M205"
MOM_output_literal "M292"
MOM_output_literal "G0 G53 V-857."
set lunet_turned 0
}
}
unset mom_lu_mode_1_HH mom_lu_mode_0_HH
}
}


#=============================================================
proc PB_CMD_M950 { } {
#=============================================================
global mom_change_turret_was mom_P
global mom_no_move mom_which_turret

global mom_no_move

set mom_no_move 1
}


#=============================================================
proc PB_CMD_MCS_TESTING { } {
#=============================================================
global mom_msys_origin nol1 nol2 nol3 
global mom_operation_name path mom_warning_info mom_kin_coordinate_system_type

if {($mom_msys_origin(0) != $nol1) || ($mom_msys_origin(1) != $nol2) || ($mom_msys_origin(2) != $nol3)} {
    if {$mom_kin_coordinate_system_type != "CSYS"} {	
	set mom_warning_info "Операция ''$mom_operation_name'' выполнена относительно ДРУГОЙ " 
	append mom_warning_info "системы координат, определенной не как CSYS Rotation" 
	append mom_warning_info "\n "
	append mom_warning_info "\n\t Все операции должны быть выполнены относительно ОДНОЙ системы координат,"
	append mom_warning_info "\n "
	append mom_warning_info "\n\t либо локальная система координат должна быть определена параметром CSYS Rotation" 
 	#MOM_output_to_listing_device $mom_warning_info 
	PB_CMD_Messages
	MOM_abort "УБЕРИТЕ ЛИШНИЕ СИСТЕМЫ КООРДИНАТ!!!"
 }
}
}


#=============================================================
proc PB_CMD_Messages { } {
#=============================================================
global mom_warning_info path var

MOM_output_to_listing_device $mom_warning_info

set user_exe_file "${path}/mesbox.exe"
if { [file exists $user_exe_file] } {
set var [exec $user_exe_file $mom_warning_info]
}
MOM_catch_warning
#MOM_abort $mom_warning_info
}


#=============================================================
proc PB_CMD_OTSKOK { } {
#=============================================================

global mom_alt_X mom_alt_Y mom_alt_Z


if [info exist mom_alt_X] {
EXTN_rtv_mom_cp_part_attr "33"
} else {
EXTN_rtv_mom_cp_part_attr "30"
}
}


#=============================================================
proc PB_CMD_OTSKOK_LUNET { } {
#=============================================================

global mom_alt_X mom_alt_Y mom_alt_Z


if [info exist mom_alt_X] {
set mom_alt_X [format "%.3f" $mom_alt_X]
set mom_alt_Y [format "%.3f" $mom_alt_Y]

MOM_output_literal "G0 G53 X$mom_alt_X Y$mom_alt_Y"
} else {
MOM_output_literal "G0 G53 X0. Y-125."
}
}


#=============================================================
proc PB_CMD_Operation_name { } {
#=============================================================
global mom_operation_name oper cutting_was mom_operation_type G43_4_flag
global mom_sys_leader mom_sys_trailer mom_kin_arc_output_mode mom_kin_helical_arc_output_mode 

MOM_set_seq_on
set oper $mom_operation_name
#MOM_output_literal "M00"
MOM_output_literal "($oper)"

set cutting_was 0


global mom_seqnum metka2 flag2
set metka2 [expr $mom_seqnum]
#MOM_set_seq_off


global stop_inited
set stop_inited 0

switch $mom_operation_type {
	"Variable-axis Surface Contouring"   	{set G43_4_flag 1}
	"Variable-axis Z-Level Milling" 		{set G43_4_flag 1}
	"Sequential Mill Main Operation" 		{set G43_4_flag 1}
}

if {$G43_4_flag == 1} {
set mom_sys_leader(fifth_axis) "C"
set mom_sys_trailer(fifth_axis) ""
	MOM_reload_variable -a mom_sys_leader 
	MOM_reload_variable -a mom_sys_trailer

set mom_kin_arc_output_mode "LINEAR"
set mom_kin_helical_arc_output_mode "LINEAR"
MOM_reload_kinematics
}

MOM_output_literal "G90"
}


#=============================================================
proc PB_CMD_PLANE_MILL2 { } {
#=============================================================
global mom_tool_number mom_out_angle_pos mom_mcs_goto pos_G43 mom_which_spindle
global M212_mode M210_mode

set H_cur [format "%.0f" $mom_tool_number]
set angle_form0 [format "%.3f" $mom_out_angle_pos(0)]

MOM_output_literal "M107 M$M210_mode"

MOM_force Once G_adjust_43_4 G_feed X Y Z fourth_axis fifth_axis H
MOM_do_template g94

if {$mom_which_spindle == "ЛЕВЫЙ"} {
MOM_force Once G_adjust_43_4 G_feed X Y Z fourth_axis fifth_axis H
MOM_do_template linear_move_XY_G43_4
MOM_output_literal "G49"
} else {
MOM_suppress Once G_adjust_43_4 H
}


MOM_output_literal "T$H_cur M06"
#MOM_output_literal "G69"

MOM_output_literal "G68 X0 Y0 Z0 I0 J1 K0 R$angle_form0"
MOM_output_literal "G61.1"

MOM_force Once G_motion X Y Z 
MOM_do_template rapid_traverse
}


#=============================================================
proc PB_CMD_PROGRAMMED_OTSKOK { } {
#=============================================================
global mom_otskok_off		

if [info exist mom_otskok_off] {
  if {$mom_otskok_off == "INACTIVE"} {
PB_CMD_OTSKOK
  MOM_output_literal "G10.9X0"
  }
} else {
PB_CMD_OTSKOK
	  MOM_output_literal "G10.9X0"
}
}


#=============================================================
proc PB_CMD_PROGRAMMED_OTSKOK_MASSIVE { } {
#=============================================================
global mom_otskok_off mom_massive_otskok prev_massive_otskok


if {$prev_massive_otskok == "FALSE"} {
PB_CMD_OTSKOK
	MOM_output_literal "G10.9X0"
} else {

}
}


#=============================================================
proc PB_CMD_Path_of_Posts_files { } {
#=============================================================
global mom_output_file_basename mom_operation_name mom_group_name mom_logname
global mom_date mom_machine_name mom_warning_info mom_part_name path path_flag mom_definition_file_name

#set str "\n Постпроцессор для станка Mazak Integrex e-1060II (фрезерная часть) система Mazatrol Matrix \n\n"
#MOM_output_to_listing_device $str  ;

set path $mom_definition_file_name
for { set i 0 } { $i < [string length $path] } { set i [expr $i+1]} {
	if {[string index $path $i] == [string index $path 2]} {
	     set path_flag $i
	}
}
set path [string range $path 0 $path_flag]

set is_name_ok [regexp -nocase -- {[a-z]} $mom_output_file_basename]
   if {$is_name_ok == "1"} {
      #set mom_warning_info "\n\n\tПредупреждение: \n\t Имя файла программы - должно содержать только цифры \n\n"
      #MOM_output_to_listing_device $mom_warning_info  ;   MOM_catch_warning ;
   }
}


#=============================================================
proc PB_CMD_Perehvat_left_right { } {
#=============================================================
#перехват  слева на право с последующим выключением левого шпинделя

global mom_which_spindle mom_side_clump mom_distance_zc mom_distance_zc_clump 
global mom_spin_clump mom_time_clump mom_together_machining
global mom_which_spindle mom_side_clump mom_distance_zc mom_distance_zc_clump 
global mom_spin_clump mom_time_clump mom_together_machining H_user H_user2
global mom_number_tool mom_P mom_offset_zero mom_number_safe mom_nedohod mom_recalc_zero
global lunet_turned mom_C_VAL mom_U_VAL

set mom_time_clump 1
set mom_which_spindle "ПРАВЫЙ"

PB_CMD_OTSKOK
MOM_output_literal "G53 W0"
MOM_output_literal "G49"
MOM_output_literal "G0 B0"


MOM_set_seq_off
MOM_output_literal "  " 
MOM_set_seq_on

MOM_output_literal "\#750 = $mom_nedohod  (Дистанция для ускоренной подачи)"
MOM_output_literal "\#751 = $mom_distance_zc_clump (Дистанция захода кулачков)"

MOM_set_seq_off
MOM_output_literal "  " 
MOM_set_seq_on
EXTN_rtv_mom_cp_part_attr "31"
MOM_output_literal "G4 X$mom_time_clump"
MOM_output_literal "M509"
MOM_output_literal "M307"
MOM_output_literal "M202 M302"
MOM_output_literal "M541"
MOM_output_literal "M206"
if {$lunet_turned == 1} {
MOM_output_literal "G1 G91 W\[-\#5226 + \#751\] V\[-\#5226 + \#751\] F5000"
MOM_output_literal "G90"
} else {
MOM_output_literal "G0 G53 W0"
}
MOM_output_literal "M202 M302"
MOM_output_literal "M205 M305"

if {$mom_recalc_zero == "TRUE"} {
EXTN_rtv_mom_cp_part_attr "32"
} else {
MOM_output_literal "(PROVER`TE PRIVYAZKU PROGRAMMNOGO NULYA - G55!!!!!)"
}
MOM_output_literal "G55"

PB_CMD_ude
}


#=============================================================
proc PB_CMD_Perehvat_otrezka { } {
#=============================================================
#перехват  слева на право с последующим выключением левого шпинделя

global mom_which_spindle mom_side_clump mom_distance_zc mom_distance_zc_clump 
global mom_spin_clump mom_time_clump mom_together_machining
global mom_which_spindle mom_side_clump mom_distance_zc mom_distance_zc_clump 
global mom_spin_clump mom_time_clump mom_together_machining H_user H_user2
global mom_number_tool mom_P mom_offset_zero mom_number_safe mom_nedohod mom_recalc_zero mom_distance_new_vilet
global mom_C_VAL mom_U_VAL

set mom_time_clump 1
set mom_which_spindle "ЛЕВЫЙ"
set synch_mode 1
set mom_distance_new_vilet [format "%.3f" $mom_distance_new_vilet]

PB_CMD_OTSKOK
MOM_output_literal "G53 W0"
MOM_output_literal "G49"
MOM_output_literal "G0 B0"


MOM_set_seq_off
MOM_output_literal "  " 
MOM_set_seq_on

MOM_output_literal "\#750 = $mom_nedohod  (Дистанция для ускоренной подачи)"
MOM_output_literal "\#751 = $mom_distance_zc_clump (Дистанция захода кулачков)"

MOM_set_seq_off
MOM_output_literal "  " 
MOM_set_seq_on
EXTN_rtv_mom_cp_part_attr "31"
MOM_output_literal "G4 X$mom_time_clump"
MOM_output_literal "M509"
MOM_output_literal "M307"
MOM_output_literal "M202 M302"
MOM_output_literal "M541"
MOM_output_literal "M206"
MOM_output_literal "G1 G91 W$mom_distance_new_vilet F300"
MOM_output_literal "M207"
MOM_output_literal "M901"
MOM_output_literal "M202"
MOM_output_literal "M205"

if {$mom_recalc_zero == "TRUE"} {
MOM_output_literal "(Перенос нуля!!!)" 
EXTN_rtv_mom_cp_part_attr "32"
} else {
MOM_output_literal "(PROVER`TE PRIVYAZKU PROGRAMMNOGO NULYA - G55!!!!!)"
}
}


#=============================================================
proc PB_CMD_Podvorot_5x { } {
#=============================================================
global mom_pos mom_prev_pos mom_prev_mcs_goto mom_mcs_goto mom_kin_4th_axis_min_limit mom_kin_4th_axis_max_limit z_save mom_tool_axis
global mom_rotate_axis_type mom_rotation_mode mom_rotation_angle first_5a_rot
global feed mom_prev_tool_axis
global mom_out_angle_pos mom_podvorot_on mom_tool_length
global mom_prev_out_angle_pos DEG2RAD string_g43
global X_otskok Y_otskok Z_otskok oper mom_warning_info mom_z_safe mom_motion_event prev_event
#global pos


set pivot 300.086
set axis_X [expr sin($mom_out_angle_pos(0)*$DEG2RAD)]

#set mom_kin_4th_axis_min_limit -20

if [info exist mom_podvorot_on] {

	set B_form [format "%.3f" $mom_out_angle_pos(0)]
	set C_form [format "%.3f" $mom_out_angle_pos(1)]
	set pos_head(0) [expr $mom_pos(0) + ($mom_tool_length+$pivot)*$axis_X]
	if {$B_form >= 0} {
	set lim_x -80
	} else {
	set lim_x -5
	}

	if {$pos_head(0) < $lim_x} {

	if [info exist mom_z_safe] {
	set z_save $mom_z_safe
	} else {
	set z_save 100
	}	

 if {[expr abs($B_form)] < [expr abs($mom_kin_4th_axis_min_limit)]} {
   
#MOM_output_literal "(GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG)"
#MOM_output_literal "(B_form = $B_form axis_X = $axis_X mom_pos(0) = $mom_pos(0) mom_tool_length = $mom_tool_length mom_tool_axis(0) = $mom_tool_axis(0))"
#MOM_output_literal "(mom_mcs_goto(0) = $mom_mcs_goto(0) pos(0) = $pos(0))"
#MOM_output_literal "(mom_motion_event = $mom_motion_event )"
#MOM_output_literal "(prev_event = $prev_event )"

   
   if {$mom_prev_mcs_goto(0) == 9999} {
 	set mom_prev_mcs_goto(0) $mom_mcs_goto(0)
 	set mom_prev_mcs_goto(1) $mom_mcs_goto(1)
 	set mom_prev_mcs_goto(2) $mom_mcs_goto(2)
 	
 	set mom_prev_tool_axis(0) $mom_tool_axis(0)
 	set mom_prev_tool_axis(1) $mom_tool_axis(1)
 	set mom_prev_tool_axis(2) $mom_tool_axis(2)

	set mom_prev_out_angle_pos(0) $mom_out_angle_pos(0)
	set mom_prev_out_angle_pos(1) $mom_out_angle_pos(1)
 	}

	set B_form_prev [format "%.3f" $mom_prev_out_angle_pos(0)]
	set C_form_prev [format "%.3f" $mom_prev_out_angle_pos(1)]
	
	set X_otskok [expr $mom_prev_mcs_goto(0) + ($z_save * $mom_prev_tool_axis(0))]
	set Y_otskok [expr $mom_prev_mcs_goto(1) + ($z_save * $mom_prev_tool_axis(1))]
	set Z_otskok [expr $mom_prev_mcs_goto(2) + ($z_save * $mom_prev_tool_axis(2))]

	set X_otskok [format "%.3f" $X_otskok]
	set Y_otskok [format "%.3f" $Y_otskok]
	set Z_otskok [format "%.3f" $Z_otskok]
	
	set X_vozvr [format "%.3f" $mom_prev_mcs_goto(0)]
	set Y_vozvr [format "%.3f" $mom_prev_mcs_goto(1)]
	set Z_vozvr [format "%.3f" $mom_prev_mcs_goto(2)]
	
	set TX_o [format "%.9f" $mom_prev_tool_axis(0)]
	set TY_o [format "%.9f" $mom_prev_tool_axis(1)]
	set TZ_o [format "%.9f" $mom_prev_tool_axis(2)]

	set feed [format "%.3f" $feed]
if {$prev_event != "rapid_move"} {
	MOM_output_literal "G1 X$X_otskok Y$Y_otskok Z$Z_otskok B$B_form_prev C$C_form_prev F$feed"
}
	
	MOM_output_literal "G49"
	MOM_output_literal "G0 G53 Z0"


set mom_rotate_axis_type CAXIS
set mom_rotation_mode "ABSOLUTE"
set mom_rotation_angle [expr $C_form_prev+180]
if {$mom_rotation_angle >= 360} {set mom_rotation_angle [expr $mom_rotation_angle-360]}
MOM_rotate
MOM_reload_variable -a mom_pos




set mom_rotate_axis_type BAXIS
set mom_rotation_mode "ABSOLUTE"
set mom_rotation_angle [expr -1*$B_form_prev]
	MOM_rotate
	
	#PB_CMD_G43_4_recalc

	EXTN_rtv_mom_cp_part_attr "19"
	MOM_force Once X Y fourth_axis fifth_axis
	MOM_force once G_adjust_43_4 H
	set string_g43 "G91 Z\[-\#600\]"

if {$prev_event != "rapid_move"} {
	MOM_enable_address X Y Z 
	MOM_disable_address X_G43 Y_G43 Z_G43
	MOM_force once X Y Z

	MOM_do_template linear_move_XY_for5x
	MOM_disable_address X Y Z 
	MOM_enable_address X_G43 Y_G43 Z_G43
	MOM_force once X_G43 Y_G43 Z_G43

	MOM_output_literal "G90"
	
	MOM_output_literal "G0 X$X_otskok Y$Y_otskok"
	MOM_output_literal "G0 Z$Z_otskok"
	MOM_output_literal "G1 X$X_otskok Y$Y_otskok Z$Z_otskok"
	
	MOM_output_literal "G1 X$X_vozvr Y$Y_vozvr Z$Z_vozvr"
	MOM_force Once X Y Z F fourth_axis fifth_axis
} else {
	MOM_enable_address X Y Z 
	MOM_disable_address X_G43 Y_G43 Z_G43
	MOM_force once X Y Z

	MOM_do_template linear_move_XY_for5x_2
	MOM_output_literal "G90"
	MOM_do_template linear_move_Z_2
	MOM_disable_address X Y Z 
	MOM_enable_address X_G43 Y_G43 Z_G43
	MOM_force once X_G43 Y_G43 Z_G43



}
	set mom_out_angle_pos(0) [expr -1*$B_form]
	set mom_out_angle_pos(1) [expr $C_form+180]
	if {$mom_out_angle_pos(1) >= 360} {set mom_out_angle_pos(1) [expr $mom_out_angle_pos(1)-360]}
	
	MOM_reload_variable -a mom_pos
PB_CMD_CHECK_REPOSITION

} else {

	set mom_warning_info "Операция ''$oper'' 5-ти осевая и при данном вылете инструмента," 
	append mom_warning_info "\n "
	append mom_warning_info "\n расположении нуля и виде траектории не может быть обработана" 
	MOM_output_to_listing_device $mom_warning_info 
	PB_CMD_Messages
	MOM_abort "Неправильная 5-ти осевая траектория!!!!!!" 

}
}



}

set prev_event $mom_motion_event
}


#=============================================================
proc PB_CMD_Podvorot_5x_for_initmove { } {
#=============================================================
global mom_pos mom_prev_pos mom_prev_mcs_goto mom_mcs_goto mom_kin_4th_axis_min_limit mom_kin_4th_axis_max_limit z_save mom_tool_axis
global mom_rotate_axis_type mom_rotation_mode mom_rotation_angle first_5a_rot
global feed mom_prev_tool_axis
global mom_out_angle_pos mom_podvorot_on mom_tool_length
global mom_prev_out_angle_pos DEG2RAD string_g43
global X_otskok Y_otskok Z_otskok oper mom_warning_info mom_z_safe podvorot_init
global pos

set pivot 300.086
set axis_X [expr sin($mom_out_angle_pos(0)*$DEG2RAD)]

#set mom_kin_4th_axis_min_limit -20

if [info exist mom_podvorot_on] {

	set B_form [format "%.3f" $mom_out_angle_pos(0)]
	set C_form [format "%.3f" $mom_out_angle_pos(1)]
	set pos_head(0) [expr $mom_pos(0) + ($mom_tool_length+$pivot)*$axis_X]
	if {$B_form >= 0} {
	set lim_x -80
	} else {
	set lim_x -5
	}

	if {$pos_head(0) < $lim_x} {

	if [info exist mom_z_safe] {
	set z_save $mom_z_safe
	} else {
	set z_save 100
	}	

 if {[expr abs($B_form)] < [expr abs($mom_kin_4th_axis_min_limit)]} {
   
#MOM_output_literal "(IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII)"
#MOM_output_literal "(B_form = $B_form axis_X = $axis_X mom_pos(0) = $mom_pos(0) mom_tool_length = $mom_tool_length mom_tool_axis(0) = $mom_tool_axis(0))"
   
   if {$mom_prev_mcs_goto(0) == 9999} {
 	set mom_prev_mcs_goto(0) $mom_mcs_goto(0)
 	set mom_prev_mcs_goto(1) $mom_mcs_goto(1)
 	set mom_prev_mcs_goto(2) $mom_mcs_goto(2)
 	
 	set mom_prev_tool_axis(0) $mom_tool_axis(0)
 	set mom_prev_tool_axis(1) $mom_tool_axis(1)
 	set mom_prev_tool_axis(2) $mom_tool_axis(2)

	set mom_prev_out_angle_pos(0) $mom_out_angle_pos(0)
	set mom_prev_out_angle_pos(1) $mom_out_angle_pos(1)
 	}

	set B_form_prev [format "%.3f" $mom_prev_out_angle_pos(0)]
	set C_form_prev [format "%.3f" $mom_prev_out_angle_pos(1)]
	
	set X_otskok [expr $mom_prev_mcs_goto(0) + ($z_save * $mom_prev_tool_axis(0))]
	set Y_otskok [expr $mom_prev_mcs_goto(1) + ($z_save * $mom_prev_tool_axis(1))]
	set Z_otskok [expr $mom_prev_mcs_goto(2) + ($z_save * $mom_prev_tool_axis(2))]

	set X_otskok [format "%.3f" $X_otskok]
	set Y_otskok [format "%.3f" $Y_otskok]
	set Z_otskok [format "%.3f" $Z_otskok]
	
	set X_vozvr [format "%.3f" $mom_prev_mcs_goto(0)]
	set Y_vozvr [format "%.3f" $mom_prev_mcs_goto(1)]
	set Z_vozvr [format "%.3f" $mom_prev_mcs_goto(2)]
	
	set TX_o [format "%.9f" $mom_prev_tool_axis(0)]
	set TY_o [format "%.9f" $mom_prev_tool_axis(1)]
	set TZ_o [format "%.9f" $mom_prev_tool_axis(2)]

	set feed [format "%.3f" $feed]

#	MOM_output_literal "G1 X$X_otskok Y$Y_otskok Z$Z_otskok B$B_form_prev C$C_form_prev F$feed"
#	MOM_output_literal "G49"
#	MOM_output_literal "G0 G53 Z0"
#	MOM_output_literal "G1 X$X_otskok Y$Y_otskok Z$Z_otskok B0"
#	MOM_output_literal "G$zero_number D1"

	
set mom_rotate_axis_type CAXIS
set mom_rotation_mode "INCREMENTAL"
set mom_rotation_angle 180
	MOM_rotate
	MOM_reload_variable -a mom_pos
set mom_rotate_axis_type BAXIS
set mom_rotation_mode "ABSOLUTE"
set mom_rotation_angle [expr -1*$B_form_prev]
	MOM_rotate

set podvorot_init 1
	
	#PB_CMD_G43_4_recalc

	#EXTN_rtv_mom_cp_part_attr "19"
	#MOM_force Once X Y fourth_axis fifth_axis
	#MOM_force once G_adjust_43_4 H
	#set string_g43 "G91 Z\[-\#600\]"
	#MOM_do_template linear_move_XY_for5x
	#MOM_output_literal "G90"
	
	#MOM_output_literal "G0 X$X_otskok Y$Y_otskok"
	#MOM_output_literal "G0 Z$Z_otskok"
	#MOM_output_literal "G1 X$X_otskok Y$Y_otskok Z$Z_otskok"
	
	#MOM_output_literal "G1 X$X_vozvr Y$Y_vozvr Z$Z_vozvr"
	MOM_force Once X Y Z fourth_axis fifth_axis
	
	MOM_reload_variable -a mom_pos
	#MOM_reload_variable -a mom_prev_pos
	#MOM_reload_variable -a mom_out_angle_pos
	#MOM_reload_variable -a mom_prev_out_angle_pos
	
	#MOM_output_literal ";HHHHHHHHHHHHHHHHHHHHHHHH"


} else {

	set mom_warning_info "Операция ''$oper'' 5-ти осевая и при данном вылете инструмента," 
	append mom_warning_info "\n "
	append mom_warning_info "\n расположении нуля и виде траектории не может быть обработана" 
	MOM_output_to_listing_device $mom_warning_info 
	PB_CMD_Messages
	MOM_abort "Неправильная 5-ти осевая траектория!!!!!!" 

}
}



}
}


#=============================================================
proc PB_CMD_Polar_mode { } {
#=============================================================
global mom_sys_coordinate_output_mode

MOM_output_literal "mom_sys_coordinate_output_mode = $mom_sys_coordinate_output_mode"
#set mom_sys_coordinate_output_mode POLAR
}


#=============================================================
proc PB_CMD_Posle_perehvata { } {
#=============================================================
global mom_which_spindle mom_side_clump mom_distance_zc mom_distance_zc_clump 
global mom_spin_clump mom_time_clump mom_together_machining

global mom_which_spindle mom_side_clump mom_distance_zc mom_distance_zc_clump 
global mom_spin_clump mom_time_clump mom_together_machining H_user H_user2
global mom_right_spindle mom_which_spindle mom_offset_zero mom_sys_leader mom_sys_trailer

if {[info exist mom_right_spindle]} {

MOM_set_seq_off
MOM_output_literal "  " 
MOM_set_seq_on
unset mom_right_spindle

set mom_which_spindle "ПРАВЫЙ"
PB_CMD_set_modes

set mom_sys_leader(fifth_axis) "U"
set mom_sys_trailer(fifth_axis) ""
MOM_reload_variable mom_sys_leader(fifth_axis)
MOM_reload_variable mom_sys_trailer(fifth_axis)
#MOM_output_literal "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"


}
}


#=============================================================
proc PB_CMD_RECALC_ALPHA { } {
#=============================================================

global C_rot_prev alpha

set C_rot_prev_temp $C_rot_prev

if {$C_rot_prev_temp >= 0} {
while {$C_rot_prev_temp >= 360} {set C_rot_prev_temp [expr $C_rot_prev_temp - 360]}
	if {$C_rot_prev_temp <= 180} {set alpha [expr 1*$alpha]}
	if {$C_rot_prev_temp < 180} {set alpha [expr -1*$alpha]}
} else {
while {$C_rot_prev_temp <= -360} {set C_rot_prev_temp [expr $C_rot_prev_temp + 360]}
	if {$C_rot_prev_temp >= -180} {set alpha [expr -1*$alpha]}
	if {$C_rot_prev_temp < -180} {set alpha [expr 1*$alpha]}
}
}


#=============================================================
proc PB_CMD_RECALC_POS { } {
#=============================================================
global mom_pos mom_prev_pos prev_segment segment C_min_1
global X_rec Y_rec Z_rec alpha betta C_prev C_current del_BA RAD2DEG DEG2RAD
global mom_arc_angle


#MOM_output_literal "(!!!!!!!!segment = $segment)"
#MOM_output_literal "(!!!!!!!!prev_segment = $prev_segment)"

#MOM_output_literal "(RECALC_POS @@@@@@@@@@@@@@@)"

#set i_segment [expr cos(($C_min_1+180)*$DEG2RAD)] 
#set j_segment [expr sin(($C_min_1+180)*$DEG2RAD)] 

set i_segment [expr cos(($C_min_1+180)*$DEG2RAD)] 
set j_segment [expr sin(($C_min_1+180)*$DEG2RAD)]

set i_2 [expr ($mom_pos(0) - $mom_prev_pos(0))/sqrt(($mom_pos(0) - $mom_prev_pos(0))*($mom_pos(0) - $mom_prev_pos(0))+($mom_pos(1) - $mom_prev_pos(1))*($mom_pos(1) - $mom_prev_pos(1)))]
set j_2 [expr ($mom_pos(1) - $mom_prev_pos(1))/sqrt(($mom_pos(0) - $mom_prev_pos(0))*($mom_pos(0) - $mom_prev_pos(0))+($mom_pos(1) - $mom_prev_pos(1))*($mom_pos(1) - $mom_prev_pos(1)))]


set k [expr (-$i_segment*$mom_prev_pos(1))+($j_segment*$mom_prev_pos(0))]
#MOM_output_literal "(k = $k   @@@@@@@@@@@@@@@)"

set k_2 [expr ($i_segment*$j_2)-($j_segment*$i_2)]
#set k_2 [expr $mom_pos(0)-$mom_prev_pos(0)-$mom_pos(1)+$mom_prev_pos(1)]
#MOM_output_literal "(k_2 = $k_2   @@@@@@@@@@@@@@@)"


if {[expr abs(0 - abs($k_2))] < 0.0001} {
set X_rec 0
set Y_rec 0
} else {
set k [expr abs($k/$k_2)]
set X_rec [expr $mom_prev_pos(0) + $k*($i_2)]
set Y_rec [expr $mom_prev_pos(1) + $k*($j_2)]
}

set alpha [expr 180 - $prev_segment]
set betta [expr abs(abs($C_current) - abs($C_prev))]
set k_div [expr $alpha/$betta]
set razn [expr $mom_pos(2) - $mom_prev_pos(2)]
set Z_rec [expr $mom_prev_pos(2) + ($k_div*$razn)]
#MOM_output_literal "(!!!!!!!!alpha = $alpha)"
#MOM_output_literal "(!!!!!!!!betta = $betta)"
#MOM_output_literal "(!!!!!!!!k_div = $k_div)"
#MOM_output_literal "(!!!!!!!!razn = $razn)"
#MOM_output_literal "(!!!!!!!!Z_rec = $Z_rec)"
#MOM_output_literal "(!!!!!!!!mom_arc_angle = $mom_arc_angle)"


#MOM_output_literal "(i_segment = $i_segment  j_segment = $j_segment @@@@@@@@@@@@@@@)"
#MOM_output_literal "(k = $k   @@@@@@@@@@@@@@@)"




if {($X_rec >= 0) && ($Y_rec >= 0)} {set kvadrant_current 1}
if {($X_rec < 0) && ($Y_rec >= 0)} {set kvadrant_current 2}
if {($X_rec < 0) && ($Y_rec < 0)} {set kvadrant_current 3}
if {($X_rec >= 0) && ($Y_rec < 0)} {set kvadrant_current 4}

set root [expr sqrt(($X_rec*$X_rec)+($Y_rec*$Y_rec))]
set COS_cur [expr $X_rec/$root]
set C_current [expr acos($COS_cur)*$RAD2DEG]
	
if {$kvadrant_current == 4} {
	set C_current [expr 360 - $C_current]
}
if {$kvadrant_current == 3} {
	set C_current [expr 360 - $C_current]
}
if {$kvadrant_current == 2} {
	set C_current [expr $C_current]
}
if {$kvadrant_current == 1} {
	set C_current [expr $C_current]
}


#MOM_output_literal "(mom_prev_pos(0) = $mom_prev_pos(0) mom_prev_pos(1) = $mom_prev_pos(1) @@@@@@@@@@@@@@@)"
#MOM_output_literal "(mom_pos(0) = $mom_pos(0) mom_pos(1) = $mom_pos(1) @@@@@@@@@@@@@@@)"

#MOM_output_literal "(X_rec = $X_rec Y_rec = $Y_rec @@@@@@@@@@@@@@@)"
}


#=============================================================
proc PB_CMD_RECALC_POS_CIRCLE { } {
#=============================================================
global mom_pos mom_prev_pos prev_segment segment
global X_rec Y_rec Z_rec alpha C_prev C_current del_BA G2 RAD2DEG
global C_min C_min_1
global mom_pos_arc_center mom_arc_radius DEG2RAD C_rot_prev mom_arc_angle

global C_current segment C_max C_min C_rot
	#MOM_output_literal "(!!!!!!!!C_current = $C_current)"
	#MOM_output_literal "(!!!!!!!!segment = $segment)"
	#MOM_output_literal "(!!!!!!!!prev_segment = $prev_segment)"
	#MOM_output_literal "(!!!!!!!!C_max = $C_max)"
	#MOM_output_literal "(!!!!!!!!C_min_1 = $C_min_1)"
	#MOM_output_literal "(!!!!!!!!C_rot = $C_rot)"
	#MOM_output_literal "(!!!!!!!!C_rot = $C_rot_prev)"


set i_segment [expr cos(($C_min_1+180)*$DEG2RAD)] 
set j_segment [expr sin(($C_min_1+180)*$DEG2RAD)] 
#MOM_output_literal "(!!!!!!!!i_segment = $i_segment)"
#MOM_output_literal "(!!!!!!!!j_segment = $j_segment)"

set alpha [expr 180 - $prev_segment]
set betta [expr abs(abs($C_current) - abs($C_prev))]
set k_div [expr $alpha/$betta]
set razn [expr $mom_pos(2) - $mom_prev_pos(2)]
set Z_rec [expr $mom_prev_pos(2) + ($k_div*$razn)]
#MOM_output_literal "(!!!!!!!!alpha = $alpha)"
#MOM_output_literal "(!!!!!!!!betta = $betta)"
#MOM_output_literal "(!!!!!!!!k_div = $k_div)"
#MOM_output_literal "(!!!!!!!!razn = $razn)"
#MOM_output_literal "(!!!!!!!!Z_rec = $Z_rec)"
#MOM_output_literal "(!!!!!!!!mom_arc_angle = $mom_arc_angle)"



set I_big [expr $mom_pos_arc_center(0)]
set J_big [expr $mom_pos_arc_center(1)]

#MOM_output_literal "(!!!!!!!!I_big = $I_big)"
#MOM_output_literal "(!!!!!!!!J_big = $J_big)"



set d [expr (-1.*$I_big*$j_segment)+($J_big*$i_segment)]

#MOM_output_literal "(!!!!!!!!d = $d)"

#MOM_output_literal "(!!!!!!!!mom_arc_radius = $mom_arc_radius)"

set l1 [expr sqrt(($mom_arc_radius*$mom_arc_radius)-($d*$d))]
set L_general [expr $l1]

set X_0 [expr $I_big+($d*$j_segment)]
set Y_0 [expr $J_big-($d*$i_segment)]


#MOM_output_literal "(!!!!!!!!l1 = $l1)"
#MOM_output_literal "(!!!!!!!!L_general = $L_general)"
#MOM_output_literal "(!!!!!!!!mom_arc_radius = $mom_arc_radius)"


set X_rec_plus [expr $X_0+($L_general*$i_segment)]
set Y_rec_plus [expr $Y_0+($L_general*$j_segment)]

set X_rec_minus [expr $X_0-($L_general*$i_segment)]
set Y_rec_minus [expr $Y_0-($L_general*$j_segment)]

set horda1_plus [expr sqrt(($mom_prev_pos(0)-$X_rec_plus)*($mom_prev_pos(0)-$X_rec_plus)+($mom_prev_pos(1)-$Y_rec_plus)*($mom_prev_pos(1)-$Y_rec_plus))]
set horda2_plus [expr sqrt(($mom_pos(0)-$X_rec_plus)*($mom_pos(0)-$X_rec_plus)+($mom_pos(1)-$Y_rec_plus)*($mom_pos(1)-$Y_rec_plus))]

set horda1_minus [expr sqrt(($mom_prev_pos(0)-$X_rec_minus)*($mom_prev_pos(0)-$X_rec_minus)+($mom_prev_pos(1)-$Y_rec_minus)*($mom_prev_pos(1)-$Y_rec_minus))]
set horda2_minus [expr sqrt(($mom_pos(0)-$X_rec_minus)*($mom_pos(0)-$X_rec_minus)+($mom_pos(1)-$Y_rec_minus)*($mom_pos(1)-$Y_rec_minus))]

set sum_hord_plus [expr $horda1_plus + $horda2_plus]
set sum_hord_minus [expr $horda1_minus + $horda2_minus]

if {$sum_hord_plus < $sum_hord_minus} {
set X_rec $X_rec_plus
set Y_rec $Y_rec_plus
} else {
set X_rec $X_rec_minus
set Y_rec $Y_rec_minus
}

if {($X_rec >= 0) && ($Y_rec >= 0)} {set kvadrant_current 1}
if {($X_rec < 0) && ($Y_rec >= 0)} {set kvadrant_current 2}
if {($X_rec < 0) && ($Y_rec < 0)} {set kvadrant_current 3}
if {($X_rec >= 0) && ($Y_rec < 0)} {set kvadrant_current 4}

set root [expr sqrt(($X_rec*$X_rec)+($Y_rec*$Y_rec))]
set COS_cur [expr $X_rec/$root]
set C_current [expr acos($COS_cur)*$RAD2DEG]
	
if {$kvadrant_current == 4} {
	set C_current [expr 360 - $C_current]
}
if {$kvadrant_current == 3} {
	set C_current [expr 360 - $C_current]
}
if {$kvadrant_current == 2} {
	set C_current [expr $C_current]
}
if {$kvadrant_current == 1} {
	set C_current [expr $C_current]
}






#MOM_output_literal "(sum_hord_plus = $sum_hord_plus sum_hord_minus = $sum_hord_minus @@@@@@@@@@@@@@@)"
#MOM_output_literal "(X_rec_plus = $X_rec_plus Y_rec_plus = $Y_rec_plus @@@@@@@@@@@@@@@)"
#MOM_output_literal "(X_rec_minus = $X_rec_minus  Y_rec_minus  = $Y_rec_minus  @@@@@@@@@@@@@@@)"



#MOM_output_literal "(mom_prev_pos(0) = $mom_prev_pos(0) mom_prev_pos(1) = $mom_prev_pos(1) @@@@@@@@@@@@@@@)"
#MOM_output_literal "(I_temp_new = $I_temp_new J_temp_new = $J_temp_new @@@@@@@@@@@@@@@)"
}


#=============================================================
proc PB_CMD_REDIRECT_ORIGIN { } {
#=============================================================
global mom_output_file_full_name ptp_file_name tmp2_file_name mom_pos G2 tmp2_file_name
global file_created

set file_created 1

#MOM_output_literal "REDIRECT!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

set tmp2_file_name "${ptp_file_name}__"

if {[file exists $tmp2_file_name]} {
	MOM_remove_file $tmp2_file_name
}

MOM_close_output_file $ptp_file_name
MOM_open_output_file $tmp2_file_name
}


#=============================================================
proc PB_CMD_REDIRECT_TO_1 { } {
#=============================================================
global mom_output_file_full_name ptp_file_name tmp2_file_name mom_out_angle_pos PI mom_P_num
global C_rot_prev C_rot
global mom_prev_pos mom_pos
global X_pre Y_pre Z_pre rotate_need
global X_cur Y_cur Z_cur B_cur C_cur H_cur
global B_recalc C_recalc B_prev2 C_prev2 G43_4_prev Z_pre_cur mom_tool_number
global first_after_tool2 mom_podvorot_on
global head_num
global M212_mode M210_mode

set angle_form0 [format "%.3f" $mom_out_angle_pos(0)]
set angle_form1 [format "%.3f" $mom_out_angle_pos(1)]

set SINUS_calc [expr sin($angle_form0 * $PI / 360.)]
set SINUS_calc [format "%.8f" $SINUS_calc]

set COSINUS_calc [expr cos($angle_form0 * $PI / 360.)]
set COSINUS_calc [format "%.8f" $COSINUS_calc]

set COSINUS_calc_real [expr cos($angle_form0 * $PI / 180.)]
set COSINUS_calc_real [format "%.8f" $COSINUS_calc_real]

set SINUS_calc_real [expr sin($angle_form0 * $PI / 180.)]
set SINUS_calc_real [format "%.8f" $SINUS_calc_real]

MOM_close_output_file $tmp2_file_name
set ifile [open $tmp2_file_name r]
set ofile [open $ptp_file_name a]

#puts $ofile "G68!!!!!!!!!!!!!"

if {$rotate_need == 0} {set C_rot 0}

puts $ofile "\#818 = $C_rot"
puts $ofile  "\#600=\[\[\#\[60000+\#3020\]+300.086\]*\[$SINUS_calc*2\]\]"
puts $ofile  "\#810=\[\#600*\[$COSINUS_calc\]\]"
puts $ofile  "\#812=\[\#600*\[$SINUS_calc\]\]"

if {$angle_form0 == 0} {
	if {($B_prev2 != 0) || ($G43_4_prev == 1)} {
	puts $ofile  "G0 G53 Z0" 
	}
if {$first_after_tool2 == 0} {
if [info exist mom_podvorot_on] {
puts $ofile  "G0 G91 Z100."
puts $ofile  "G90"
}
}
set first_after_tool2 0
puts $ofile  "G0 B0 C\[\#818+$angle_form1\]" 
}
if {($mom_P_num > 0) && ($mom_P_num < 49)} {
	puts $ofile  "G65 P9998 C\[\#818+$angle_form1\] Q$mom_P_num"
} else {
	puts $ofile  "G65 P9998 C\[\#818+$angle_form1\] Q0"
}
	if ![info exist B_cur] {
		if {$head_num == 117} {
		puts $ofile  "\#610=\[\[\#\[61000+\#3020\]\]*\[$COSINUS_calc_real\]\]"
		puts $ofile  "\#611=\[\[\#\[61000+\#3020\]\]*\[$SINUS_calc_real\]\]"
		puts $ofile "G68 X\[\#810+\#800+\#610\] Y\[\#801\] Z\[-\#812-\#611\] I0 J0 K1 R\[-\#818\]"
		} 
		if {$head_num == 118} {
		puts $ofile  "\#610=\[\[\#\[61000+\#3020\]\]*\[$COSINUS_calc_real\]\]"
		puts $ofile  "\#611=\[\[\#\[61000+\#3020\]\]*\[$SINUS_calc_real\]\]"
		puts $ofile "G68 X\[\#810+\#800-\#610\] Y\[\#801\] Z\[-\#812+\#611\] I0 J0 K1 R\[-\#818\]"
		} 
		if {$head_num == 0} {
		puts $ofile "G68 X\[\#810+\#800\] Y\[\#801\] Z\[-\#812\] I0 J0 K1 R\[-\#818\]"
		}
	}


puts $ofile  "M107 M$M210_mode"
if [info exist B_cur] {
if {($B_recalc != $B_prev2) || ($C_recalc != $C_prev2)} {
puts $ofile  "\#600=\[\[\#\[60000+\#3020\]+300.086\]*\[$COSINUS_calc_real\]\]"
		if {$head_num == 117} {
		puts $ofile  "\#610=\[\[\#\[61000+\#3020\]\]*\[$COSINUS_calc_real\]\]"
		puts $ofile  "\#611=\[\[\#\[61000+\#3020\]\]*\[$SINUS_calc_real\]\]"
		} 
		if {$head_num == 118} {
		puts $ofile  "\#610=\[\[\#\[61000+\#3020\]\]*\[$COSINUS_calc_real\]\]"
		puts $ofile  "\#611=\[\[\#\[61000+\#3020\]\]*\[$SINUS_calc_real\]\]"
		} 
puts $ofile  "G43.4 G0 X$X_cur Y$Y_cur B$B_cur C$C_cur G91 Z\[-\#600\] H$H_cur"
puts $ofile  "G90"
puts $ofile  "G49"
}
puts $ofile  "T$H_cur M06"
} else {
puts $ofile  "G0 X$X_cur Y$Y_cur"
puts $ofile  "G0 G43 Z$Z_pre_cur H$mom_tool_number"
}
puts $ofile  "G69"
if {$head_num == 117} {
puts $ofile  "G68 X\[\#800+\#610\] Y\[\#801\] Z\[-\#611\] I0 J0 K1 R\[-\#818\]"
} 
if {$head_num == 118} {
puts $ofile  "G68 X\[\#800-\#610\] Y\[\#801\] Z\[\#611\] I0 J0 K1 R\[-\#818\]"
} 
if {$head_num == 0} {
puts $ofile  "G68 X\[\#800\] Y\[\#801\] Z0 I0 J0 K1 R\[-\#818\]"
}
puts $ofile  "G68 X0 Y0 Z0 I0 J1 K0 R$angle_form0"
puts $ofile  "G61.1"

#puts $ofile  "(#########################################)"



set buf ""
while { [gets $ifile buf] > 0 } {
puts $ofile $buf
}

close $ifile
close $ofile
#MOM_remove_file $tmp2_file_name
MOM_open_output_file $ptp_file_name
}


#=============================================================
proc PB_CMD_REDIRECT_TO_1_2 { } {
#=============================================================
global mom_output_file_full_name ptp_file_name tmp2_file_name mom_out_angle_pos PI mom_P_num
global C_rot_prev C_rot
global mom_prev_pos mom_pos
global X_pre Y_pre Z_pre alpha mom_motion_event mom_motion_event_prev G2
global I_temp_new J_temp_new
global I_temp J_temp Kod
global mom_sys_circle_code mom_arc_direction zapret_G2
global mom_prev_prev_pos
global X_cur Y_cur Z_cur B_cur C_cur H_cur
global B_recalc C_recalc B_prev2 C_prev2 G43_4_prev Z_pre_cur mom_tool_number
global first_after_tool2 mom_podvorot_on
global head_num
global M212_mode M210_mode



set angle_form0 [format "%.3f" $mom_out_angle_pos(0)]
set angle_form1 [format "%.3f" $mom_out_angle_pos(1)]
set SINUS_calc [expr sin($angle_form0 * $PI / 360.)]
set SINUS_calc [format "%.8f" $SINUS_calc]
set COSINUS_calc [expr cos($angle_form0 * $PI / 360.)]
set COSINUS_calc [format "%.8f" $COSINUS_calc]
set COSINUS_calc_real [expr cos($angle_form0 * $PI / 180.)]
set COSINUS_calc_real [format "%.8f" $COSINUS_calc_real]
set SINUS_calc_real [expr sin($angle_form0 * $PI / 180.)]
set SINUS_calc_real [format "%.8f" $SINUS_calc_real]

MOM_close_output_file $tmp2_file_name
set ifile [open $tmp2_file_name r]
set ofile [open $ptp_file_name a]

#puts $ofile "(!!!!!!!!mom_motion_event_prev = $mom_motion_event_prev)"
#puts $ofile "(!!!!!!!!mom_pos(0) = $mom_pos(0) mom_pos(1) = $mom_pos(1))"

global C_current segment C_max C_min C_rot
#puts $ofile "(!!!!!!!!C_current = $C_current)"
#puts $ofile "(!!!!!!!!segment = $segment)"
#puts $ofile "(!!!!!!!!C_max = $C_max)"
#puts $ofile "(!!!!!!!!C_min = $C_min)"
#puts $ofile "(!!!!!!!!DELTA_segment = $delta_segment)"
#puts $ofile "(!!!!!!!!C_current = $C_current)"
#puts $ofile "(!!!!!!!!C_rot = $C_rot)"

set C_rot_prev [format "%.3f" $C_rot_prev]
set alpha [format "%.3f" $alpha]


puts $ofile "\#818 = $C_rot"

puts $ofile  "\#600=\[\[\#\[60000+\#3020\]+300.086\]*\[$SINUS_calc*2\]\]"
puts $ofile  "\#810=\[\#600*\[$COSINUS_calc\]\]"
puts $ofile  "\#812=\[\#600*\[$SINUS_calc\]\]"

if {$angle_form0 == 0} {
	if {($B_prev2 != 0) || ($G43_4_prev == 1)} {
	puts $ofile  "G0 G53 Z0" 
	}
if {$first_after_tool2 == 0} {
if [info exist mom_podvorot_on] {
puts $ofile  "G0 G91 Z100."
puts $ofile  "G90"
}
}
set first_after_tool2 0
puts $ofile  "G0 B0 C\[\#818+$angle_form1\]" 
}
if {($mom_P_num > 0) && ($mom_P_num < 49)} {
	puts $ofile  "G65 P9998 C\[\#818+$angle_form1\] Q$mom_P_num"
} else {
	puts $ofile  "G65 P9998 C\[\#818+$angle_form1\] Q0"
}
	if ![info exist B_cur] {
		if {$head_num == 117} {
		puts $ofile  "\#610=\[\[\#\[61000+\#3020\]\]*\[$COSINUS_calc_real\]\]"
		puts $ofile  "\#611=\[\[\#\[61000+\#3020\]\]*\[$SINUS_calc_real\]\]"
		puts $ofile "G68 X\[\#810+\#800+\#610\] Y\[\#801\] Z\[-\#812-\#611\] I0 J0 K1 R\[-\#818\]"
		} 
		if {$head_num == 118} {
		puts $ofile  "\#610=\[\[\#\[61000+\#3020\]\]*\[$COSINUS_calc_real\]\]"
		puts $ofile  "\#611=\[\[\#\[61000+\#3020\]\]*\[$SINUS_calc_real\]\]"
		puts $ofile "G68 X\[\#810+\#800-\#610\] Y\[\#801\] Z\[-\#812+\#611\] I0 J0 K1 R\[-\#818\]"
		} 
		if {$head_num == 0} {
		puts $ofile "G68 X\[\#810+\#800\] Y\[\#801\] Z\[-\#812\] I0 J0 K1 R\[-\#818\]"
		}
	}


puts $ofile  "M107 M$M210_mode"
if [info exist B_cur] {
if {($B_recalc != $B_prev2) || ($C_recalc != $C_prev2)} {
puts $ofile  "\#600=\[\[\#\[60000+\#3020\]+300.086\]*\[$COSINUS_calc_real\]\]"
		if {$head_num == 117} {
		puts $ofile  "\#610=\[\[\#\[61000+\#3020\]\]*\[$COSINUS_calc_real\]\]"
		puts $ofile  "\#611=\[\[\#\[61000+\#3020\]\]*\[$SINUS_calc_real\]\]"
		} 
		if {$head_num == 118} {
		puts $ofile  "\#610=\[\[\#\[61000+\#3020\]\]*\[$COSINUS_calc_real\]\]"
		puts $ofile  "\#611=\[\[\#\[61000+\#3020\]\]*\[$SINUS_calc_real\]\]"
		} 
puts $ofile  "G43.4 G0 X$X_cur Y$Y_cur B$B_cur C$C_cur G91 Z\[-\#600\] H$H_cur"
puts $ofile  "G90"
puts $ofile  "G49"
}
puts $ofile  "T$H_cur M06"
} else {
puts $ofile  "G0 X$X_cur Y$Y_cur"
puts $ofile  "G0 G43 Z$Z_pre_cur H$mom_tool_number"
}
puts $ofile  "G69"
if {$head_num == 117} {
puts $ofile  "G68 X\[\#800+\#610\] Y\[\#801\] Z\[-\#611\] I0 J0 K1 R\[-\#818\]"
} 
if {$head_num == 118} {
puts $ofile  "G68 X\[\#800-\#610\] Y\[\#801\] Z\[\#611\] I0 J0 K1 R\[-\#818\]"
}
if {$head_num == 0} {
puts $ofile  "G68 X\[\#800\] Y\[\#801\] Z0 I0 J0 K1 R\[-\#818\]"
}
puts $ofile  "G68 X0 Y0 Z0 I0 J1 K0 R$angle_form0"
puts $ofile  "G61.1"

#puts $ofile  "(#########################################)"



set buf ""
set first_I 0
#set G2 0
set count_buf 0
while { [gets $ifile buf] > 0 } {
	set I_temp 999999
	set J_temp 999999
for { set nn 0 } { $nn < [llength $buf] } { set nn [expr $nn+1]} {
	if {([lindex $buf $nn] == "G2") || ([lindex $buf $nn] == "G3")} {
	}
	if {[string index [lindex $buf $nn] 0] == "I"} {
	if {$first_I == 0} {
	}
	set I_temp [string range [lindex $buf $nn] 1 end]
	}
	if {[string index [lindex $buf $nn] 0] == "J"} {
	if {$first_I == 0} {
	set first_I 1
	}
	set J_temp [string range [lindex $buf $nn] 1 end]
	}
}
	puts $ofile $buf
	set count_buf [expr $count_buf + 1]
}

close $ifile
close $ofile
#MOM_remove_file $tmp2_file_name
MOM_open_output_file $ptp_file_name

global I_temp J_temp mom_pos_arc_center mom_prev_pos event_before mom_motion_event

global I_temp_new J_temp_new mom_pos_arc_center X_rec Y_rec
if [info exist mom_pos_arc_center] {
set I_temp_new [expr $mom_pos_arc_center(0) - $X_rec]
set J_temp_new [expr $mom_pos_arc_center(1) - $Y_rec]

set I_temp_new [format "%.3f" $I_temp_new]
set J_temp_new [format "%.3f" $J_temp_new]
}

set mom_motion_event_prev $mom_motion_event
if {($mom_motion_event == "circular_move") || ($mom_motion_event == "helix_move")} {
set Kod [expr $mom_sys_circle_code($mom_arc_direction)]
set I_temp [expr $mom_pos_arc_center(0) - $mom_prev_pos(0)]
set J_temp [expr $mom_pos_arc_center(1) - $mom_prev_pos(1)]
set I_temp [format "%.3f" $I_temp]
set J_temp [format "%.3f" $J_temp]
}

PB_CMD_CHECK_ZAPRET
}


#=============================================================
proc PB_CMD_REDIRECT_TO_TEMP { } {
#=============================================================
global mom_output_file_full_name ptp_file_name tmp2_file_name mom_out_angle_pos PI mom_P_num
global C_rot_prev C_rot feed
global mom_arc_direction mom_sys_circle_code
global mom_prev_pos
global X_pre Y_pre Z_pre alpha mom_pos_arc_center mom_motion_event mom_motion_event_prev
global I_temp J_temp G2 Kod
global I_temp_new J_temp_new mom_pos mom_pos_arc_center X_rec Y_rec zapret_G2
global mom_prev_prev_pos
global X_cur Y_cur Z_cur B_cur C_cur H_cur mom_z_safe mom_z_up
global B_prev2
global head_num
global M212_mode M210_mode


if ![info exist Z_pre] {set Z_pre $Z_cur}
if ![info exist X_pre] {set X_pre $X_cur}
if ![info exist Y_pre] {set Y_pre $Y_cur}

if [info exist mom_z_safe] {
set Z_safe [expr $Z_pre + $mom_z_safe]
} else {
set Z_safe [expr $Z_pre + 100]
}
set Z_safe [format "%.3f" $Z_safe]

set X_pre [format "%.3f" $X_pre]
set Y_pre [format "%.3f" $Y_pre]
set Z_pre [format "%.3f" $Z_pre]


set angle_form0 [format "%.3f" $mom_out_angle_pos(0)]
set angle_form1 [format "%.3f" $mom_out_angle_pos(1)]
set SINUS_calc [expr sin($angle_form0 * $PI / 360.)]
set SINUS_calc [format "%.8f" $SINUS_calc]
set COSINUS_calc [expr cos($angle_form0 * $PI / 360.)]
set COSINUS_calc [format "%.8f" $COSINUS_calc]
set COSINUS_calc_real [expr cos($angle_form0 * $PI / 180.)]
set COSINUS_calc_real [format "%.8f" $COSINUS_calc_real]

set SINUS_calc_real [expr sin($angle_form0 * $PI / 180.)]
set SINUS_calc_real [format "%.8f" $SINUS_calc_real]


MOM_close_output_file $tmp2_file_name
set ifile [open $tmp2_file_name r]
set ofile [open $ptp_file_name a]

global C_current segment C_max C_min C_rot

if {($mom_motion_event_prev == "circular_move") || ($mom_motion_event_prev == "helix_move")} {
if {$zapret_G2 == 0} {
puts $ofile "G$Kod X$X_pre Y$Y_pre Z$Z_pre I$I_temp J$J_temp"
}
set G1 0
} else {
if {$zapret_G2 == 0} {
puts $ofile "G1 X$X_pre Y$Y_pre Z$Z_pre"
}
set G1 1
}



puts $ofile "G69"
puts $ofile "G1 Z$Z_safe"
if [info exist mom_z_safe] {
set z_up [expr $Z_pre + $mom_z_up]
set z_up [format "%.3f" $z_up]
puts $ofile "G0 Z$z_up"
} 
#puts $ofile "G0 G53 Z0."

set C_rot_prev [format "%.3f" $C_rot_prev]
set alpha [format "%.3f" $alpha]

#PB_CMD_RECALC_ALPHA
#puts $ofile "\#818 = $C_rot_prev + \[$alpha/2\]"

puts $ofile "\#818 = $C_rot"

puts $ofile  "\#600=\[\[\#\[60000+\#3020\]+300.086\]*\[$SINUS_calc*2\]\]"
puts $ofile  "\#810=\[\#600*\[$COSINUS_calc\]\]"
puts $ofile  "\#812=\[\#600*\[$SINUS_calc\]\]"

if {$angle_form0 == 0} {
puts $ofile  "G0 B0 C\[\#818+$angle_form1\]" 
}
if {($mom_P_num > 0) && ($mom_P_num < 49)} {
	puts $ofile  "G65 P9998 C\[\#818+$angle_form1\] Q$mom_P_num"
} else {
	puts $ofile  "G65 P9998 C\[\#818+$angle_form1\] Q0"
}
		if {$head_num == 117} {
		puts $ofile  "\#610=\[\[\#\[61000+\#3020\]\]*\[$COSINUS_calc_real\]\]"
		puts $ofile  "\#611=\[\[\#\[61000+\#3020\]\]*\[$SINUS_calc_real\]\]"
		puts $ofile "G68 X\[\#810+\#800+\#610\] Y\[\#801\] Z\[-\#812-\#611\] I0 J0 K1 R\[-\#818\]"
		} 
		if {$head_num == 118} {
		puts $ofile  "\#610=\[\[\#\[61000+\#3020\]\]*\[$COSINUS_calc_real\]\]"
		puts $ofile  "\#611=\[\[\#\[61000+\#3020\]\]*\[$SINUS_calc_real\]\]"
		puts $ofile "G68 X\[\#810+\#800-\#610\] Y\[\#801\] Z\[-\#812+\#611\] I0 J0 K1 R\[-\#818\]"
		} 
		if {$head_num == 0} {
		puts $ofile "G68 X\[\#810+\#800\] Y\[\#801\] Z\[-\#812\] I0 J0 K1 R\[-\#818\]"
		}


puts $ofile  "M107 M$M210_mode"
puts $ofile  "G0 X$X_pre Y$Y_pre"
puts $ofile  "G69"

if {$head_num == 117} {
puts $ofile  "G68 X\[\#800+\#610\] Y\[\#801\] Z\[-\#611\] I0 J0 K1 R\[-\#818\]"
} 
if {$head_num == 118} {
puts $ofile  "G68 X\[\#800-\#610\] Y\[\#801\] Z\[\#611\] I0 J0 K1 R\[-\#818\]"
}
if {$head_num == 0} {
puts $ofile  "G68 X\[\#800\] Y\[\#801\] Z0 I0 J0 K1 R\[-\#818\]"
}

puts $ofile  "G68 X0 Y0 Z0 I0 J1 K0 R$angle_form0"
puts $ofile "G0 Z$Z_safe "
puts $ofile "G1 Z$Z_pre F1000."


set buf ""
set first_I 0
set count_buf 0
set G2 0
while { [gets $ifile buf] > 0 } {
	set I_temp 999999
	set J_temp 999999
for { set nn 0 } { $nn < [llength $buf] } { set nn [expr $nn+1]} {
	if {([lindex $buf $nn] == "G2") || ([lindex $buf $nn] == "G3")} {
	} 
	if {[string index [lindex $buf $nn] 0] == "I"} {
		if {($first_I == 0) && ($G1!=1)} {
			set buf [lreplace $buf $nn $nn I$I_temp_new]
		}
		set I_temp [string range [lindex $buf $nn] 1 end]
	}
	if {[string index [lindex $buf $nn] 0] == "J"} {
		if {($first_I == 0) && ($G1!=1)} {
			set buf [lreplace $buf $nn $nn J$J_temp_new]
			set first_I 1
		}
		set J_temp [string range [lindex $buf $nn] 1 end]
	}
}
	puts $ofile $buf
	set count_buf [expr $count_buf + 1]
}

close $ifile
close $ofile
#MOM_remove_file $tmp2_file_name
MOM_open_output_file $ptp_file_name




set mom_motion_event_prev $mom_motion_event
if {($mom_motion_event == "circular_move") || ($mom_motion_event == "helix_move")} {
set Kod [expr $mom_sys_circle_code($mom_arc_direction)]
set I_temp [expr $mom_pos_arc_center(0) - $mom_prev_pos(0)]
set J_temp [expr $mom_pos_arc_center(1) - $mom_prev_pos(1)]
set I_temp [format "%.3f" $I_temp]
set J_temp [format "%.3f" $J_temp]
}

PB_CMD_CHECK_ZAPRET
}


#=============================================================
proc PB_CMD_REDIRECT_TO_TEMP_END { } {
#=============================================================
global mom_output_file_full_name ptp_file_name tmp2_file_name mom_out_angle_pos PI mom_P_num
global C_rot_prev C_rot feed
global mom_arc_direction mom_sys_circle_code
global mom_prev_pos
global X_pre Y_pre Z_pre alpha mom_pos_arc_center mom_motion_event mom_motion_event_prev
global I_temp J_temp G2 Kod
global I_temp_new J_temp_new mom_pos mom_pos_arc_center X_rec Y_rec zapret_G2
global mom_prev_prev_pos
global X_cur Y_cur Z_cur B_cur C_cur H_cur mom_z_safe mom_z_up
global head_num
global M212_mode M210_mode


if ![info exist Z_pre] {set Z_pre $Z_cur}
if ![info exist X_pre] {set X_pre $X_cur}
if ![info exist Y_pre] {set Y_pre $Y_cur}

if [info exist mom_z_safe] {
set Z_safe [expr $Z_pre + $mom_z_safe]
} else {
set Z_safe [expr $Z_pre + 100]
}
set Z_safe [format "%.3f" $Z_safe]

set X_pre [format "%.3f" $X_pre]
set Y_pre [format "%.3f" $Y_pre]
set Z_pre [format "%.3f" $Z_pre]


set angle_form0 [format "%.3f" $mom_out_angle_pos(0)]
set angle_form1 [format "%.3f" $mom_out_angle_pos(1)]
set SINUS_calc [expr sin($angle_form0 * $PI / 360.)]
set SINUS_calc [format "%.8f" $SINUS_calc]
set COSINUS_calc [expr cos($angle_form0 * $PI / 360.)]
set COSINUS_calc [format "%.8f" $COSINUS_calc]
set COSINUS_calc_real [expr cos($angle_form0 * $PI / 180.)]
set COSINUS_calc_real [format "%.8f" $COSINUS_calc_real]

set SINUS_calc_real [expr sin($angle_form0 * $PI / 180.)]
set SINUS_calc_real [format "%.8f" $SINUS_calc_real]


MOM_close_output_file $tmp2_file_name
set ifile [open $tmp2_file_name r]
set ofile [open $ptp_file_name a]

global C_current segment C_max C_min C_rot


if {$mom_motion_event_prev == "circular_move"} {
if {$zapret_G2 == 0} {
puts $ofile "G$Kod X$X_pre Y$Y_pre Z$Z_pre I$I_temp J$J_temp"
}
set G1 0
} else {
if {$zapret_G2 == 0} {
puts $ofile "G1 X$X_pre Y$Y_pre Z$Z_pre"
}
set G1 1
}



puts $ofile "G69"
puts $ofile "G1 Z$Z_safe"
if [info exist mom_z_safe] {
set z_up [expr $Z_pre + $mom_z_up]
set z_up [format "%.3f" $z_up]
puts $ofile "G0 Z$z_up"
} 
#puts $ofile "G0 G53 Z0."

set C_rot_prev [format "%.3f" $C_rot_prev]
set alpha [format "%.3f" $alpha]

#PB_CMD_RECALC_ALPHA
#puts $ofile "\#818 = $C_rot_prev + \[$alpha/2\]"

puts $ofile "\#818 = $C_rot"

puts $ofile  "\#600=\[\[\#\[60000+\#3020\]+300.086\]*\[$SINUS_calc*2\]\]"
puts $ofile  "\#810=\[\#600*$COSINUS_calc\]"
puts $ofile  "\#812=\[\#600*$SINUS_calc\]"

if {$angle_form0 == 0} {
puts $ofile  "G0 B0 C\[\#818+$angle_form1\]" 
}
if {($mom_P_num > 0) && ($mom_P_num < 49)} {
	puts $ofile  "G65 P9998 C\[\#818+$angle_form1\] Q$mom_P_num"
} else {
	puts $ofile  "G65 P9998 C\[\#818+$angle_form1\] Q0"
}
		if {$head_num == 117} {
		puts $ofile  "\#610=\[\[\#\[61000+\#3020\]\]*\[$COSINUS_calc_real\]\]"
		puts $ofile  "\#611=\[\[\#\[61000+\#3020\]\]*\[$SINUS_calc_real\]\]"
		puts $ofile "G68 X\[\#810+\#800+\#610\] Y\[\#801\] Z\[-\#812-\#611\] I0 J0 K1 R\[-\#818\]"
		} 
		if {$head_num == 118} {
		puts $ofile  "\#610=\[\[\#\[61000+\#3020\]\]*\[$COSINUS_calc_real\]\]"
		puts $ofile  "\#611=\[\[\#\[61000+\#3020\]\]*\[$SINUS_calc_real\]\]"
		puts $ofile "G68 X\[\#810+\#800-\#610\] Y\[\#801\] Z\[-\#812+\#611\] I0 J0 K1 R\[-\#818\]"
		} 
		if {$head_num == 0} {
		puts $ofile "G68 X\[\#810+\#800\] Y\[\#801\] Z\[-\#812\] I0 J0 K1 R\[-\#818\]"
		}


puts $ofile  "M107 M$M210_mode"
puts $ofile  "G0 X$X_pre Y$Y_pre"
puts $ofile  "G69"

if {$head_num == 117} {
puts $ofile  "G68 X\[\#800+\#610\] Y\[\#801\] Z\[-\#611\] I0 J0 K1 R\[-\#818\]"
} 
if {$head_num == 118} {
puts $ofile  "G68 X\[\#800-\#610\] Y\[\#801\] Z\[\#611\] I0 J0 K1 R\[-\#818\]"
}
if {$head_num == 0} {
puts $ofile  "G68 X\[\#800\] Y\[\#801\] Z0 I0 J0 K1 R\[-\#818\]"
}

puts $ofile  "G68 X0 Y0 Z0 I0 J1 K0 R$angle_form0"
puts $ofile "G0 Z$Z_safe "
puts $ofile "G1 Z$Z_pre F1000."


set buf ""
set first_I 0
set count_buf 0
set G2 0
while { [gets $ifile buf] > 0 } {
	set I_temp 999999
	set J_temp 999999
for { set nn 0 } { $nn < [llength $buf] } { set nn [expr $nn+1]} {
	if {([lindex $buf $nn] == "G2") || ([lindex $buf $nn] == "G3")} {
	} 
	if {[string index [lindex $buf $nn] 0] == "I"} {
		if {($first_I == 0) && ($G1!=1)} {
			set buf [lreplace $buf $nn $nn I$I_temp_new]
		}
		set I_temp [string range [lindex $buf $nn] 1 end]
	}
	if {[string index [lindex $buf $nn] 0] == "J"} {
		if {($first_I == 0) && ($G1!=1)} {
			set buf [lreplace $buf $nn $nn J$J_temp_new]
			set first_I 1
		}
		set J_temp [string range [lindex $buf $nn] 1 end]
	}
}
	puts $ofile $buf
	set count_buf [expr $count_buf + 1]
}

close $ifile
close $ofile
#MOM_remove_file $tmp2_file_name
MOM_open_output_file $ptp_file_name




set mom_motion_event_prev $mom_motion_event
if {($mom_motion_event == "circular_move") || ($mom_motion_event == "helix_move")} {
set Kod [expr $mom_sys_circle_code($mom_arc_direction)]
set I_temp [expr $mom_pos_arc_center(0) - $mom_prev_pos(0)]
set J_temp [expr $mom_pos_arc_center(1) - $mom_prev_pos(1)]
set I_temp [format "%.3f" $I_temp]
set J_temp [format "%.3f" $J_temp]
}

PB_CMD_CHECK_ZAPRET
}


#=============================================================
proc PB_CMD_Rotate_emulation { } {
#=============================================================
global mom_rotate_axis_type mom_rotation_angle mom_rotation_mode
global mom_out_angle_pos

#MOM_output_literal "ANGLEEEEEEEEEEEEEEEE=$mom_rotation_angle"
#if {$mom_rotation_angle != 0} {
set mom_rotate_axis_type CAXIS
set mom_rotation_mode "ABSOLUTE"
set mom_rotation_angle 0

#MOM_output_literal "G90"
#MOM_rotate
#}

#MOM_output_literal "ANGLEEEEEEEEEEEEEEEE=$mom_rotation_angle"
}


#=============================================================
proc PB_CMD_STOP { } {
#=============================================================
global metka2 mom_seqnum mom_stop_text

PB_CMD_OTSKOK
MOM_output_literal "G10.9X0"
if [info exist mom_stop_text] {
MOM_output_literal "($mom_stop_text)"
unset mom_stop_text
}
MOM_output_literal "M0"
MOM_set_seq_on
set metka2 [expr $metka2 + 1]
MOM_force once T M
MOM_do_template tool_change_2
MOM_set_seq_off
PB_CMD_OTSKOK
MOM_output_literal "G10.9X0"
}


#=============================================================
proc PB_CMD_STOP_INIT { } {
#=============================================================
global stop_inited
set stop_inited 1
}


#=============================================================
proc PB_CMD_Sbros_5axis_flag2 { } {
#=============================================================
global 5axis_flag2 G54_flag mom_from_pos mom_gohome_pos mom_pos
global from_flag


set 5axis_flag2 0
#MOM_output_literal "M44"


set from_flag 0

set G54_flag 0
}


#=============================================================
proc PB_CMD_Segment { } {
#=============================================================
global mom_pos mom_prev_pos RAD2DEG DEG2RAD segment_prev
global delta_C C_rot C_prev C_rot_prev C_current
global C_max C_min check_was rotate_need segment
global more_180 ugol ugol_prev delta array_rot_C prev_segment delta_segment
global X_rec Y_rec Z_rec alpha del_BA Z_pre_cur
global mom_motion_event G2 mom_motion_event_before C_min_1 mom_motion_event_prev

global X_pre Y_pre Z_pre X_cur Y_cur Z_cur first_time_180 one_time
global C_min_prev C_max_prev mom_podvorot_on

global add_angle

#set add_angle [expr atan(300/$mom_pos(1))*$RAD2DEG]
#MOM_output_literal "(!!!!!!!!add_angle = $add_angle)"

if [info exist mom_podvorot_on] {

if {($mom_pos(0) >= 0) && ($mom_pos(1) >= 0)} {set kvadrant_current 1}
if {($mom_pos(0) < 0) && ($mom_pos(1) >= 0)} {set kvadrant_current 2}
if {($mom_pos(0) < 0) && ($mom_pos(1) < 0)} {set kvadrant_current 3}
if {($mom_pos(0) >= 0) && ($mom_pos(1) < 0)} {set kvadrant_current 4}

set root [expr sqrt(($mom_pos(0)*$mom_pos(0))+($mom_pos(1)*$mom_pos(1)))]
set COS_cur [expr $mom_pos(0)/$root]
set C_current [expr acos($COS_cur)*$RAD2DEG]
	
if {$kvadrant_current == 4} {
	set C_current [expr 360 - $C_current]
}
if {$kvadrant_current == 3} {
	set C_current [expr 360 - $C_current]
}
if {$kvadrant_current == 2} {
	set C_current [expr $C_current]
}
if {$kvadrant_current == 1} {
	set C_current [expr $C_current]
}


if {$check_was == 0} {
	set X_cur [format "%.3f" $mom_pos(0)]
	set Y_cur [format "%.3f" $mom_pos(1)]
	set Z_cur [format "%.3f" $mom_pos(2)]
PB_CMD_CHECK_cycle_same_plane
	set Z_pre_cur [format "%.3f" $mom_prev_pos(2)]
	set check_was 1
	set C_max [expr $C_current]
	set C_min [expr $C_current]
	set C_prev [expr $C_current]
	set ugol [expr $C_current]
	set ugol_prev [expr $C_current]
	set prev_segment 0
} else {
	set delta [expr $C_current - $C_prev]
	if {$delta <= -180} {set delta [expr $delta +360]}
	if {$delta > 180} {set delta [expr $delta -360]}
	set ugol [expr $ugol_prev + $delta]
	if {$ugol >= $C_max} {
	set C_max $ugol
	}
	if {$ugol <= $C_min} {
	set C_min $ugol
	}
	set ugol_prev $ugol
}

	
set segment [expr $C_max - $C_min]
set segment [format "%.3f" $segment]
#MOM_output_literal "(!!!!!!!!segment = $segment)"
#MOM_output_literal "(!!!!!!!!C_prev = $C_prev)"

set C_rot [expr 1*($C_min+(($C_max-$C_min)/2))]
set C_rot [format "%.3f" $C_rot]
#MOM_output_literal "(!!!!!!!!C_rot  = $C_rot )"

if {$mom_pos(0) <= 0} {
	set rotate_need 1
}

if {abs($segment) > 180} {

	set rotate_need 1

	if {$delta >= 0} {
	set C_min_1 [expr $C_min_prev]
	set C_min [expr $C_min]
	set C_max [expr $C_min+180]
	}
	if {$delta < 0} {
	set C_min_1 [expr $C_max_prev]
	set C_max [expr $C_max]
	set C_min [expr $C_max-180]
	}
	#MOM_output_literal "(C_min_prev = $C_min_prev C_max_prev = $C_max_prev)"
	if {($mom_motion_event == "circular_move") || ($mom_motion_event == "helix_move")} {
	#set event_before $mom_motion_event
	PB_CMD_RECALC_POS_CIRCLE
	} else {
	PB_CMD_RECALC_POS
	}


#set segment [expr (abs($C_max) - abs($C_min))]
set C_rot [expr 1*($C_min+(($C_max-$C_min)/2))]
set C_rot [format "%.3f" $C_rot]
#MOM_output_literal "(!!!!!!!!C_rot  = $C_rot )"


global I_temp_new J_temp_new
	if {$one_time == 0} {
		#MOM_output_literal "(!!!!!!!!mom_motion_event_before = $mom_motion_event)"
		#MOM_output_literal "(!!!!!!!!mom_pos(0) = $mom_pos(0) mom_pos(1) = $mom_pos(1))"
		MOM_force once F
		PB_CMD_REDIRECT_TO_1_2
		PB_CMD_REDIRECT_ORIGIN
		set one_time 1
	} else {
		#MOM_output_literal "(!!!!!!!!mom_motion_event_before = $mom_motion_event)"
		#MOM_output_literal "(!!!!!!!!mom_pos(0) = $mom_pos(0) mom_pos(1) = $mom_pos(1))"
		MOM_force once F
		PB_CMD_REDIRECT_TO_TEMP
		PB_CMD_REDIRECT_ORIGIN
		if {($mom_motion_event == "circular_move") || ($mom_motion_event == "helix_move")} {
		global I_temp_new J_temp_new mom_pos_arc_center X_rec Y_rec

		set I_temp_new [expr $mom_pos_arc_center(0) - $X_rec]
		set J_temp_new [expr $mom_pos_arc_center(1) - $Y_rec]

		set I_temp_new [format "%.3f" $I_temp_new]
		set J_temp_new [format "%.3f" $J_temp_new]
		}
	}
	set C_max [expr $C_current]
	set C_min [expr $C_current]
	#set C_prev [expr $C_current]
	set ugol [expr $C_current]
	set ugol_prev [expr $C_current]
	set prev_segment 0

	if {$first_time_180 == 0} {
		set X_pre $X_rec
		set Y_pre $Y_rec
		set Z_pre $Z_rec
		#set Z_pre [format "%.3f" $mom_prev_pos(2)]
		set first_time_180 1
	} else {
		set X_pre $X_rec
		set Y_pre $Y_rec
		set Z_pre $Z_rec		
		#set Z_pre [format "%.3f" $mom_prev_pos(2)]
	}

	set more_180 1
}

	#MOM_output_literal "(!!!!!!!!C_rot_prev = $C_rot_prev)"
	set C_rot_prev $C_rot
	set prev_segment $segment
	set C_prev $C_current
	set C_min_prev $C_min
	set C_max_prev $C_max


	#MOM_output_literal "(!!!!!!!!C_current = $C_current)"
	#MOM_output_literal "(!!!!!!!!segment = $segment)"
	#MOM_output_literal "(!!!!!!!!C_max = $C_max)"
	#MOM_output_literal "(!!!!!!!!C_min = $C_min)"
	#MOM_output_literal "(!!!!!!!!DELTA_segment = $delta_segment)"
	#MOM_output_literal "(!!!!!!!!C_current = $C_current)"
	#MOM_output_literal "(!!!!!!!!C_rot = $C_rot)"
	#MOM_output_literal "(!!!mom_pos(0) = $mom_pos(0) mom_pos(1) = $mom_pos(1))"
	#MOM_output_literal "(!!!mom_prev_pos(0) = $mom_prev_pos(0) mom_prev_pos(1) = $mom_prev_pos(1))"



}
}


#=============================================================
proc PB_CMD_Segment_in_end { } {
#=============================================================
global C_rot array_rot_C
global more_180 first_time_180 mom_motion_event 
global redirect_was Z_pre_cur



global segment_prev betta_inited C_max C_min C_prev check_was
set C_min 1000
set C_max -1000
set C_prev 0
set check_was 0


if {$redirect_was == 1} {
if {($more_180 == 0)} {PB_CMD_REDIRECT_TO_1}

if {$more_180 == 1} {
	PB_CMD_REDIRECT_TO_TEMP_END
}
}

if [info exist Z_pre_cur] {
unset Z_pre_cur
}
}


#=============================================================
proc PB_CMD_Segment_old { } {
#=============================================================
global mom_pos mom_prev_pos RAD2DEG segment_prev
global delta_C C_rot C_prev C_rot_prev C_current
global C_max C_min check_was rotate_need segment
global more_180 ugol ugol_prev delta array_rot_C prev_segment delta_segment
global X_rec Y_rec Z_rec alpha del_BA Z_pre_cur
global mom_motion_event G2 mom_motion_event_before C_min_1 mom_motion_event_prev

global X_pre Y_pre Z_pre X_cur Y_cur Z_cur first_time_180 one_time
global C_min_prev C_max_prev mom_podvorot_on



if [info exist mom_podvorot_on] {

if {($mom_pos(0) >= 0) && ($mom_pos(1) >= 0)} {set kvadrant_current 1}
if {($mom_pos(0) < 0) && ($mom_pos(1) >= 0)} {set kvadrant_current 2}
if {($mom_pos(0) < 0) && ($mom_pos(1) < 0)} {set kvadrant_current 3}
if {($mom_pos(0) >= 0) && ($mom_pos(1) < 0)} {set kvadrant_current 4}

set root [expr sqrt(($mom_pos(0)*$mom_pos(0))+($mom_pos(1)*$mom_pos(1)))]
set COS_cur [expr $mom_pos(0)/$root]
set C_current [expr acos($COS_cur)*$RAD2DEG]
	
if {$kvadrant_current == 4} {
	set C_current [expr 360 - $C_current]
}
if {$kvadrant_current == 3} {
	set C_current [expr 360 - $C_current]
}
if {$kvadrant_current == 2} {
	set C_current [expr $C_current]
}
if {$kvadrant_current == 1} {
	set C_current [expr $C_current]
}


if {$check_was == 0} {
	set X_cur [format "%.3f" $mom_pos(0)]
	set Y_cur [format "%.3f" $mom_pos(1)]
	set Z_cur [format "%.3f" $mom_pos(2)]
PB_CMD_CHECK_cycle_same_plane
	set Z_pre_cur [format "%.3f" $mom_prev_pos(2)]
	set check_was 1
	set C_max [expr $C_current]
	set C_min [expr $C_current]
	set C_prev [expr $C_current]
	set ugol [expr $C_current]
	set ugol_prev [expr $C_current]
	set prev_segment 0
} else {
	set delta [expr $C_current - $C_prev]
	if {$delta <= -180} {set delta [expr $delta +360]}
	if {$delta > 180} {set delta [expr $delta -360]}
	set ugol [expr $ugol_prev + $delta]
	if {$ugol >= $C_max} {
	set C_max $ugol
	}
	if {$ugol <= $C_min} {
	set C_min $ugol
	}
	set ugol_prev $ugol
}

	
set segment [expr $C_max - $C_min]
set segment [format "%.3f" $segment]
#MOM_output_literal "(!!!!!!!!segment = $segment)"
#MOM_output_literal "(!!!!!!!!C_prev = $C_prev)"

set C_rot [expr 1*($C_min+(($C_max-$C_min)/2))]
set C_rot [format "%.3f" $C_rot]
#MOM_output_literal "(!!!!!!!!C_rot  = $C_rot )"

if {$mom_pos(0) <= 0} {
	set rotate_need 1
}

if {abs($segment) > 180} {

	set rotate_need 1

	if {$delta >= 0} {
	set C_min_1 [expr $C_min_prev]
	set C_min [expr $C_min]
	set C_max [expr $C_min+180]
	}
	if {$delta < 0} {
	set C_min_1 [expr $C_max_prev]
	set C_max [expr $C_max]
	set C_min [expr $C_max-180]
	}
	#MOM_output_literal "(C_min_prev = $C_min_prev C_max_prev = $C_max_prev)"
	if {($mom_motion_event == "circular_move") || ($mom_motion_event == "helix_move")} {
	#set event_before $mom_motion_event
	PB_CMD_RECALC_POS_CIRCLE
	} else {
	PB_CMD_RECALC_POS
	}


#set segment [expr (abs($C_max) - abs($C_min))]
set C_rot [expr 1*($C_min+(($C_max-$C_min)/2))]
set C_rot [format "%.3f" $C_rot]
#MOM_output_literal "(!!!!!!!!C_rot  = $C_rot )"


global I_temp_new J_temp_new
	if {$one_time == 0} {
		#MOM_output_literal "(!!!!!!!!mom_motion_event_before = $mom_motion_event)"
		#MOM_output_literal "(!!!!!!!!mom_pos(0) = $mom_pos(0) mom_pos(1) = $mom_pos(1))"
		MOM_force once F
		PB_CMD_REDIRECT_TO_1_2
		PB_CMD_REDIRECT_ORIGIN
		set one_time 1
	} else {
		#MOM_output_literal "(!!!!!!!!mom_motion_event_before = $mom_motion_event)"
		#MOM_output_literal "(!!!!!!!!mom_pos(0) = $mom_pos(0) mom_pos(1) = $mom_pos(1))"
		MOM_force once F
		PB_CMD_REDIRECT_TO_TEMP
		PB_CMD_REDIRECT_ORIGIN
		if {($mom_motion_event == "circular_move") || ($mom_motion_event == "helix_move")} {
		global I_temp_new J_temp_new mom_pos_arc_center X_rec Y_rec

		set I_temp_new [expr $mom_pos_arc_center(0) - $X_rec]
		set J_temp_new [expr $mom_pos_arc_center(1) - $Y_rec]

		set I_temp_new [format "%.3f" $I_temp_new]
		set J_temp_new [format "%.3f" $J_temp_new]
		}
	}
	set C_max [expr $C_current]
	set C_min [expr $C_current]
	#set C_prev [expr $C_current]
	set ugol [expr $C_current]
	set ugol_prev [expr $C_current]
	set prev_segment 0

	if {$first_time_180 == 0} {
		set X_pre $X_rec
		set Y_pre $Y_rec
		set Z_pre $Z_rec
		#set Z_pre [format "%.3f" $mom_prev_pos(2)]
		set first_time_180 1
	} else {
		set X_pre $X_rec
		set Y_pre $Y_rec
		set Z_pre $Z_rec		
		#set Z_pre [format "%.3f" $mom_prev_pos(2)]
	}

	set more_180 1
}

	#MOM_output_literal "(!!!!!!!!C_rot_prev = $C_rot_prev)"
	set C_rot_prev $C_rot
	set prev_segment $segment
	set C_prev $C_current
	set C_min_prev $C_min
	set C_max_prev $C_max


	#MOM_output_literal "(!!!!!!!!C_current = $C_current)"
	#MOM_output_literal "(!!!!!!!!segment = $segment)"
	#MOM_output_literal "(!!!!!!!!C_max = $C_max)"
	#MOM_output_literal "(!!!!!!!!C_min = $C_min)"
	#MOM_output_literal "(!!!!!!!!DELTA_segment = $delta_segment)"
	#MOM_output_literal "(!!!!!!!!C_current = $C_current)"
	#MOM_output_literal "(!!!!!!!!C_rot = $C_rot)"
	#MOM_output_literal "(!!!mom_pos(0) = $mom_pos(0) mom_pos(1) = $mom_pos(1))"
	#MOM_output_literal "(!!!mom_prev_pos(0) = $mom_prev_pos(0) mom_prev_pos(1) = $mom_prev_pos(1))"



}
}


#=============================================================
proc PB_CMD_abort_event { } {
#=============================================================
# This command can be called to abort an event based on the
# flag being set by other handler under certain conditions,
# such as an invalid tool axis vector.
#
# Users can set the global variable mom_sys_abort_next_event to
# different severity levels throughout the post and designate
# how to handle different conditions in this command.
#
# - Rapid, linear, circular and cycle move events have this trigger
#   built in by default in PB6.0.
#

   global mom_sys_abort_next_event

   if { [info exists mom_sys_abort_next_event] } {

      switch $mom_sys_abort_next_event {
        1 -
        2 {
           unset mom_sys_abort_next_event
           CATCH_WARNING "Event aborted!"

           MOM_abort_event
        }
        default {
           unset mom_sys_abort_next_event
           CATCH_WARNING "Event warned!"
        }
      }
   }
}


#=============================================================
proc PB_CMD_arc_select { } {
#=============================================================
global mom_pos_arc_plane

#MOM_output_literal ";mom_pos_arc_plane=$mom_pos_arc_plane"

if {$mom_pos_arc_plane == "XY"} {
MOM_force once X Y I J
MOM_suppress once Z K
}

if {$mom_pos_arc_plane == "ZX"} {
MOM_force once X Z I K
MOM_suppress once Y J
}

if {$mom_pos_arc_plane == "YZ"} {
MOM_force once Y Z J K
MOM_suppress once X I
}
}


#=============================================================
proc PB_CMD_before_motion { } {
#=============================================================
global P G54_flag G43_4_flag G43_4_prev mom_prev_pos mom_from_status
global  mom_warning_info mom_definition_file_name 
global mom_from_status from_flag
global tmp_mess_file mom_operation_name oper mom_tool_cutcom_register mom_tool_adjust_register
global metka2 mom_seqnum metka1 mom_rotary_delta_5th mom_rotary_delta_4th 2D_machining rot_y mom_otskok_off

global mom_kin_4th_axis_min_limit 
global mom_kin_4th_axis_max_limit
global mom_out_angle_pos mom_sys_leader
global mom_prev_out_angle_pos mom_pos mom_kin_pivot_gauge_offset mom_from_pos mom_gohome_pos

global mom_spindle_speed mom_tool_adjust_register mom_rotary_delta_4th
global DEG2RAD RAD2DEG podvorot_init
global first_after_tool mom_sys_lock_status mom_motion_event mom_tool_cutcom_register mom_tool_axis
global mom_obrabotka_tiski diap mom_which_spindle

#PB_CMD_Check_range_B

PB_CMD_Posle_perehvata
PB_CMD_check_tools
PB_CMD_check_Y
PB_CMD_CHECK_TISKI

if {$diap == 0.5} {
set vector_X [format "%.9f" $mom_tool_axis(0)]
#MOM_output_literal "vector_X=$vector_X !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
if {($vector_X > 0.5) || ($vector_X < -0.5)} {
	#MOM_output_literal "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	set mom_warning_info "Недопустимое положение оси инструмента в операции ''$oper''" 
	append mom_warning_info "\n "
	append mom_warning_info "\n При таком положении оси инструмента станок выходит за лимиты" 
	append mom_warning_info "\n\t по угловому перемещению по оси B"
	MOM_output_to_listing_device $mom_warning_info 
	PB_CMD_Messages
	MOM_abort "ВЫХОД ЗА ЛИМИТЫ ПО УГЛУ B!!!!!!" 
}
}


global mom_sys_lock_status mom_lintol_status mom_lintol mom_kin_linearization_tol mom_kin_linearization_flag
global mom_sys_lock_axis mom_sys_lock_value mom_sys_lock_plane mom_lock_axis_value_defined
global mom_motion_type mom_kin_y_axis_limit mom_pos mom_out_angle_pos
global first_flag mom_pos mom_mcs_goto tool_with_on prev_tool_number mom_tool_number mom_motion_event
global mom_sys_lathe_x_double
global mom_kin_arc_output_mode mom_sys_lock_arc_save mom_kin_4th_axis_type mom_kin_machine_type mom_kin_min_arc_radius
global G43_4_init G68 string_g43
global B_recalc C_recalc B_prev2 C_prev2
global M212_mode M210_mode

#MOM_output_literal "mom_motion_event= $mom_motion_event"
#MOM_output_literal "mom_kin_arc_output_mode= $mom_kin_arc_output_mode"
#MOM_output_literal "mom_sys_lock_arc_save= $mom_sys_lock_arc_save" 

set B_recalc [format "%.3f" $mom_out_angle_pos(0)]
set C_recalc [format "%.3f" $mom_out_angle_pos(1)]




if {$mom_spindle_speed == 0} {
	set mom_warning_info "В операции ''$oper'' не задано значение оборотов шпинделя" 
	#MOM_output_to_listing_device $mom_warning_info 
	PB_CMD_Messages
	MOM_abort "Нулевое значение оборотов шпинделя!!!!!!" 
}

if {$mom_tool_cutcom_register == 0} {
set mom_tool_cutcom_register $mom_tool_number
}

if {$mom_tool_adjust_register == 0} {
set mom_tool_adjust_register $mom_tool_number
}


if {$first_after_tool == 1} {


    if {($G43_4_flag != 1) || ($G43_4_prev == $G43_4_flag)} {


	if {($mom_rotary_delta_4th != 0) || ($mom_rotary_delta_5th != 0)} {
	PB_CMD_PROGRAMMED_OTSKOK
	}


	#if {($C_recalc != 0) || ($B_recalc != 0)} {
	MOM_force Once G_motion fourth_axis fifth_axis
	MOM_output_literal "M108 M$M212_mode"
	MOM_do_template auto_tool_change_4
	#}
	MOM_output_literal "M107 M$M210_mode"
	MOM_force Once S M_spindle
	MOM_do_template spindle_rpm

  }
  	set first_after_tool 0
}


global unlock_turned unlock_turned2 mom_rotary_delta_4th mom_rotary_delta_5th 
if {($G43_4_flag == 1)  && ($G43_4_init == 1)} {
	if {($mom_rotary_delta_4th != 0) && ($unlock_turned == 0)} {
	MOM_output_literal "M108"
	set unlock_turned 1
	}
	if {($mom_rotary_delta_5th != 0) && ($unlock_turned2 == 0)} {
	MOM_output_literal "M$M212_mode"
	set unlock_turned2 1
	}
}


if {$G43_4_flag == 1} {
set G68 1


	if {$tool_with_on != 2} {
		MOM_force ONCE G_motion fourth_axis fifth_axis
		MOM_force ONCE T user_add
		set first_flag 1
		set tool_with_on 2
		MOM_force once G_adjust_43_4 H 
		MOM_force Once S M_spindle
		MOM_force Once fourth_axis fifth_axis
		set G43_4_init 0
	}

if {$G43_4_init == 0} {
PB_CMD_G49
	if {($mom_rotary_delta_4th != 0) || ($mom_rotary_delta_5th != 0)} {
PB_CMD_OTSKOK
MOM_output_literal "G10.9X0"
	}
set mom_kin_arc_output_mode "LINEAR"
MOM_reload_kinematics
MOM_output_literal "M108 M$M212_mode"
MOM_do_template auto_tool_change_4
MOM_force Once S M_spindle
MOM_do_template spindle_rpm
PB_CMD_for_massive_1
#PB_CMD_Podvorot_5x_for_initmove
PB_CMD_G43_4_recalc
MOM_force Once G_adjust_43_4 G_feed X Y Z fourth_axis fifth_axis H
MOM_do_template g94

MOM_force Once X Y fourth_axis fifth_axis G_feed
MOM_do_template linear_move_XY

#if {$mom_which_spindle == "ЛЕВЫЙ"} {
#MOM_force Once X Y fourth_axis fifth_axis G_feed
#MOM_do_template linear_move_XY
#} else {
#MOM_force Once X Y I J K G_feed
#MOM_do_template linear_move_XY_right
#}

MOM_output_literal "G61.1"
MOM_suppress once G_adjust_43_4 H
#MOM_output_literal "G90"
MOM_force once F
set G43_4_init 1
}

if {$podvorot_init == 0} {
#PB_CMD_Podvorot_5x
}
}





if {$G43_4_flag != 1} {
	MOM_suppress Always G_adjust_43_4 H
	
}



#Переопределение системы координат для автоматического срабатывания G68 (эксперимент) 
#**************************************************************************************

  global mom_csys_matrix
  global mom_kin_coordinate_system_type

global X_pov Z_pov G68_turn mom_operation_type mom_motion_type
global G68 C_stanok B_stanok
global mom_cycle_spindle_axis mom_cycle_rapid_to_pos mom_cycle_feed_to_pos mom_cycle_rapid_to mom_cycle_clearance_plane
global mom_cycle_feed_to
global X_prev_feed Z_prev_feed
global X_prev_rap Z_prev_rap
global Z_prev X_prev mom_cutcom_status

#MOM_output_literal "TEST_B=$mom_out_angle_pos(0)"


if {$B_recalc == 0} {
set G68_turn 0
}

global C_rot X_cur Y_cur Z_cur B_cur C_cur H_cur more_180 redirect_was Z_pre_cur mom_podvorot_on
global mom_sys_min_travel

if {$G68 == 0 } {
PB_CMD_for_massive_1
MOM_do_template absolute_mode_1
#PB_CMD_REDIRECT_ORIGIN
	set X_cur [format "%.3f" $mom_pos(0)]
	set Y_cur [format "%.3f" $mom_pos(1)]
	set Z_cur [format "%.3f" $mom_pos(2)]
	if ![info exist mom_podvorot_on] {
	PB_CMD_CHECK_cycle_same_plane_1
	set Z_pre_cur [format "%.3f" $mom_pos(2)]
	}
if {($B_recalc != 0) && ($G43_4_flag == 0)} {
	set B_cur [format "%.3f" $mom_out_angle_pos(0)]
	set C_cur [format "%.3f" $mom_out_angle_pos(1)]
	set H_cur [format "%.0f" $mom_tool_number]
	set X_cur [format "%.3f" $mom_mcs_goto(0)]
	set Y_cur [format "%.3f" $mom_mcs_goto(1)]
	set Z_cur [format "%.3f" $mom_mcs_goto(2)]
	#PB_CMD_CHECK32
}

set redirect_was 1
PB_CMD_PLANE_MILL2
#EXTN_rtv_mom_cp_part_attr "PLANE_MILL2"
MOM_force Once G_motion X Y Z F
set G68 1
set C_rot 0.000
} else {
	if {($B_recalc == 0) && ($G43_4_flag == 0)} {
	PB_CMD_Segment
	}
}

global polar_flag polar_turned mom_tool_axis

set vec_Z [format "%.9f" $mom_tool_axis(2)]

if {($vec_Z != 1) && ($vec_Z != -1) && ($polar_flag == 1)} {
	set mom_warning_info "В операции ''$oper'' включена функция вывода в полярных координатах" 
	append mom_warning_info "\n "
	append mom_warning_info "\n Включение данной функции возможно только при положении инструмента вдоль оси Z" 
	#MOM_output_to_listing_device $mom_warning_info 
	PB_CMD_Messages
	MOM_abort "Неправильный режим траектории!!!!!!" 

}

set C_recalc [format "%.3f" $mom_out_angle_pos(1)]
set X_pol_pos [format "%.3f" $mom_pos(0)]
set Y_pol_pos [format "%.3f" $mom_pos(1)]
if {$polar_flag == 1} {
if {$polar_turned == 0} {

set vec_Z [format "%.9f" $mom_tool_axis(2)]
set mom_sys_min_travel(0) -125
if ![info exist mom_obrabotka_tiski] {
if {($vec_Z == 1)} {
   if {$mom_sys_min_travel(0) > $mom_pos(0)} {
      set mom_warning_info "Выход за лимиты по X координате (меньше -125 мм) в операции $oper"
	PB_CMD_Messages
	MOM_abort "Выход за лимиты по X координате!!!!!!" 
      MOM_catch_warning
   }
}
}

MOM_output_literal "G00 Y0."
MOM_output_literal "M$M212_mode"
if {$mom_which_spindle == "ПРАВЫЙ"} {
MOM_output_literal "G17 G00 X$X_pol_pos U$C_recalc"
} else {
MOM_output_literal "G17 G00 X$X_pol_pos C$C_recalc"
}
MOM_output_literal "G12.1"
set polar_turned 1
}

if {$mom_which_spindle == "ПРАВЫЙ"} {
set mom_sys_leader(Y) U
} else {
set mom_sys_leader(Y) C
}
#MOM_disable_address Y
#MOM_enable_address Y_C
}

if {($B_recalc != 0) && ($G43_4_flag == 0)} {
	#PB_CMD_CHECK32
}

global mom_prev_prev_pos 
set mom_prev_prev_pos(0) $mom_prev_pos(0)
set mom_prev_prev_pos(1) $mom_prev_pos(1)
set mom_prev_prev_pos(2) $mom_prev_pos(2)
set podvorot_init 0

#*********************************************************************************************
}


#=============================================================
proc PB_CMD_before_output { } {
#=============================================================
# This command allows users to massage the NC code (mom_o_buffer) before
# it gets output.  If present in the post, this command is executed
# automatically by MOM_before_output.
#
# - DO NOT overload - MOM_before_output - All customization should be done here!
# - DO NOT call any MOM output commands in this command, it will become cyclicle!
# - DO NOT attach this command to any event marker!
#

   global mom_o_buffer
   global mom_sys_leader
   global mom_sys_control_out mom_sys_control_in
}


#=============================================================
proc PB_CMD_check_Y { } {
#=============================================================
global mom_sys_max_travel 
global mom_sys_min_travel
global mom_pos 
global mom_cycle_rapid_to_pos 
global mom_cycle_feed_to_pos 
global mom_warning_info mom_motion_type mom_lock_axis oper mom_tool_axis polar_flag
global mom_obrabotka_tiski

set vec_Z [format "%.9f" $mom_tool_axis(2)]

set mom_sys_max_travel(1) 125
set mom_sys_min_travel(1) -125
set mom_sys_min_travel(0) -125
#MOM_output_literal "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX=$mom_pos(0)"

if {$mom_lock_axis != "YAXIS"} {
if {$mom_motion_type != "CYCLE"} {
   if {($mom_sys_max_travel(1) < $mom_pos(1)) && ($polar_flag != 1)} {
      set mom_warning_info "Выход за лимиты по Y координате (больше 125 мм) в операции $oper"
	PB_CMD_Messages
	MOM_abort "Выход за лимиты по Y координате!!!!!!" 
      MOM_catch_warning
   }

   if {($mom_sys_min_travel(1) > $mom_pos(1)) && ($polar_flag != 1)} {
      set mom_warning_info "Выход за лимиты по Y координате (меньше -125 мм) в операции $oper"
	PB_CMD_Messages
	MOM_abort "Выход за лимиты по Y координате!!!!!!" 
      MOM_catch_warning
   }

if ![info exist mom_obrabotka_tiski] {
if {($vec_Z == 1) && ($polar_flag != 1)} {
   if {$mom_sys_min_travel(0) > $mom_pos(0)} {
      set mom_warning_info "Выход за лимиты по X координате (меньше -125 мм) в операции $oper"
	PB_CMD_Messages
	MOM_abort "Выход за лимиты по X координате!!!!!!" 
      MOM_catch_warning
   }
}
}

} elseif {$mom_motion_type == "CYCLE"} {

if {(($mom_sys_max_travel(1) < $mom_cycle_rapid_to_pos(1)) || ($mom_sys_max_travel(1) < $mom_cycle_feed_to_pos(1))) && ($polar_flag != 1)} {
      set mom_warning_info "Выход за лимиты по Y координате (больше 125 мм) в операции $oper"
	PB_CMD_Messages
	MOM_abort "Выход за лимиты по Y координате!!!!!!" 
      MOM_catch_warning
   }

   if {(($mom_sys_min_travel(1) > $mom_cycle_rapid_to_pos(1)) || ($mom_sys_min_travel(1) > $mom_cycle_feed_to_pos(1))) && ($polar_flag != 1)} {
      set mom_warning_info "Выход за лимиты по Y координате (меньше -125 мм) в операции $oper"
PB_CMD_Messages
	MOM_abort "Выход за лимиты по Y координате!!!!!!" 
      MOM_catch_warning
   }
if ![info exist mom_obrabotka_tiski] {
if {($vec_Z == 1) && ($polar_flag != 1)} {
   if {($mom_sys_min_travel(0) > $mom_cycle_rapid_to_pos(0)) || ($mom_sys_min_travel(0) > $mom_cycle_feed_to_pos(0))} {
      set mom_warning_info "Выход за лимиты по X координате (меньше -125 мм) в операции $oper"
	PB_CMD_Messages
	MOM_abort "Выход за лимиты по X координате!!!!!!" 
      MOM_catch_warning
   }
}
}
}
}
}


#=============================================================
proc PB_CMD_check_helix { } {
#=============================================================
global mom_motion_event oper mom_warning_info


if {$mom_motion_event == "helix_move"} {
	set mom_warning_info "В операции ''$oper'' используется врезание по спирали, на наклонной плоскости." 
	append mom_warning_info "\n "
	append mom_warning_info "\n В постпроцессоре не реализовано такое движение через круговую интерполяцию"
	append mom_warning_info "\n "
	append mom_warning_info "\n Следует использовать врезание негеликоидного типа" 
	#MOM_output_to_listing_device $mom_warning_info 
	PB_CMD_Messages
	MOM_abort "Следует использовать врезание негеликоидного типа" 

}
}


#=============================================================
proc PB_CMD_check_ref_motion { } {
#=============================================================
global mom_out_angle_pos mom_pos motion_not_checked from_flag

#if {$motion_not_checked == 1} {
	if {$mom_out_angle_pos(0) < 45} {
	#Временно поменял направление осей
PB_CMD_OTSKOK
MOM_output_literal "G10.9X0"

	} else {
PB_CMD_OTSKOK
MOM_output_literal "G10.9X0"
	}
	#set motion_not_checked 0
#}

set from_flag 0
MOM_force Once X Y Z
}


#=============================================================
proc PB_CMD_check_tools { } {
#=============================================================
global mom_tool_number oper mom_warning_info mom_tool_cutcom_register

if {$mom_tool_number == 0} {
	set mom_warning_info "В операции ''$oper'' не задан номер инструмента" 
	MOM_output_to_listing_device $mom_warning_info 
	PB_CMD_Messages
	MOM_abort "Нулевое значение номера инструмента!!!!!!" 
}


global mom_tool_cutcom_register mom_tool_number

if {$mom_tool_cutcom_register == 0} {
set mom_tool_cutcom_register $mom_tool_number
}
}


#=============================================================
proc PB_CMD_clamp_fifth_axis { } {
#=============================================================
#
#  This procedure is used by auto clamping to output the code
#  needed to clamp the fifth axis.  
#
#  Do NOT add this block to events or markers.  It is a static 
#  block and it is not intended to be added to events.  Do NOT 
#  change the name of this custom command.
#
  MOM_output_literal "M12"
}


#=============================================================
proc PB_CMD_clamp_fourth_axis { } {
#=============================================================
#
#  This procedure is used by auto clamping to output the code
#  needed to clamp the fourth axis.  
#
#  Do NOT add this block to events or markers.  It is a static 
#  block and it is not intended to be added to events.  Do NOT 
#  change the name of this custom command.
#
  MOM_output_literal "M10"
}


#=============================================================
proc PB_CMD_coolant_init { } {
#=============================================================
global mom_sys_coolant_code() mom_coolant_status coolant_inited mom_lunet_on lunet_turned


if {$coolant_inited == 0} {
#MOM_output_literal "mom_coolant_status = $mom_coolant_status !!!!!!!!!!!!!!!!!!!!"
if {$mom_coolant_status == "UNDEFINED"} {
MOM_output_literal "M8"
if {$lunet_turned == 1} {
MOM_output_literal "M285"
}
}

if {$mom_coolant_status == "THRU"} {
MOM_output_literal "M51"
if {$lunet_turned == 1} {
MOM_output_literal "M285"
}
}

if {$mom_coolant_status == "TAP"} {
MOM_output_literal "M131"
if {$lunet_turned == 1} {
MOM_output_literal "M285"
}
}


set coolant_inited 1
}
}


#=============================================================
proc PB_CMD_custom_command_1 { } {
#=============================================================
MOM_output_literal "TEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEST"
}


#=============================================================
proc PB_CMD_cycle_init { } {
#=============================================================
global cycle_init_flag mom_cycle_delay mom_feed_retract_value mom_cycle_orient tilda from_flag mom_from_pos G68_turn
global mom_cycle_feed_to_pos

  global mom_motion_event   mom_cycle_feed_to feed       
  global mom_tool_diameter   mom_cycle_step1   
  global cycle_peck_size cycle_type_number ;# js
  global js_prev_pos			   ;# diy previous Z height
  global js_return_pos			   ;# returnZ incremental from top of hole

  global mom_pos		;# xy and especially Z of this hole
  global mom_prev_pos	;# ditto - previous hole
  global mom_cycle_retract_mode
  global name_cycle
global mom_coolant_status mom_motion_type
#MOM_output_literal "$mom_motion_type"

 # peck sizes 
  set cycle_peck_size [expr ($mom_cycle_feed_to*(-1.0))] 	;# single peck size most cycles

  if { $mom_motion_event == "drill_deep_move" || $mom_motion_event == "drill_break_chip_move"} {

    if {($mom_cycle_step1 == 0)} {
      set cycle_peck_size  $mom_cycle_feed_to_pos(2) ;# default peck  if not set
    } else {
      set cycle_peck_size  $mom_cycle_step1	;# real peck
    } 
  }


  if { $mom_pos(2) != $mom_prev_pos(2) } {
    set cycle_init_flag  "TRUE"
	#MOM_output_literal "TEST3"
  }

  if {![info exists mom_cycle_delay]} {set mom_cycle_delay 0.0}
}


#=============================================================
proc PB_CMD_end_of_alignment_character { } {
#=============================================================
 # Return sequnece number back to orignal
 # This command may be used with the command "PM_CMD_start_of_alignment_character"

  global mom_sys_leader saved_seq_num

  set mom_sys_leader(N) $saved_seq_num
}


#=============================================================
proc PB_CMD_fifth_axis_rotate_move { } {
#=============================================================
#
#  This procedure is used by the ROTATE ude command to output a 
#  fifth axis rotary move.  You can use the NC Data Definitions
#  section of postbuilder to modify the fifth_axis_rotary_move
#  block template. 
#
#  Do NOT add this block to events or markers.  It is a static 
#  block and it is not intended to be added to events.  Do NOT 
#  change the name of this custom command.
#

  MOM_force once fifth_axis
  MOM_do_template fifth_axis_rotate_move
}


#=============================================================
proc PB_CMD_fix_RAPID_SET { } {
#=============================================================
# This command is provided to overwrite the system RAPID_SET
# in order to correct the problem with workplane change that
# doesn't account for +/- directions along X or Y principal axes.
# It also fixes the problem that the First Move was never
# identified to force the output of the 1st point.
#
# The original command has been renamed as ugpost_RAPID_SET.
#
# - This command may be attached to the "Start of Program" event marker.
#
#
# Revisions:
#-----------
# 02-18-08 gsl - Initial version
# 02-26-09 gsl - Used mom_kin_machine_type to derive machine mode when it's UNDEFINED.
#

  # Only redefine RAPID_SET once, since ugpost_base is only loaded once.
  #
   if { [llength [info commands ugpost_RAPID_SET]] == 0 } {
      if { [llength [info commands RAPID_SET]] } {
         rename RAPID_SET ugpost_RAPID_SET
      }
   } else {
return
   }


#***********
uplevel #0 {

#====================
proc RAPID_SET { } {
#====================

   if { [llength [info commands PB_CMD_set_cycle_plane]] > 0 } {
      PB_CMD_set_cycle_plane
   }


   global mom_cycle_spindle_axis mom_sys_work_plane_change
   global traverse_axis1 traverse_axis2 mom_motion_event mom_machine_mode
   global mom_pos mom_prev_pos mom_from_pos mom_last_pos mom_sys_home_pos
   global mom_sys_tool_change_pos
   global spindle_first rapid_spindle_inhibit rapid_traverse_inhibit

   if { ![info exists mom_from_pos($mom_cycle_spindle_axis)] && [info exists mom_sys_home_pos($mom_cycle_spindle_axis)] } {

      set mom_from_pos(0) $mom_sys_home_pos(0)
      set mom_from_pos(1) $mom_sys_home_pos(1)
      set mom_from_pos(2) $mom_sys_home_pos(2)

   } elseif { ![info exists mom_sys_home_pos($mom_cycle_spindle_axis)] && [info exists mom_from_pos($mom_cycle_spindle_axis)] } {

      set mom_sys_home_pos(0) $mom_from_pos(0)
      set mom_sys_home_pos(1) $mom_from_pos(1)
      set mom_sys_home_pos(2) $mom_from_pos(2)

   } elseif { ![info exists mom_sys_home_pos($mom_cycle_spindle_axis)] && ![info exists mom_from_pos($mom_cycle_spindle_axis)] } {

      set mom_from_pos(0) 0.0 ; set mom_sys_home_pos(0) 0.0
      set mom_from_pos(1) 0.0 ; set mom_sys_home_pos(1) 0.0
      set mom_from_pos(2) 0.0 ; set mom_sys_home_pos(2) 0.0
   }

   if { ![info exists mom_sys_tool_change_pos($mom_cycle_spindle_axis)] } {
      set mom_sys_tool_change_pos($mom_cycle_spindle_axis) 100000.0
   }

   set is_first_move 0
   if { [string match "MOM_first_move" [MOM_ask_event_type]] } {
      set is_first_move 1
   }

   if { ![info exists mom_motion_event] } { set mom_motion_event "" }

   if { [string match "initial_move" $mom_motion_event] || $is_first_move } {
      set mom_last_pos($mom_cycle_spindle_axis) $mom_sys_tool_change_pos($mom_cycle_spindle_axis)
   } else {
      if { [info exists mom_last_pos($mom_cycle_spindle_axis)] == 0 } {
         set mom_last_pos($mom_cycle_spindle_axis) $mom_sys_home_pos($mom_cycle_spindle_axis)
      }
   }


   if { $mom_machine_mode != "MILL" && $mom_machine_mode != "DRILL" } {
     # When machine mode is UNDEFINED, ask machine type
      if { ![string match "MILL" [PB_CMD_ask_machine_type]] } {
return
      }
   }


   WORKPLANE_SET

   set rapid_spindle_inhibit  FALSE
   set rapid_traverse_inhibit FALSE


   if { [EQ_is_lt $mom_pos($mom_cycle_spindle_axis) $mom_last_pos($mom_cycle_spindle_axis)] } {
      set going_lower 1
   } else {
      set going_lower 0
   }


   if { ![info exists mom_sys_work_plane_change] } {
      set mom_sys_work_plane_change 1
   }


  # Reverse workplane change direction per spindle axis
   global mom_spindle_axis

   if { [info exists mom_spindle_axis] } {

    #++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    # User can temporarily disable the work plane change for rapid moves along non-principal
    # spindle axis even when work plane change has been set in the Rapid Move event.
    #
    # Work plane change, if set, will still be in effect for moves along principal axes.
    #
    # - This flag has no effect if the work plane change is not set.
    #

      set disable_non_principal_spindle 0


      switch $mom_cycle_spindle_axis {
         0 {
            if [EQ_is_lt $mom_spindle_axis(0) 0.0] {
               set going_lower [expr abs($going_lower - 1)]
            }
         }
         1 {
            if [EQ_is_lt $mom_spindle_axis(1) 0.0] {
               set going_lower [expr abs($going_lower - 1)]
            }
         }
         2 { ;# Multi-spindle machine
            if [EQ_is_lt $mom_spindle_axis(2) 0.0] {
               set going_lower [expr abs($going_lower - 1)]
            }
         }
      }


     # Per user's choice above, disable work plane change for non-principal spindle axis
     #
      if { $disable_non_principal_spindle } {

         if { ![EQ_is_equal $mom_spindle_axis(0) 1] && ![EQ_is_equal $mom_spindle_axis(1) 1] && ![EQ_is_equal $mom_spindle_axis(0) 1] } {

            global mom_user_work_plane_change
            global mom_user_spindle_first

            set mom_user_work_plane_change $mom_sys_work_plane_change
            set mom_sys_work_plane_change 0

            if [info exists spindle_first] {
               set mom_user_spindle_first $spindle_first
            } else {
               set mom_user_spindle_first NONE
            }
         }
      }
   }


   if { $mom_sys_work_plane_change } {

      if { $going_lower } {
         set spindle_first FALSE
      } else {
         set spindle_first TRUE
      }

     # Force output in Initial Move and First Move.
      if { ![string match "*initial_move*" $mom_motion_event] && !$is_first_move } {

         if { [EQ_is_equal $mom_pos($mom_cycle_spindle_axis) $mom_last_pos($mom_cycle_spindle_axis)] } {
            set rapid_spindle_inhibit TRUE
         } else {
            set rapid_spindle_inhibit FALSE
         }

         if { [EQ_is_equal $mom_pos($traverse_axis1) $mom_prev_pos($traverse_axis1)] && [EQ_is_equal $mom_pos($traverse_axis2) $mom_prev_pos($traverse_axis2)] && [EQ_is_equal $mom_pos(3) $mom_prev_pos(3)] && [EQ_is_equal $mom_pos(4) $mom_prev_pos(4)] } {

            set rapid_traverse_inhibit TRUE
         } else {
            set rapid_traverse_inhibit FALSE
         }
      }

   } else {
      set spindle_first NONE
   }

} ;# RAPID_SET

} ;# uplevel
#***********
}


#=============================================================
proc PB_CMD_for_massive { } {
#=============================================================
global mom_group_name mom_warning_info oper prev_group_name
global first_group

#MOM_output_literal "mom_group_name = $mom_group_name"
if {[info exist first_group]} {
	if {[info exist mom_first_teeth]} {
			if ![info exist mom_group_name] {
			set mom_warning_info "При включенном массивировании постпроцессировать следует" 
			append mom_warning_info "\n "
			append mom_warning_info "\n\n только программные группы!!!" 
			MOM_output_to_listing_device $mom_warning_info 
			PB_CMD_Messages
			MOM_abort "Процессируйте программную группу!!!!!!" 
			}
	}

}


if {[info exist mom_group_name]} {
	if {$mom_group_name != $prev_group_name} {
	PB_CMD_for_prefun_in_end
	}
	set prev_group_name $mom_group_name
	set first_group 1
}
}


#=============================================================
proc PB_CMD_for_massive_1 { } {
#=============================================================
global mom_first_teeth mom_end_teeth mom_all_teeth mom_seqnum count_metka massiv_turned metka2
global metka_all 
global M212_mode M210_mode

PB_CMD_for_prefun3
if [info exist mom_first_teeth] {
set mom_first_teeth [format "%.0f" $mom_first_teeth]
set mom_end_teeth [format "%.0f" $mom_end_teeth]
set mom_all_teeth [format "%.0f" $mom_all_teeth]

MOM_set_seq_off
MOM_output_literal "#820=$mom_first_teeth (NACHALNII ZUB)"
MOM_output_literal "#821=$mom_end_teeth (KONECHNII ZUB)"
MOM_output_literal "#823=$mom_all_teeth (CHISLO OBRABATIVAEMIH MEST)"
MOM_set_seq_on
MOM_output_literal "   "
set metka_all $mom_seqnum
MOM_set_seq_off
set metka2 [expr $metka2+1]
MOM_output_literal "\#825=\[360 / \#823\] * \[\#820-1\]"

#MOM_set_seq_on
set count_metka [expr $count_metka + 1]
unset mom_first_teeth mom_end_teeth mom_all_teeth

set  massiv_turned 1


MOM_output_literal "G10 L2 P0 C\#825"
MOM_force Once G_motion fourth_axis fifth_axis
MOM_output_literal "M108 M$M212_mode"
MOM_do_template auto_tool_change_4


}
}


#=============================================================
proc PB_CMD_for_prefun { } {
#=============================================================
global flag flag2
set flag 0
set flag2 0
}


#=============================================================
proc PB_CMD_for_prefun2 { } {
#=============================================================
global mom_seqnum metka2 flag2

if {$flag2 == 0} {
set metka2 $mom_seqnum
set flag2 1
}
}


#=============================================================
proc PB_CMD_for_prefun3 { } {
#=============================================================
global mom_seqnum metka1

set metka1 $mom_seqnum
}


#=============================================================
proc PB_CMD_for_prefun_in_end { } {
#=============================================================
global mom_prefun flag metka1 metka2 flag2 mom_prefun_text count_metka mom_massive_otskok
global mom_first_teeth mom_end_teeth mom_all_teeth massiv_turned metka_all first_group prev_massive_otskok
global stop_inited
#MOM_output_literal "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

if {[info exist massiv_turned]} {

#MOM_output_literal "!!!!!!!!mom_massive_otskok=mom_massive_otskok!!!!!!!!!!!!!"
set metka2 [format "%.0f" $metka2]
set metka_all [format "%.0f" $metka_all]
MOM_output_literal "\#820 = \[\#820+1\]"
MOM_output_literal "IF \[\#820 GT \[\#821\]\] GOTO[expr $metka2]"
if {[info exist first_group]} {
PB_CMD_PROGRAMMED_OTSKOK_MASSIVE
}
MOM_output_literal "GOTO[expr $metka_all-1]"
MOM_set_seq_on
MOM_output_literal "G10 L2 P0 C0"
PB_CMD_OTSKOK
MOM_output_literal "G10.9X0"
MOM_set_seq_off

set flag 1
set flag2 0
unset massiv_turned
}

if {[info exist mom_massive_otskok]} {
set prev_massive_otskok $mom_massive_otskok
}

if [info exist stop_inited] {
if {$stop_inited == 1} {
#MOM_output_literal "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
PB_CMD_STOP
set stop_inited 0
}
}
}


#=============================================================
proc PB_CMD_fourth_axis_rotate_move { } {
#=============================================================
#
#  This procedure is used by the ROTATE ude command to output a 
#  fourth axis rotary move.  You can use the NC Data Definitions
#  section of postbuilder to modify the fourth_axis_rotary_move
#  block template. 
#
#  Do NOT add this block to events or markers.  It is a static 
#  block and it is not intended to be added to events.  Do NOT 
#  change the name of this custom command.
#

  MOM_force once fourth_axis
  MOM_do_template fourth_axis_rotate_move
}


#=============================================================
proc PB_CMD_g53z0 { } {
#=============================================================
PB_CMD_OTSKOK
}


#=============================================================
proc PB_CMD_handle_sync_event { } {
#=============================================================
  global mom_sync_code
  global mom_sync_index
  global mom_sync_start
  global mom_sync_incr
  global mom_sync_max


  set mom_sync_start 	99
  set mom_sync_incr   	1
  set mom_sync_max	199


  if {![info exists mom_sync_code] } {
    set mom_sync_code $mom_sync_start
  }
  
  set mom_sync_code [expr $mom_sync_code + $mom_sync_incr]

  MOM_output_literal "M$mom_sync_code"
}


#=============================================================
proc PB_CMD_init_after_tool { } {
#=============================================================
global first_after_tool mom_input_zero_int first_after_tool2 mom_operation_type
global mom_motion_event

set first_after_tool 1
set first_after_tool2 1

global B_recalc C_recalc B_prev2 C_prev2

set B_prev2 0
set C_prev2 0



#MOM_output_literal "mom_operation_type = $mom_operation_type"
#MOM_output_literal "mom_motion_event = $mom_motion_event"
}


#=============================================================
proc PB_CMD_init_cycles2 { } {
#=============================================================
global mom_cycle_feed_to_pos mom_cycle_rapid_to_pos mom_kin_pivot_gauge_offset
global mom_cycle_spindle_axis mom_sys_lock_status mom_Q_val

if ![info exist mom_Q_val] {
set mom_Q_val 0.3
}


MOM_force ONCE X Y Z R cycle_dwell cycle_step Q_cutcom F

#if {$mom_sys_lock_status == "ON"} {
#MOM_force ONCE R cycle_dwell cycle_step Q_cutcom F
#}
}


#=============================================================
proc PB_CMD_init_dll { } {
#=============================================================
global external_lib_rtv_mom_component_part_attr
set external_lib_rtv_mom_component_part_attr [MOM_ask_env_var UGII_CAM_POST_DIR]mom_user_INTEGREX_DIASKAN.dll
#MOM_run_user_function $external_lib_rtv_mom_component_part_attr "entry_rtv_mom_cp_part_attr"
}


#=============================================================
proc PB_CMD_init_helix { } {
#=============================================================
uplevel #0 {
#
# This procedure will be executed automatically at the start of program and
# anytime it is loaded as a slave post of a linked post.
#
# This procedure can be used to enable your post to output helix.
# You can choose from the following options to format the circle 
# block template to output the helix parameters.
#

set mom_sys_helix_pitch_type	"none"  

#
# The default setting for mom_sys_helix_pitch_type is "rise_radian".
# This is the most common.  Other choices are:
#
#    "rise_radian"              Measures the rise over one radian.
#    "rise_revolution"          Measures the rise over 360 degrees.
#    "none"                     Will suppress the output of pitch.
#    "other"                    Allows you to calculate the pitch
#                               using your own formula.
# 
# This custom command uses the block template circular_move to output
# the helix block.  If your post uses a block template with a different
# name, you must edit the line that outputs the helix block.

#
#  The following variable deines the output mode for helical records.
#
#  FULL_CIRCLE  -- This mode will output a helix record for each 360 
#                  degrees of the helix.
#  QUADRANT  --    This mode will output a helix record for each 90 
#                  degrees of the helix.
#  LINEAR  --      This mode will output the entire helix as linear gotos.
#  END_POINT --    This mode will assume the control can define an entire
#                  helix in a single block.

   set mom_kin_helical_arc_output_mode QUADRANT

   MOM_reload_kinematics



#=============================================================
proc MOM_helix_move { } {
#=============================================================
   global mom_pos_arc_plane
   global mom_sys_cir_vector
   global mom_sys_helix_pitch_type
   global mom_helix_pitch
   global mom_prev_pos mom_pos_arc_center mom_pos
   global PI PP P

   switch $mom_pos_arc_plane {
      XY { MOM_suppress once K ; set cir_index 2 }
      YZ { MOM_suppress once I ; set cir_index 0 }
      ZX { MOM_suppress once J ; set cir_index 1 }
   }

   switch $mom_sys_helix_pitch_type {
      none { }
      rise_revolution { set pitch $mom_helix_pitch }
      rise_radian { set pitch [expr $mom_helix_pitch / ($PI * 2.0)]}
      other {
#
	set pitch [expr $mom_helix_pitch/1]
#	Place your custom helix pitch code here
#
      }
      default { set mom_sys_helix_pitch_type "none" }
   }
    
   MOM_force once X Y Z

   if {$mom_sys_helix_pitch_type != "none"} {
      MOM_force once I J K

      switch $mom_sys_cir_vector {
         "Vector - Arc Center to Start" {
            set mom_prev_pos($cir_index) $pitch
            set mom_pos_arc_center($cir_index) 0.0
         }
         "Vector - Arc Start to Center" {
	#if {$cir_index != 2} {
         #  set mom_prev_pos($cir_index) 0.0
        #   set mom_pos_arc_center($cir_index) $pitch
        # } elseif {$cir_index == 2} {
	set PP [expr ($mom_prev_pos($cir_index) - $mom_pos($cir_index))/$pitch]
	set P [expr int($PP)]

#set PP [format "%.3f" $PP]
#set P [format "%.3f" $P]

#MOM_output_literal "PP=$PP"
#MOM_output_literal "P=$P"



set delta [expr $PP - $P]
	MOM_suppress once K
	if {$PP < 0} {
	set PP [expr $PP*(-1)]
        set P [expr $P*(-1)]
	}
	if {$PP > $P} {
	set P [expr $P+1]
	}
        MOM_force once P_cutcom
	#}
	}
         "Unsigned Vector - Arc Center to Start" {
            set mom_prev_pos($cir_index) 0.0
            set mom_pos_arc_center($cir_index) $pitch
         }
         "Vector - Absolute Arc Center" {
            set mom_pos_arc_center($cir_index) $pitch
         }
      }
   }


#
# You may need to edit this line if you output more than one block
# or if you have changed the name of your circular_move block template
#

MOM_force once I J G_motion
   MOM_do_template circular_move


} ;# MOM_helix_move


} ;# uplevel
}


#=============================================================
proc PB_CMD_init_perehvat { } {
#=============================================================
global mom_which_spindle mom_side_clump mom_distance_zc mom_distance_zc_clump H_user H_user2
global mom_spin_clump mom_time_clump mom_together_machining mom_perehvat_was mom_side_clump_prev
global mom_nedohod mom_number_safe mom_number_tool_otr mom_perehvat_was2 mom_perehvat_was3
global mom_distance_torec mom_distance_new_vilet
global mom_perehvat_was_obr mom_distance_zc_clump_obr mom_time_clump_obr mom_nedohod_obr mom_number_safe_obr


if {$mom_perehvat_was == 1} {
	#if {[info exist mom_which_spindle]} {

	set mom_distance_zc_clump [format "%.3f" $mom_distance_zc_clump]
	#set mom_time_clump [format "%.0f" $mom_time_clump]
	set mom_nedohod [format "%.3f" $mom_nedohod]
	PB_CMD_Perehvat_left_right
#MOM_output_literal "!!!!!!!!33333333333333333!!!!!!!!!!!"
  # }

set mom_perehvat_was 0


}

if {$mom_perehvat_was2 == 1} {
	if {[info exist mom_which_spindle]} {

	#set mom_spin_clump [format "%.0f" $mom_spin_clump]
	set mom_distance_zc_clump [format "%.3f" $mom_distance_zc_clump]
	#set mom_time_clump [format "%.0f" $mom_time_clump]
	set mom_nedohod [format "%.3f" $mom_nedohod]
	set mom_number_tool_otr [format "%.0f" $mom_number_tool_otr]

		PB_CMD_Perehvat_otrezka
#MOM_output_literal "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
   }

set mom_perehvat_was2 0


}

if {$mom_perehvat_was3 == 1} {
	if {[info exist mom_which_spindle]} {

	#set mom_spin_clump [format "%.0f" $mom_spin_clump]
	set mom_distance_zc_clump [format "%.3f" $mom_distance_zc_clump]
	#set mom_time_clump [format "%.0f" $mom_time_clump]
	set mom_nedohod [format "%.3f" $mom_nedohod]
	set mom_distance_torec [format "%.3f" $mom_distance_torec]
	set mom_distance_new_vilet [format "%.3f" $mom_distance_new_vilet]
	set mom_number_safe [format "%.0f" $mom_number_safe]

		PB_CMD_Perehvat_korrector
#MOM_output_literal "!!!!!!!!22222222222222222222!!!!!!!!!!!"

   }

set mom_perehvat_was3 0


}

if {$mom_perehvat_was_obr == 1} {
	if {[info exist mom_which_spindle]} {

	#set mom_spin_clump [format "%.0f" $mom_spin_clump]
	set mom_distance_zc_clump_obr [format "%.3f" $mom_distance_zc_clump_obr]
	#set mom_time_clump_obr [format "%.0f" $mom_time_clump_obr]
	set mom_nedohod_obr [format "%.3f" $mom_nedohod_obr]
	set mom_number_safe_obr [format "%.0f" $mom_number_safe_obr]

		PB_CMD_Perehvat_right_left
   }

set mom_perehvat_was_obr 0

}
}


#=============================================================
proc PB_CMD_init_rotary { } {
#=============================================================
uplevel #0 {

#
# Retract and Re-Engage Parameters
#
# This option is activated by setting the Axis Limit Violation 
# Handling option on the Machine Tool dialog to Retract/Re-Engage.  
#
# The sequence of actions that take place when a rotary limit violation
# occurs is a retract to the clearance geometry at the rapid feedrate, 
# reposition the rotary axes so they do not violate, move back to 
# the engage point at the retract feedrate and engage into the part again.
#
# You can set additional parameters that will control the retract 
# and re-engage motion.
#
#
#  mom_kin_retract_type ------- specifies the method used to
#                               calculate the retract point.
#                               The method can be of
#
#    DISTANCE : The retract will be to a point at a fixed distance
#               along the spindle axis.
#
#    SURFACE  : For a 4-axis rotary head machine, the retract will
#               be to a cylinder.  For a 5-axis dual heads machine,
#               the retract will be to a sphere.  For machine with
#               only rotary table(s), the retract will be to a plane
#               normal & along the spindle axis.
#
#  mom_kin_retract_distance --- specifies the distance or radius for
#                               defining the geometry of retraction.
#
#  mom_kin_reengage_distance -- specifies the re-engage point above
#                               the part.
#

set mom_kin_retract_type                "DISTANCE"
set mom_kin_retract_distance            10.0
set mom_kin_reengage_distance           .20



#
# The following parameters are used by UG Post.  Do NOT change 
# them unless you know what you are doing.
#
if ![info exists mom_kin_spindle_axis] {
  set mom_kin_spindle_axis(0)                    0.0
  set mom_kin_spindle_axis(1)                    0.0
  set mom_kin_spindle_axis(2)                    1.0
}

set spindle_axis_defined 1
if ![info exists mom_sys_spindle_axis] {
  set spindle_axis_defined 0
} else {
  if ![array exists mom_sys_spindle_axis] {
    unset mom_sys_spindle_axis
    set spindle_axis_defined 0
  }
}
if !$spindle_axis_defined {
  set mom_sys_spindle_axis(0)                    0.0
  set mom_sys_spindle_axis(1)                    0.0
  set mom_sys_spindle_axis(2)                    1.0
}

set mom_sys_lock_status                        "OFF"

} ;# uplevel
}


#=============================================================
proc PB_CMD_init_vars1 { } {
#=============================================================
global G10 mom_warning_info G68 mom_contact_status tools_info tools_length kol

global 5axis_flag 5axis_flag2 5axis_flag_for_end eng_flag Clear_G43_flag

global mom_kin_4th_axis_min_limit 
global mom_kin_4th_axis_max_limit tool_vec_check G54_flag mom_prefun

global mom_msys_origin nol1 nol2 nol3 mom_sys_leader

set mom_kin_4th_axis_min_limit 0
set mom_kin_4th_axis_max_limit 210
MOM_reload_kinematics

set mom_kin_arc_output_mode "FULL_CIRCLE"
MOM_reload_kinematics

set G54_flag 0

set G10 0

set mom_prefun 0

set mom_warning_info ""

set G68 0

set mom_contact_status "OFF"
set tool_vec_check 0

#set kol 1
#set tools_info ""
#set tools_length ""
set 5axis_flag ""
set Clear_G43_flag ""
set 5axis_flag2 0
set 5axis_flag_for_end 0
set eng_flag 0

global mom_lock_axis
set mom_lock_axis ""

set nol1 $mom_msys_origin(0)
set nol2 $mom_msys_origin(1)
set nol3 $mom_msys_origin(2)

global G68_turn G43_4_flag G43_4_prev
set G68_turn 0
set G43_4_flag 0
set G43_4_prev 0

global X_prev_feed Z_prev_feed
global X_prev_rap Z_prev_rap

set X_prev_feed 9999
set Z_prev_feed 9999
set X_prev_rap 9999
set Z_prev_rap 9999

global Z_prev X_prev
set Z_prev 9999
set X_prev 9999

global G43_4_init
set G43_4_init 0

global range_checked
set range_checked 0

global unlock_turned unlock_turned2
set unlock_turned 0
set unlock_turned2 0

global rot_y z_save perehod first_5a_rot
set rot_y 0
set z_save 9999
set perehod 0
set first_5a_rot 0

global 2D_machining
set 2D_machining 0

global helix
set helix 0

global circle_too
set circle_too 0

global y_min_limit
set y_min_limit -10

global rotate_was
set rotate_was 0

global segment_prev betta_inited C_max C_min C_prev check_was C_rot_prev
set C_min 1000
set C_max -1000
set C_prev 0
set segment_prev 0
set check_was 0
set C_rot_prev 0

global first_time_180
set first_time_180 0

global more_180
set more_180 0

global one_time
set one_time 0

global delta_segment
set delta_segment 0

global alpha
set alpha 0

global G2
set G2 0

global mom_motion_event_prev
set mom_motion_event_prev "linear"

global redirect_was
set redirect_was 0

global rotate_need
set rotate_need 0

global mom_prev_mcs_goto
set mom_prev_mcs_goto(0) 9999

global podvorot_init
set podvorot_init 0

global prev_event
set prev_event ""

#MOM_enable_address X Y Z 
#MOM_disable_address X_G43 Y_G43 Z_G43
MOM_force once X Y Z

global mom_prev_clearance_plane_point
set mom_prev_clearance_plane_point(2) 9999

global head_num
set head_num 0

global mom_sys_trailer mom_sys_leader
set mom_sys_leader(fifth_axis) "C\[\#818+"
set mom_sys_trailer(fifth_axis) "\]"

global first_time
set first_time 1

global count_metka
set count_metka 1

global prev_group_name 
set prev_group_name ""

global metka2 
set metka2 0
}


#=============================================================
proc PB_CMD_input_tool_length { } {
#=============================================================
global mom_definition_file_name var tools_info tools_length kol
global mom_tool_number mom_kin_pivot_gauge_offset path
global i2 var

set tool_flag 0
set mom_kin_pivot_gauge_offset 240

#set string $mom_definition_file_name
#set string1 [string trimright $string Willemin_M418.def]

for { set nn 0 } { $nn < [expr [llength $tools_info] + $kol]} { set nn [expr $nn+1]} {

	if {$mom_tool_number == [lindex $tools_info $nn]} {
		
		set var [lindex $tools_length $nn]
		set tool_flag 1
		break
	} 
}
if {$tool_flag == 0} {
	set tools_info [append tools_info " " $mom_tool_number]
	set tmp_mess_file "C:\\temp.txt"
	if {[file exists $tmp_mess_file]} {
		MOM_remove_file $tmp_mess_file
	}

	set o1file [open $tmp_mess_file w]
	puts $o1file "T$mom_tool_number"
	close $o1file

	set var [exec $path\\ugwish.exe $path\\ToolDialog.tcl]
	set tools_length [append tools_length $var " " ]

}

set kol 0

set mom_kin_pivot_gauge_offset [expr $mom_kin_pivot_gauge_offset + $var]
MOM_reload_kinematics

#MOM_output_literal "L100=$tools_info"
#MOM_output_literal "L100=$mom_kin_pivot_gauge_offset"
}


#=============================================================
proc PB_CMD_kin_abort_event { } {
#=============================================================
   if { [llength [info commands PB_CMD_abort_event]] } {
      PB_CMD_abort_event
   }
}


#=============================================================
proc PB_CMD_kin_before_motion { } {
#=============================================================
#  This custom command is used by UG Post to support Set/Lock,
#  rotary axis limit violation retracts and auto clamping.
#
#  --> Do not change this command!  If you want to improve
#      performance, you may comment out any of these commands.
#
   global mom_kin_machine_type

   if { [info exists mom_kin_machine_type] } {
      if { [string match "*3_axis_mill*" $mom_kin_machine_type] ||  [string match "*lathe*" $mom_kin_machine_type] } {
return
      }
   }


  # Lock on and not circular move
   global mom_sys_lock_status mom_current_motion
   if { [info exists mom_sys_lock_status] && ![string compare "ON" $mom_sys_lock_status] } {
      if { [info exists mom_current_motion] && [string compare "circular_move" $mom_current_motion] } {

         LOCK_AXIS_MOTION
      }
   }


  # Error and linear move
   global mom_sys_rotary_error mom_motion_event
   if { [info exists mom_sys_rotary_error] && [info exists mom_motion_event] } {
      if { $mom_sys_rotary_error != 0 && ![string compare "linear_move" $mom_motion_event] } {

         ROTARY_AXIS_RETRACT
      }
   }


  # Auto clamp on
   global mom_sys_auto_clamp
   if { [info exists mom_sys_auto_clamp] && ![string compare "ON" $mom_sys_auto_clamp] } {

      AUTO_CLAMP
   }
}


#=============================================================
proc PB_CMD_kin_before_output { } {
#=============================================================
# Broker command ensuring PB_CMD_before_output,if present, gets executed
# by MOM_before_output.
#
   if [llength [info commands PB_CMD_before_output] ] {
      PB_CMD_before_output
   }
}


#=============================================================
proc PB_CMD_kin_end_of_path { } {
#=============================================================
  # Record tool time for this operation.
   if { [llength [info commands PB_CMD_set_oper_tool_time] ] } {
      PB_CMD_set_oper_tool_time
   }

  # Clear tool holder angle used in operation
   global mom_use_b_axis
   UNSET_VARS mom_use_b_axis
}


#=============================================================
proc PB_CMD_kin_feedrate_set { } {
#=============================================================
# This command supercedes the functionalites provided by the
# FEEDRATE_SET in ugpost_base.tcl.  Post Builder automatically
# generates proper call sequences to this command in the
# Event handlers.
#
# This command must be used in conjunction with ugpost_base.tcl.
#
   global   feed com_feed_rate
   global   mom_feed_rate_output_mode super_feed_mode feed_mode
   global   mom_cycle_feed_rate_mode mom_cycle_feed_rate
   global   mom_cycle_feed_rate_per_rev
   global   mom_motion_type
   global   Feed_IPM Feed_IPR Feed_MMPM Feed_MMPR Feed_INV
   global   mom_sys_feed_param
   global   mom_sys_cycle_feed_mode


   set super_feed_mode $mom_feed_rate_output_mode

   set f_pm [ASK_FEEDRATE_FPM]
   set f_pr [ASK_FEEDRATE_FPR]

   switch $mom_motion_type {

      CYCLE {
         if { [info exists mom_sys_cycle_feed_mode] } {
            if { [string compare "Auto" $mom_sys_cycle_feed_mode] } {
               set mom_cycle_feed_rate_mode $mom_sys_cycle_feed_mode
            }
         }
         if { [info exists mom_cycle_feed_rate_mode] }    { set super_feed_mode $mom_cycle_feed_rate_mode }
         if { [info exists mom_cycle_feed_rate] }         { set f_pm $mom_cycle_feed_rate }
         if { [info exists mom_cycle_feed_rate_per_rev] } { set f_pr $mom_cycle_feed_rate_per_rev }
      }

      FROM -
      RETRACT -
      RETURN -
      LIFT -
      TRAVERSAL -
      GOHOME -
      GOHOME_DEFAULT -
      RAPID {
         SUPER_FEED_MODE_SET RAPID
      }

      default {
         if { [EQ_is_zero $f_pm] && [EQ_is_zero $f_pr] } {
            SUPER_FEED_MODE_SET RAPID
         } else {
            SUPER_FEED_MODE_SET CONTOUR
         }
      }
   }


   set feed_mode $super_feed_mode


  # Adjust feedrate format per Post output unit again.
   global mom_kin_output_unit
   if { ![string compare "IN" $mom_kin_output_unit] } {
      switch $feed_mode {
         MMPM {
            set feed_mode "IPM"
            CATCH_WARNING "Feedrate mode MMPM changed to IPM"
         }
         MMPR {
            set feed_mode "IPR"
            CATCH_WARNING "Feedrate mode MMPR changed to IPR"
         }
      }
   } else {
      switch $feed_mode {
         IPM {
            set feed_mode "MMPM"
            CATCH_WARNING "Feedrate mode IPM changed to MMPM"
         }
         IPR {
            set feed_mode "MMPR"
            CATCH_WARNING "Feedrate mode IPR changed to MMPR"
         }
      }
   }


   switch $feed_mode {
      IPM     -
      MMPM    { set feed $f_pm }
      IPR     -
      MMPR    { set feed $f_pr }
      DPM     { set feed [PB_CMD_FEEDRATE_DPM] }
      FRN     -
      INVERSE { set feed [PB_CMD_FEEDRATE_NUMBER] }
      default {
         CATCH_WARNING "INVALID FEED RATE MODE"
         return
      }
   }


  # Post Builder provided format for the current mode:
   if { [info exists mom_sys_feed_param(${feed_mode},format)] } {
      MOM_set_address_format F $mom_sys_feed_param(${feed_mode},format)
   } else {
      switch $feed_mode {
         IPM     -
         MMPM    -
         IPR     -
         MMPR    -
         DPM     -
         FRN     { MOM_set_address_format F Feed_${feed_mode} }
         INVERSE { MOM_set_address_format F Feed_INV }
      }
   }

  # Commentary output
   set com_feed_rate $f_pm


  # Execute user's command, if any.
   if { [llength [info commands "PB_CMD_FEEDRATE_SET"]] } {
      PB_CMD_FEEDRATE_SET
   }
}


#=============================================================
proc PB_CMD_kin_handle_sync_event { } {
#=============================================================
   PB_CMD_handle_sync_event
}


#=============================================================
proc PB_CMD_kin_init_mill_turn { } {
#=============================================================
}


#=============================================================
proc PB_CMD_kin_init_mill_xzc { } {
#=============================================================
}


#=============================================================
proc PB_CMD_kin_init_new_iks { } {
#=============================================================
   global mom_new_iks_exists

  # Revert legacy dual-head kinematic parameters when new IKS is absent.
   if { ![info exists mom_new_iks_exists] } {
      set ugii_version [string trim [MOM_ask_env_var UGII_VERSION]]
      if { ![string match "v3" $ugii_version] } {

         if { [llength [info commands PB_CMD_revert_dual_head_kin_vars] ] } {
            PB_CMD_revert_dual_head_kin_vars
         }
return
      }
   }

  # Initialize new IKS parameters.
   if { [llength [info commands PB_init_new_iks] ] } {
      PB_init_new_iks
   }

  # Users can provide next command to modify or disable new IKS options.
   if { [llength [info commands PB_CMD_revise_new_iks] ] } {
      PB_CMD_revise_new_iks
   }

  # Revert legacy dual-head kinematic parameters when new IKS is disabled.
   global mom_kin_iks_usage
   if { $mom_kin_iks_usage == 0 } {
      if { [llength [info commands PB_CMD_revert_dual_head_kin_vars] ] } {
         PB_CMD_revert_dual_head_kin_vars
      }
   }
}


#=============================================================
proc PB_CMD_kin_init_probing_cycles { } {
#=============================================================
   set cmd PB_CMD_init_probing_cycles
   if { [llength [info commands "$cmd"]] } {
      eval $cmd
   }
}


#=============================================================
proc PB_CMD_kin_init_rotary { } {
#=============================================================

   global mom_kin_machine_type

   if { [info exists mom_kin_machine_type] } {
      if { [string match "*3_axis_mill*" $mom_kin_machine_type] || [string match "*lathe*" $mom_kin_machine_type] } {
return
      }
   }


   if { [llength [info commands PB_CMD_init_rotary] ] } {
      PB_CMD_init_rotary
   }


#***********
uplevel #0 {


#=============================================================
proc MOM_clamp { } {
#=============================================================
  global mom_clamp_axis mom_clamp_status mom_sys_auto_clamp

   if { ![string compare "AUTO" $mom_clamp_axis] } {

      if { ![string compare "ON" $mom_clamp_status] } {
         set mom_sys_auto_clamp "ON"
      } elseif { ![string compare "OFF" $mom_clamp_status] } {
         set mom_sys_auto_clamp "OFF"
      }

   } else {

      CATCH_WARNING "$mom_clamp_axis not handled in current implementation!"
   }
}


#=============================================================
proc MOM_rotate { } {
#=============================================================
## <rws 04-11-2008>
## If in TURN mode and user invokes "Flip tool aorund Holder" a MOM_rotate event is generated
## When this happens ABORT this event via return
##

   global mom_machine_mode


   if { [info exists mom_machine_mode] && [string match "TURN" $mom_machine_mode] } {
return
   }


   global mom_rotate_axis_type mom_rotation_mode mom_rotation_direction
   global mom_rotation_angle mom_rotation_reference_mode
   global mom_kin_machine_type mom_kin_4th_axis_direction mom_kin_5th_axis_direction
   global mom_kin_4th_axis_leader mom_kin_5th_axis_leader
   global mom_kin_4th_axis_leader mom_kin_5th_axis_leader mom_pos
   global mom_out_angle_pos
   global unlocked_prev_pos mom_sys_leader
   global mom_kin_4th_axis_min_limit mom_kin_4th_axis_max_limit
   global mom_kin_5th_axis_min_limit mom_kin_5th_axis_max_limit
   global mom_prev_pos
   global mom_prev_rot_ang_4th mom_prev_rot_ang_5th
   global M212_mode M210_mode


   if { ![info exists mom_rotation_angle] } {
     # Should the event be aborted here???
return
   }


   if { ![info exists mom_kin_5th_axis_direction] } {
      set mom_kin_5th_axis_direction "0"
   }


  #
  #  Determine which rotary axis the UDE has specifid - fourth(3), fifth(4) or invalid(0)
  #
  #
   if { [string match "*3_axis_mill_turn*" $mom_kin_machine_type] } {

      switch $mom_rotate_axis_type {
         CAXIS -
         FOURTH_AXIS -
         TABLE {
            set axis 3
         }
         default {
            set axis 0
         }
      }

   } else {

      switch $mom_rotate_axis_type {
         AAXIS -
         BAXIS -
         CAXIS {
            set axis [AXIS_SET $mom_rotate_axis_type]
         }
         HEAD {
            if { ![string compare "5_axis_head_table" $mom_kin_machine_type] || ![string compare "5_AXIS_HEAD_TABLE" $mom_kin_machine_type] } {
               set axis 4
            } else {
               set axis 3
            }
         }
         FIFTH_AXIS {
            set axis 4
         }
         FOURTH_AXIS -
         TABLE -
         default {
            set axis 3
         }
      }
   }

   if { $axis == 0 } {
      global mom_warning_info
      set mom_warning_info "Invalid rotary axis"
      MOM_catch_warning
      MOM_abort_event
   }

   switch $mom_rotation_mode {
      NONE -
      ATANGLE {
         set angle $mom_rotation_angle
         set mode 0
      }
      ABSOLUTE {
         set angle $mom_rotation_angle
         set mode 1
      }
      INCREMENTAL {
         set angle [expr $mom_pos($axis) + $mom_rotation_angle]
         set mode 0
      }
   }

   switch $mom_rotation_direction {
      NONE {
         set dir 0
      }
      CLW {
         set dir 1
      }
      CCLW {
         set dir -1
      }
   }

   set ang [LIMIT_ANGLE $angle]
   set mom_pos($axis) $ang

   if { $axis == "3" } { ;# Rotate 4th axis

      if { ![info exists mom_prev_rot_ang_4th] } {
         set mom_prev_rot_ang_4th [MOM_ask_address_value fourth_axis]
      }
      if { [string length [string trim $mom_prev_rot_ang_4th]] == 0 } {
         set mom_prev_rot_ang_4th 0.0
      }

      set prev_angles(0) $mom_prev_rot_ang_4th

   } elseif { $axis == "4" } { ;# Rotate 5th axis

      if { ![info exists mom_prev_rot_ang_5th] } {
         set mom_prev_rot_ang_5th [MOM_ask_address_value fifth_axis]
      }
      if { [string length [string trim $mom_prev_rot_ang_5th]] == 0 } {
         set mom_prev_rot_ang_5th 0.0
      }

      set prev_angles(1) $mom_prev_rot_ang_5th
   } 

   set p [expr $axis + 1]
   set a [expr $axis - 3]

   if { $axis == 3  &&  [string match "MAGNITUDE_DETERMINES_DIRECTION" $mom_kin_4th_axis_direction] } {

      set dirtype "MAGNITUDE_DETERMINES_DIRECTION"

      global mom_sys_4th_axis_dir_mode

      if { [info exists mom_sys_4th_axis_dir_mode] && ![string compare "ON" $mom_sys_4th_axis_dir_mode] } {

         set del $dir
         if { $del == 0 } {
            set del [expr $ang - $mom_prev_pos(3)]
            if { $del >  180.0 } { set del [expr $del - 360.0] }
            if { $del < -180.0 } { set del [expr $del + 360.0] }
         }

         global mom_sys_4th_axis_cur_dir
         global mom_sys_4th_axis_clw_code mom_sys_4th_axis_cclw_code

         if { $del > 0.0 } {
            set mom_sys_4th_axis_cur_dir $mom_sys_4th_axis_clw_code
         } elseif { $del < 0.0 } {
            set mom_sys_4th_axis_cur_dir $mom_sys_4th_axis_cclw_code
         }
      }

   } elseif { $axis == 4  &&  [string match "MAGNITUDE_DETERMINES_DIRECTION" $mom_kin_5th_axis_direction] } {

      set dirtype "MAGNITUDE_DETERMINES_DIRECTION"

      global mom_sys_5th_axis_dir_mode

      if { [info exists mom_sys_5th_axis_dir_mode] && ![string compare "ON" $mom_sys_5th_axis_dir_mode] } {

         set del $dir
         if { $del == 0 } {
            set del [expr $ang - $mom_prev_pos(4)]
            if { $del >  180.0 } { set del [expr $del - 360.0] }
            if { $del < -180.0 } { set del [expr $del + 360.0] }
         }

         global mom_sys_5th_axis_cur_dir
         global mom_sys_5th_axis_clw_code mom_sys_5th_axis_cclw_code

         if { $del > 0.0 } {
            set mom_sys_5th_axis_cur_dir $mom_sys_5th_axis_clw_code
         } elseif { $del < 0.0 } {
            set mom_sys_5th_axis_cur_dir $mom_sys_5th_axis_cclw_code
         }
      }

   } else {

      set dirtype "SIGN_DETERMINES_DIRECTION"
   }

   if { $mode == 1 } {

      set mom_out_angle_pos($a) $angle

   } elseif { [string match "MAGNITUDE_DETERMINES_DIRECTION" $dirtype] } {

      if { $axis == 3 } {
         set mom_out_angle_pos($a) [ROTSET $ang $prev_angles(0) $mom_kin_4th_axis_direction $mom_kin_4th_axis_leader mom_sys_leader(fourth_axis) $mom_kin_4th_axis_min_limit $mom_kin_4th_axis_max_limit]
      } else {
         set mom_out_angle_pos($a) [ROTSET $ang $prev_angles(1) $mom_kin_5th_axis_direction $mom_kin_5th_axis_leader mom_sys_leader(fifth_axis) $mom_kin_5th_axis_min_limit $mom_kin_5th_axis_max_limit]
      }


 #     if {$axis == 3} {set prot $prev_angles(0)}
 #     if {$axis == 4} {set prot $prev_angles(1)}
 #     if {$dir == 1 && $mom_out_angle_pos($a) < $prot} {
 #        set mom_out_angle_pos($a) [expr $mom_out_angle_pos($a) + 360.0]
 #     } elseif {$dir == -1 && $mom_out_angle_pos($a) > $prot} {
 #        set mom_out_angle_pos($a) [expr $mom_out_angle_pos($a) - 360.0]
 #     }


   } elseif { [string match "SIGN_DETERMINES_DIRECTION" $dirtype] } {

      if { $dir == -1 } {
         if { $axis == 3 } {
            set mom_sys_leader(fourth_axis) $mom_kin_4th_axis_leader-
         } else {
            set mom_sys_leader(fifth_axis) $mom_kin_5th_axis_leader-
         }
      } elseif { $dir == 0 } {
         if { $axis == 3 } {
            set mom_out_angle_pos($a) [ROTSET $ang $prev_angles(0) $mom_kin_4th_axis_direction $mom_kin_4th_axis_leader mom_sys_leader(fourth_axis) $mom_kin_4th_axis_min_limit $mom_kin_4th_axis_max_limit]
         } else {
            set mom_out_angle_pos($a) [ROTSET $ang $prev_angles(1) $mom_kin_5th_axis_direction $mom_kin_5th_axis_leader mom_sys_leader(fifth_axis) $mom_kin_5th_axis_min_limit $mom_kin_5th_axis_max_limit]
         }
      } elseif { $dir == 1 } {
         set mom_out_angle_pos($a) $ang
      }
   }


#<03-02-09 gsl> What is the logic here?
if 1 {
   global mom_sys_auto_clamp

   if { [info exists mom_sys_auto_clamp] && [string match "ON" $mom_sys_auto_clamp] } {
      set out1 "1"
      set out2 "0"

      if { $axis == 3 } { ;# Rotate 4th axis
         AUTO_CLAMP_2 $out1
         AUTO_CLAMP_1 $out2
      } else {
         AUTO_CLAMP_1 $out1
         AUTO_CLAMP_2 $out2
      }
   }
}


   if { $axis == 3 } {

      ####  <rws>
      ####  Use ROTREF switch ON to not output the actual 4th axis move

      if { ![string compare "OFF" $mom_rotation_reference_mode] } {
         PB_CMD_fourth_axis_rotate_move
      }

      if { ![string compare "SIGN_DETERMINES_DIRECTION" $mom_kin_4th_axis_direction] } {
         set mom_prev_rot_ang_4th [expr abs($mom_out_angle_pos(0))]
      } else {
         set mom_prev_rot_ang_4th $mom_out_angle_pos(0)
      }

      MOM_reload_variable mom_prev_rot_ang_4th

   } else {

      if { [info exists mom_kin_5th_axis_direction] } {

         ####  <rws>
         ####  Use ROTREF switch ON to not output the actual 5th axis move

         if { ![string compare "OFF" $mom_rotation_reference_mode] } {
         MOM_output_literal "M$M212_mode"
            PB_CMD_fifth_axis_rotate_move
            MOM_output_literal "M$M210_mode"
         }

         if { ![string compare "SIGN_DETERMINES_DIRECTION" $mom_kin_5th_axis_direction] } {
            set mom_prev_rot_ang_5th [expr abs($mom_out_angle_pos(1))]
         } else {
            set mom_prev_rot_ang_5th $mom_out_angle_pos(1)
         }

         MOM_reload_variable mom_prev_rot_ang_5th
      }
   }

  #<05-10-06 sws> pb351 - Uncommented next 3 lines
   set mom_prev_pos($axis) $ang
   MOM_reload_variable -a mom_prev_pos
   MOM_reload_variable -a mom_out_angle_pos
}


#=============================================================
proc AUTO_CLAMP { } {
#=============================================================
# called by PB_CMD_kin_before_motion

#  This command is used to automatically output clamp and unclamp
#  codes.  This command must be called in the the command
#  << PB_CMD_kin_before_motion >>.  By default this command will
#  output M10 or M11 to do fourth axis clamping and unclamping or
#  M12 or M13 to do fifth axis clamping and unclamping.
#

   global mom_pos
   global mom_prev_pos

   global mom_sys_auto_clamp
 
   if { ![info exists mom_sys_auto_clamp] || ![string match "ON" $mom_sys_auto_clamp] } {
return
   }


   set rotary_out [EQ_is_equal $mom_pos(3) $mom_prev_pos(3)]

   AUTO_CLAMP_1 $rotary_out

   set rotary_out [EQ_is_equal $mom_pos(4) $mom_prev_pos(4)]

   AUTO_CLAMP_2 $rotary_out
}


#=============================================================
proc AUTO_CLAMP_1 { out } {
#=============================================================
# called by AUTO_CLAMP & MOM_rotate

   global clamp_rotary_fourth_status

   if { ![info exists clamp_rotary_fourth_status] } {

      PB_CMD_unclamp_fourth_axis
      set clamp_rotary_fourth_status "UNCLAMPED"

   } elseif { $out  == 0 && [string compare "UNCLAMPED" $clamp_rotary_fourth_status] } {

     #<sws 01-09-06> pb350
      PB_CMD_unclamp_fourth_axis
      set clamp_rotary_fourth_status "UNCLAMPED"

   } elseif { $out == 1 && [string compare "CLAMPED" $clamp_rotary_fourth_status] } {

      PB_CMD_clamp_fourth_axis
      set clamp_rotary_fourth_status "CLAMPED"
   }
}


#=============================================================
proc AUTO_CLAMP_2 { out } {
#=============================================================
# called by AUTO_CLAMP & MOM_rotate

   global mom_kin_machine_type

   set machine_type [string tolower $mom_kin_machine_type]
   switch $machine_type {
      5_axis_dual_table -
      5_axis_dual_head  -
      5_axis_head_table { }

      default           {
return
      }
   }

   global clamp_rotary_fifth_status

   if { ![info exists clamp_rotary_fifth_status] } {

      PB_CMD_unclamp_fifth_axis
      set clamp_rotary_fifth_status "UNCLAMPED"

   } elseif { $out == 0 && [string compare "UNCLAMPED" $clamp_rotary_fifth_status] } {

     #<sws 01-09-06> pb350
      PB_CMD_unclamp_fifth_axis
      set clamp_rotary_fifth_status "UNCLAMPED"

   } elseif { $out == 1 && [string compare "CLAMPED" $clamp_rotary_fifth_status] } {

      PB_CMD_clamp_fifth_axis
      set clamp_rotary_fifth_status "CLAMPED"
   }
}


#=============================================================
proc MOM_lock_axis { } {
#=============================================================
  global mom_sys_lock_value mom_sys_lock_plane
  global mom_sys_lock_axis mom_sys_lock_status

   set status [SET_LOCK axis plane value]
   if { ![string compare "error" $status] } {
      MOM_catch_warning
      set mom_sys_lock_status OFF
   } else {
      set mom_sys_lock_status $status
      if { [string compare "OFF" $status] } {
         set mom_sys_lock_axis $axis
         set mom_sys_lock_plane $plane
         set mom_sys_lock_value $value

         LOCK_AXIS_INITIALIZE
      }
   }
}


#=============================================================
proc PB_catch_warning { } {
#=============================================================
  global mom_sys_rotary_error mom_warning_info

   if { [string match "ROTARY CROSSING LIMIT." $mom_warning_info] } {
      set mom_sys_rotary_error $mom_warning_info
   }

   if { [string match "secondary rotary position being used" $mom_warning_info] } {
      set mom_sys_rotary_error $mom_warning_info
   }

   if { [string match "WARNING: unable to determine valid rotary positions" $mom_warning_info] } {

     # To abort the current event
     # - Whoever handles this condition MUST unset it to avoid any lingering effect!
     #
      global mom_sys_abort_next_event
      set mom_sys_abort_next_event 1
   }
}


#=============================================================
proc MOM_lintol { } {
#=============================================================
   global mom_kin_linearization_flag
   global mom_kin_linearization_tol
   global mom_lintol_status
   global mom_lintol

   if { ![string compare "ON" $mom_lintol_status] } {
      set mom_kin_linearization_flag "TRUE"
      if { [info exists mom_lintol] } {set mom_kin_linearization_tol $mom_lintol}
   } elseif { ![string compare "OFF" $mom_lintol_status] } {
      set mom_kin_linearization_flag "FALSE"
   }
}


} ;# uplevel
#***********
}


#=============================================================
proc PB_CMD_kin_linearize_motion { } {
#=============================================================
}


#=============================================================
proc PB_CMD_kin_mill_turn_initialize { } {
#=============================================================
}


#=============================================================
proc PB_CMD_kin_mill_xzc_init { } {
#=============================================================
}


#=============================================================
proc PB_CMD_kin_set_csys { } {
#=============================================================
# - For mill post -
#

  # Output NC code according to CSYS
   if { [llength [info commands PB_CMD_set_csys] ] } {
      PB_CMD_set_csys
   }

  # Overload IKS params from machine model.
   PB_CMD_reload_iks_parameters

  # In case Axis Rotation has been set to "reverse"
   if { [llength [info commands PB_CMD_reverse_rotation_vector] ] } {
      PB_CMD_reverse_rotation_vector
   }
}


#=============================================================
proc PB_CMD_kin_start_of_path { } {
#=============================================================
# - For mill post -
#
#  This command is executed at the start of every operation.
#  It will check to see if a new head (post) was loaded and 
#  will then initialize any functionality specific to that post.
#
#  It will also restore the master Start of Program &
#  End of Program event handlers.
#
#  --> DO NOT CHANGE THIS FILE UNLESS YOU KNOW WHAT YOU ARE DOING.
#  --> DO NOT CALL THIS PROCEDURE FROM ANY OTHER CUSTOM COMMAND.
#
  global mom_sys_head_change_init_program

   if { [info exists mom_sys_head_change_init_program] } {

      PB_CMD_kin_start_of_program
      unset mom_sys_head_change_init_program


     # Execute start of head callback in new post's context.
      global CURRENT_HEAD
      if { [info exists CURRENT_HEAD] &&  [llength [info commands PB_start_of_HEAD__$CURRENT_HEAD]] } {
         PB_start_of_HEAD__$CURRENT_HEAD
      }

      # Restore master start & end of program handlers
      if { [llength [info commands "MOM_start_of_program_save"]] } {
         if { [llength [info commands "MOM_start_of_program"]] } {
            rename MOM_start_of_program ""
         }
         rename MOM_start_of_program_save MOM_start_of_program 
      }
      if { [llength [info commands "MOM_end_of_program_save"]] } {
         if { [llength [info commands "MOM_end_of_program"]] } {
            rename MOM_end_of_program ""
         }
         rename MOM_end_of_program_save MOM_end_of_program 
      }

     # Restore master head change event handler
      if { [llength [info commands "MOM_head_save"]] } {
         if { [llength [info commands "MOM_head"]] } {
            rename MOM_head ""
         }
         rename MOM_head_save MOM_head
      }
   }

  # Overload IKS params from machine model.
   PB_CMD_reload_iks_parameters

  # Incase Axis Rotation has been set to "reverse"
   if { [llength [info commands PB_CMD_reverse_rotation_vector] ] } {
      PB_CMD_reverse_rotation_vector
   }

  # Initialize tool time accumulator for this operation.
   if { [llength [info commands PB_CMD_init_oper_tool_time] ] } {
      PB_CMD_init_oper_tool_time
   }

  # Force out motion G code at the start of path.
   MOM_force once G_motion
}


#=============================================================
proc PB_CMD_kin_start_of_program { } {
#=============================================================
#  This command will execute the following custom commands for
#  initialization.  They will be executed once at the start of 
#  program and again each time they are loaded as a linked post.  
#  After execution they will be deleted so that they are not 
#  present when a different post is loaded.  You may add a call 
#  to any command that you want executed when a linked post is 
#  loaded.  
#
#  Note when a linked post is called in, the Start of Program
#  event marker is not executed again.
#
#  --> DO NOT REMOVE ANY LINES FROM THIS PROCEDURE UNLESS YOU KNOW
#      WHAT YOU ARE DOING.
#  --> DO NOT CALL THIS PROCEDURE FROM ANY
#      OTHER CUSTOM COMMAND.
#
   global mom_kin_machine_type


   set command_list [list]

   if { [info exists mom_kin_machine_type] } {
      if { ![string match "*3_axis_mill*" $mom_kin_machine_type] && ![string match "*lathe*" $mom_kin_machine_type] } {

         lappend command_list  PB_CMD_kin_init_rotary
      }
   }

   lappend command_list  PB_CMD_kin_init_new_iks

   lappend command_list  PB_CMD_init_pivot_offsets
   lappend command_list  PB_CMD_init_auto_retract
   lappend command_list  PB_CMD_initialize_parallel_zw_mode
   lappend command_list  PB_CMD_init_parallel_zw_mode
   lappend command_list  PB_CMD_initialize_tool_list
   lappend command_list  PB_CMD_init_tool_list
   lappend command_list  PB_CMD_init_tape_break
   lappend command_list  PB_CMD_initialize_spindle_axis
   lappend command_list  PB_CMD_init_spindle_axis
   lappend command_list  PB_CMD_initialize_helix
   lappend command_list  PB_CMD_init_helix
   lappend command_list  PB_CMD_pq_cutcom_initialize
   lappend command_list  PB_CMD_init_pq_cutcom

   lappend command_list  PB_CMD_kin_init_probing_cycles


   if { [info exists mom_kin_machine_type] } {
      if { [string match "*3_axis_mill_turn*" $mom_kin_machine_type] } {

         lappend command_list  PB_CMD_kin_init_mill_xzc
         lappend command_list  PB_CMD_kin_mill_xzc_init
         lappend command_list  PB_CMD_kin_init_mill_turn
         lappend command_list  PB_CMD_kin_mill_turn_initialize
      }
   }


   foreach cmd $command_list {

      if { [llength [info commands "$cmd"]] } {

        # <PB v2.0.2>
        # Old init commands for XZC/MILL_TURN posts are not executed.
        # Parameters set by these commands in the v2.0 legacy posts
        # will need to be transfered to PB_CMD_init_mill_xzc &
        # PB_CMD_init_mill_turn commands respectively.

         switch $cmd {
            "PB_CMD_kin_mill_xzc_init" -
            "PB_CMD_kin_mill_turn_initialize" {}
            default { eval $cmd }
         }
         rename $cmd ""
         proc $cmd { args } {} 
      }
   }
}


#=============================================================
proc PB_CMD_linear_move { } {
#=============================================================
#
#  This procedure is used by many automatic postbuilder functions 
#  to output a linear move.  Do NOT add this block to events or
#  markers.  It is a static block and it is not intended to be added
#  to events.  Do NOT change the name of this procedure.  
#
#  If you need a custom command to be output with a linear move block, 
#  you must place a call to the custom command either before or after 
#  the MOM_do_template command.
#
#  This proc is used for:
#     simulated cycles feed moves
#     mill/turn mill linearization
#     four and five axis retract and re-engage
#     

  MOM_do_template linear_move
}


#=============================================================
proc PB_CMD_linearize_motion { } {
#=============================================================
#
# This procedure is to obliterate the same proc in the previous
# Post Builder release (v2.0).  In case this command has been
# attached to the Linear Move event of the existing Posts, this
# will prevent the linearization being performed twice, since
# PB_CMD_kin_linearize_motion is executed automatically already.
#
}


#=============================================================
proc PB_CMD_lock_off { } {
#=============================================================
global mom_sys_lock_status tool_with_on first_after_tool G43_4_prev
global mom_kin_linearization_flag mom_lintol_status mom_lock_axis

set mom_sys_lock_status "OFF"
set mom_lintol_status "OFF" 
set mom_kin_linearization_flag "FALSE"
set mom_lock_axis "OFF"

MOM_lock_axis

global mom_kin_helical_arc_output_mode
   set mom_kin_helical_arc_output_mode FULL_CIRCLE
   set mom_kin_arc_output_mode "QUADRANT"
   MOM_reload_kinematics


set first_after_tool 1

global G68_turn
set G68_turn 0

global G43_4_flag
set G43_4_prev $G43_4_flag
set G43_4_flag 0

PB_CMD_Check_range_B
global range_checked
set range_checked 0

global unlock_turned unlock_turned2
set unlock_turned 0
set unlock_turned2 0

global rot_y z_save first_5a_rot

#set rot_y 0
set first_5a_rot 0
set z_save 9999

global 2D_machining
set 2D_machining 0

global rotate_was
set rotate_was 0

global mom_prev_pos
set mom_prev_pos(0) 9999
set mom_prev_pos(1) 9999

global betta_current segment_prev betta_inited
set segment_prev 0


global more_180
set more_180 0

global first_time_180
set first_time_180 0

global one_time
set one_time 0

global delta_segment
set delta_segment 0

global redirect_was
set redirect_was 0

global rotate_need 
set rotate_need 0

global mom_podvorot_on
if [info exist mom_podvorot_on] {unset mom_podvorot_on}

global mom_prev_mcs_goto
set mom_prev_mcs_goto(0) 9999

global B_recalc C_recalc B_prev2 C_prev2
if [info exist B_recalc] {
set B_prev2 $B_recalc
set C_prev2 $C_recalc
}

global mom_prev_clearance_plane_point mom_clearance_plane_point
if [info exist mom_clearance_plane_point] {
set mom_prev_clearance_plane_point(2) $mom_clearance_plane_point(2)
}

global mom_kin_spindle_axis mom_head_spindle_axis

set mom_kin_spindle_axis(0) 0
set mom_kin_spindle_axis(1) 0
set mom_kin_spindle_axis(2) 1
MOM_reload_variable -a mom_kin_spindle_axis
MOM_reload_kinematics

global head_num
set head_num 0

global mom_sys_spindle_direction_code
set mom_sys_spindle_direction_code(CLW) 3
set mom_sys_spindle_direction_code(CCLW) 4
MOM_reload_kinematics

#global mom_massive_otskok
#unset mom_massive_otskok

global coolant_inited mom_coolant_status
set coolant_inited 0


global mom_diap_on mom_kin_4th_axis_min_limit mom_kin_4th_axis_max_limit diap

if [info exist mom_diap_on] {
set mom_kin_4th_axis_min_limit -30
set mom_kin_4th_axis_max_limit 0
MOM_reload_kinematics
unset mom_diap_on
set diap 0.5
} else {
set mom_kin_4th_axis_min_limit 0
set mom_kin_4th_axis_max_limit 210
MOM_reload_kinematics
set diap 1
}
}


#=============================================================
proc PB_CMD_log_revisions { } {
#=============================================================
# Dummy command to log changes in this post --
#
# 02-26-09 gsl - Initial version
#
}


#=============================================================
proc PB_CMD_motion_circ { } {
#=============================================================
global motion_type

set motion_type "Circle"

#MOM_output_literal "(test1111)"
}


#=============================================================
proc PB_CMD_motion_lin { } {
#=============================================================
global motion_type

set motion_type "Linear"
}


#=============================================================
proc PB_CMD_no_move_flag { } {
#=============================================================
global mom_no_move

set mom_no_move 0
}


#=============================================================
proc PB_CMD_nurbs_end_of_program { } {
#=============================================================
  global nurbs_move_flag

  if {[info exists nurbs_move_flag]} {MOM_output_literal "G05 P0"}
}


#=============================================================
proc PB_CMD_nurbs_initialize { } {
#=============================================================
#
#  You will need to activate nurbs motion in Unigraphics CAM under 
#  machine control to generate nurbs events.
#
#  This procedure is used to establish nurbs parameters.  It must be 
#  placed in the Start of Program marker to output nurbs.
#

uplevel #0 { 

  set mom_kin_nurbs_output_type              BSPLINE

  MOM_reload_kinematics

proc MOM_nurbs_move {} {
#_______________________________________________________________________________
# This procedure is executed for each nurbs move.
#_______________________________________________________________________________
  global mom_nurbs_knot_count
  global mom_nurbs_point_count
  global mom_nurbs_order

  global nurbs_knot_count
  global nurbs_precision
  global nurbs_move_flag
  global anchor_flag

  if {![info exists nurbs_move_flag]} {
    MOM_output_literal "G05 P10000"
    set nurbs_move_flag 1
  }

  FEEDRATE_SET
  if {![info exists anchor_flag]} {
    MOM_do_template anchor_point
    set anchor_flag 0
  }

  set nurbs_knot_count 0
  MOM_force once G_motion order X Y Z

  while {$nurbs_knot_count < $mom_nurbs_point_count} {
    MOM_do_template nurbs
    set nurbs_knot_count [expr $nurbs_knot_count + 1]
  }

  while {$nurbs_knot_count < $mom_nurbs_knot_count} {
    MOM_do_template knots
    set nurbs_knot_count [expr $nurbs_knot_count + 1]
  }
}




}
}


#=============================================================
proc PB_CMD_obnulenie_B_C { } {
#=============================================================
global mom_out_angle_pos mom_pos mom_prev_out_angle_pos
set mom_out_angle_pos(0) 0
set mom_out_angle_pos(1) 0

set mom_pos(3) 0
set mom_pos(4) 0

MOM_force once fourth_axis fifth_axis
}


#=============================================================
proc PB_CMD_pause { } {
#=============================================================
  set cam_aux_dir  [MOM_ask_env_var UGII_CAM_AUXILIARY_DIR]

  if { [file exists ${cam_aux_dir}ugwish.exe] && [file exists ${cam_aux_dir}mom_pause.tcl] } {
    exec ${cam_aux_dir}ugwish.exe ${cam_aux_dir}mom_pause.tcl
  }
}


#=============================================================
proc PB_CMD_prefun_in_end { } {
#=============================================================
global mom_prefun flag metka1 metka2 flag2 mom_prefun_text


if {$mom_prefun ==1} {
	if {$flag == 1} {
	set metka1 $metka2
	#set flag2 0
	}

set metka1 [format "%.0f" $metka1]
MOM_output_literal "#703=$mom_prefun_text (CHISLO OBRABATIVAEMIH MEST)"
MOM_output_literal "G65 P0111"
MOM_output_literal "IF \[#702\ LT \#703]\ GOTO$metka1"

set flag 1
#MOM_output_literal "mom_prefun=$mom_prefun"
MOM_output_literal "G52 C0"
MOM_output_literal "\#701\=0"
MOM_output_literal "\#702\=0"
set flag2 0
}

set mom_prefun 0
set mom_prefun_text ""
}


#=============================================================
proc PB_CMD_previous_coords { } {
#=============================================================
global mom_prev_pos mom_pos X_prev Z_prev



#MOM_output_literal "TEST3333 Z_prev=$Z_prev  mom_pos(2)=$mom_pos(2)"

set X_prev $mom_pos(0) 
set Z_prev $mom_pos(2)
}


#=============================================================
proc PB_CMD_reload_iks_parameters { } {
#=============================================================
# This command overloads new IKS params from a machine model.(NX4)
# It will be executed automatically at the start of each path
# or when CSYS has changed.
#

return
   global mom_csys_matrix
   global mom_kin_iks_usage

  #----------------------------------------------------------
  # Set a classification to fetch kinematic parameters from
  # a particular set of K-components of a machine.
  # - Default is NONE.
  #----------------------------------------------------------
   set custom_classification NONE

   if { [info exists mom_kin_iks_usage] && $mom_kin_iks_usage == 1 } {
      if [info exists mom_csys_matrix] {
         if [llength [info commands MOM_validate_machine_model] ] {
            if { [MOM_validate_machine_model] == "TRUE" } {
               MOM_reload_iks_parameters "$custom_classification"
               MOM_reload_kinematics
            }
         }
      }
   }
}


#=============================================================
proc PB_CMD_reposition_move { } {
#=============================================================
#
#  This procedure is used by rotary axis retract to reposition the
#  rotary axes after the tool has been fully retracted.
#
#  You can modify the this procedure to customize the reposition move.
#  If you need a custom command to be output with this block, 
#  you must place a call a the custom command either before or after 
#  the MOM_do_template command.
#  
   MOM_suppress once X Y Z
   MOM_do_template rapid_traverse
}


#=============================================================
proc PB_CMD_restore_work_plane_change { } {
#=============================================================
#<02-18-08 gsl> Restore work plane change flag, if being disabled due to a simulated cycle.

   global mom_user_work_plane_change mom_sys_work_plane_change
   global mom_user_spindle_first spindle_first

   if { [info exists mom_user_work_plane_change] } {
      set mom_sys_work_plane_change $mom_user_work_plane_change
      set spindle_first $mom_user_spindle_first
      unset mom_user_work_plane_change
      unset mom_user_spindle_first
   }
}


#=============================================================
proc PB_CMD_retract_move { } {
#=============================================================
#
#  This procedure is used by rotary axis retract to move away from
#  the part.  This move is a three axis move along the tool axis at
#  a retract feedrate.
#
#  You can modify the this procedure to customize the retract move.
#  If you need a custom command to be output with this block, 
#  you must place a call to the custom command either before or after 
#  the MOM_do_template command.
# 
#  If you need to modify the x,y or z locations you will need to do the
#  following.  (without the #)
#
#  global mom_pos
#  set mom_pos(0) 1.0
#  set mom_pos(1) 2.0
#  set mom_pos(2) 3.0
  
   MOM_do_template linear_move
}


#=============================================================
proc PB_CMD_reverse_rotation_vector { } {
#=============================================================
# This command fixes the vectors of rotary axes.
# It will be executed automatically when present.
# Do not attach it with any Event markers.
#

  global mom_kin_iks_usage
  global mom_csys_matrix

   set reverse_vector 0

   if { [info exists mom_kin_iks_usage] && $mom_kin_iks_usage == 1 } {
      if [info exists mom_csys_matrix] {
         if [llength [info commands MOM_validate_machine_model] ] {
            if { [MOM_validate_machine_model] == "TRUE" } {
               set reverse_vector 1
            }
         }
      }
   }

   if $reverse_vector {

     global mom_kin_4th_axis_vector mom_kin_5th_axis_vector
     global mom_kin_4th_axis_rotation mom_kin_5th_axis_rotation

      foreach axis { 4th_axis 5th_axis } {

         if { [info exists mom_kin_${axis}_rotation] && [string match "reverse" [set mom_kin_${axis}_rotation]] } {

            if [info exists mom_kin_${axis}_vector] {
               foreach i { 0 1 2 } {
                  set mom_kin_${axis}_vector($i) [expr -1 * [set mom_kin_${axis}_vector($i)]]
               }
            }
         }
      }

      MOM_reload_kinematics
   }
}


#=============================================================
proc PB_CMD_revert_dual_head_kin_vars { } {
#=============================================================
# Only dual-head 5-axis mill posts will be affected by this
# command.
#
# This command reverts kinematic parameters for dual-head 5-axis
# mill posts to maintain compatibility and to allow the posts
# to run in UG/Post prior to NX3.
#
# Attributes of the 4th & 5th Addresses, their locations in
# the Master Word Sequence and all the Blocks that use these
# Addresses will be reconditioned with call to
#
#     PB_swap_dual_head_elements
#
#-------------------------------------------------------------
# 04-15-05 gsl - Added for PB v3.4
#-------------------------------------------------------------

  global mom_kin_machine_type


  if ![string match  "5_axis_dual_head"  $mom_kin_machine_type] {
return
  }


  set var_list { ang_offset center_offset(0) center_offset(1) center_offset(2) direction incr_switch leader limit_action max_limit min_incr min_limit plane rotation zero }

  set center_offset_set 0

  foreach var $var_list {
    # Global declaration
    if [string match "center_offset*" $var] {
      if { !$center_offset_set } {
         global mom_kin_4th_axis_center_offset mom_kin_5th_axis_center_offset 
         set center_offset_set 1
      }
    } else {
      global mom_kin_4th_axis_[set var] mom_kin_5th_axis_[set var] 
    }

    # Swap values
    set val [set mom_kin_4th_axis_[set var]]
    set mom_kin_4th_axis_[set var] [set mom_kin_5th_axis_[set var]]
    set mom_kin_5th_axis_[set var] $val
  }

  # Update kinematic parameters
  MOM_reload_kinematics


  # Swap address leaders
  global mom_sys_leader

  set val $mom_sys_leader(fourth_axis)
  set mom_sys_leader(fourth_axis) $mom_sys_leader(fifth_axis)
  set mom_sys_leader(fifth_axis)  $val

  # Swap elements in definition file
  if [llength [info commands PB_swap_dual_head_elements] ] {
     PB_swap_dual_head_elements
  }
}


#=============================================================
proc PB_CMD_revise_new_iks { } {
#=============================================================
# This command is executed automatically, which allows you
# to change the default IKS parameters or disable the IKS
# service completely.
#
# *** Do not attach this command to any event marker! ***
#
   global mom_kin_iks_usage
   global mom_kin_rotary_axis_method
   global mom_kin_spindle_axis
   global mom_kin_4th_axis_vector
   global mom_kin_5th_axis_vector


  # Uncomment next statement to disable new IKS service
  # set mom_kin_iks_usage           0


  # Uncomment next statement to change rotary solution method
  # set mom_kin_rotary_axis_method  "ZERO"


  # Uncomment next statement, if any parameter above has changed.
  # MOM_reload_kinematics
}


#=============================================================
proc PB_CMD_set_csys { } {
#=============================================================
# This custom command is provided as the default to nullify
# the same command in a linked post that may have been
# imported from pb_cmd_coordinate_system_rotation.tcl.
#


global mom_input_zero_int path mom_P_num
}


#=============================================================
proc PB_CMD_set_cycle_plane { } {
#=============================================================
#
# Use this command to determine and output proper plane code
# when G17/18/19 is used in the cycle definition.
#


 #+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 # Next option can be set to 1, if the address of cycle's
 # principal axis needs to be suppressed. (Ex. siemens controller)
 #+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  set suppress_principal_axis 0


 #++++++++++++++++++++++++++++++++++++++++++++++++++++++
 # Next option can be set to 1, if the plane code needs
 # to be forced out @ the start of every set of cycles.
 #++++++++++++++++++++++++++++++++++++++++++++++++++++++
  set force_plane_code 0


  global mom_kin_machine_type
  global mom_kin_4th_axis_type mom_kin_4th_axis_plane
  global mom_kin_5th_axis_type
  global mom_tool_axis mom_sys_spindle_axis mom_kin_spindle_axis
  global mom_pos
  global mom_cycle_spindle_axis mom_cutcom_plane mom_pos_arc_plane


 # Default cycle spindle axis to Z
  set mom_cycle_spindle_axis 2


  if { ![string match "*3_axis_mill*" $mom_kin_machine_type] } {

    if { $mom_kin_4th_axis_type == "Head" } {

      if [EQ_is_equal [expr abs($mom_tool_axis(0))] 1.0] {
        set mom_cycle_spindle_axis 0
      }

      if [EQ_is_equal [expr abs($mom_tool_axis(1))] 1.0] {
        set mom_cycle_spindle_axis 1
      }

      if { $mom_kin_5th_axis_type == "Table" } {

        if [EQ_is_equal [expr abs($mom_pos(3))] 90.0] {

          switch $mom_kin_4th_axis_plane {
            "YZ" {
              set mom_cycle_spindle_axis 1
            }
            "ZX" {
              set mom_cycle_spindle_axis 0
            }
          }
        }
      }
    }
  }


  switch $mom_cycle_spindle_axis {
    0 {
      set mom_cutcom_plane  YZ
      set mom_pos_arc_plane YZ
      set principal_axis X
    }
    1 {
      set mom_cutcom_plane  ZX
      set mom_pos_arc_plane ZX
      set principal_axis Y
    }
    2 {
      set mom_cutcom_plane  XY
      set mom_pos_arc_plane XY
      set principal_axis Z
    }
    default {
      set mom_cutcom_plane  UNDEFINED
      set mom_pos_arc_plane UNDEFINED
      set principal_axis ""
    }
  }


  if { $suppress_principal_axis && [string length $principal_axis] > 0 } {
    MOM_suppress once $principal_axis
  }


  if { $force_plane_code } {
    global cycle_init_flag

    if { [info exists cycle_init_flag] && [string match "TRUE" $cycle_init_flag] } {
      MOM_force once G_plane
    }
  }
}


#=============================================================
proc PB_CMD_set_mode_end { } {
#=============================================================
global mom_which_turret mom_right_spindle


if {$mom_which_turret == "ВЕРХНИЙ"} {

MOM_output_literal "M30"


}
}


#=============================================================
proc PB_CMD_set_modes { } {
#=============================================================
global mom_which_turret mom_right_spindle mom_which_spindle
global mom_sys_spindle_direction_code(CCLW) mom_sys_spindle_direction_code(CLW)
global mom_P mom_synch_spindle



global mom_which_turret mom_right_spindle mom_which_spindle
global mom_sys_spindle_direction_code(CCLW) mom_sys_spindle_direction_code(CLW)
global mom_P mom_sys_leader First_oper synch_mode P_mode M212_mode M210_mode

   if {[info exist mom_which_spindle]} {
	if {$mom_which_spindle == "ЛЕВЫЙ" } {

set P_mode 11
MOM_output_literal "M901"
MOM_output_literal "M200"
if [info exist mom_synch_spindle] {
MOM_output_literal "M212"
MOM_output_literal "M111"
MOM_output_literal "M300"
MOM_output_literal "M511"
}
MOM_output_literal "G54"
set M212_mode 212
set M210_mode 210
} elseif {$mom_which_spindle == "ПРАВЫЙ" } {
set P_mode 2
MOM_output_literal "M902"
MOM_output_literal "M300"
MOM_output_literal "G55"
set M212_mode 312
set M210_mode 310
	}
   } else {


set P_mode 1
MOM_output_literal "M901"
MOM_output_literal "M200"

if [info exist mom_synch_spindle] {
MOM_output_literal "M212"
MOM_output_literal "M111"
MOM_output_literal "M300"
MOM_output_literal "M511"
}

MOM_output_literal "G54"
set M212_mode 212
set M210_mode 210
   }
}


#=============================================================
proc PB_CMD_start_of_alignment_character { } {
#=============================================================
 # This command can be used to output a special sequence number character.  
 # Replace the ":" with any character that you require.
 # You must use the command "PB_CMD_end_of_alignment_character" to reset
 # the sequence number back to the original setting.

  global mom_sys_leader saved_seq_num

  set saved_seq_num $mom_sys_leader(N)
  set mom_sys_leader(N) ":"
}


#=============================================================
proc PB_CMD_start_of_operation_force_addresses { } {
#=============================================================
  MOM_force once X Y Z F R fourth_axis fifth_axis
}


#=============================================================
proc PB_CMD_temp { } {
#=============================================================
global I_temp J_temp mom_pos_arc_center mom_prev_pos event_before mom_motion_event
if [info exist mom_pos_arc_center] {
set I_temp [expr $mom_pos_arc_center(0) - $mom_prev_pos(0)]
set J_temp [expr $mom_pos_arc_center(1) - $mom_prev_pos(1)]

set I_temp [format "%.3f" $I_temp]
set J_temp [format "%.3f" $J_temp]
}

set event_before $mom_motion_event
}


#=============================================================
proc PB_CMD_test_5axis { } {
#=============================================================
global mom_rotary_delta_4th mom_rotary_delta_5th G43_4_flag mom_sys_lock_status 
global oper eng_flag G68_turn path mom_warning_info1 mom_cutcom_status cutting_was
global m92_turn
global rotate_was


if {$mom_rotary_delta_4th != 0 || $mom_rotary_delta_5th != 0} {
    if {$eng_flag == 0} {  
	if {$G43_4_flag == 0} {
	if {$mom_sys_lock_status != "ON"} {
	if {$rotate_was == 0} {
	set mom_warning_info1 "Операция ''$oper'' является 5-ти(4-х) осевой. Для такого вида обработки" 
	append mom_warning_info1 "\n "
	append mom_warning_info1 "\n необходимо включить поспроцессорную команду Prefun со значением 5 " 
	append mom_warning_info1 "\n "
	append mom_warning_info1 "\n\t\t в разделе Machine -> StartUp Commands. "
	MOM_output_to_listing_device $mom_warning_info1 
	set user_exe_file "${path}/mesbox.exe"
	if { [file exists $user_exe_file] } {
	set var [exec $user_exe_file $mom_warning_info1]
	}
	MOM_catch_warning
	MOM_abort "Требуется задание постпроцессорной команды!!!!!!"
 	}
	}
	if {($mom_cutcom_status == "RIGHT") || ($mom_cutcom_status == "LEFT") || ($mom_cutcom_status == "ON")} {
	if {$mom_sys_lock_status != "ON"} {
	set mom_warning_info1 "В операции ''$oper'' используется коррекция на радиус инструмента (Cutter Compensation)" 
	append mom_warning_info1 "\n "
	append mom_warning_info1 "\n Данная операция является 5-ти(4-х) осевой и использование коррекции на радиус "
	append mom_warning_info1 "\n "
	append mom_warning_info1 "\n  инструмента невозможно - поэтому следует удалить команду ее включающую!"
	MOM_output_to_listing_device $mom_warning_info1 
	set user_exe_file "${path}/mesbox.exe"
	if { [file exists $user_exe_file] } {
	set var [exec $user_exe_file $mom_warning_info1]
	}
	MOM_catch_warning
	MOM_abort "Неверное использование коррекции на радиус инструмента!!!!!!" 
    	}
	}
}

	set eng_flag 0

}
}
set eng_flag 0

set m92_turn 0

set cutting_was 1
}


#=============================================================
proc PB_CMD_test_5axis_alt { } {
#=============================================================
global mom_rotary_delta_4th mom_rotary_delta_5th G43_4_flag mom_sys_lock_status 
global oper eng_flag G68_turn path mom_warning_info1 mom_cutcom_status cutting_was
global rotate_was


if {$cutting_was == 1} { 
if {$mom_rotary_delta_4th != 0 || $mom_rotary_delta_5th != 0} {
	if {$G43_4_flag == 0} {
	if {$rotate_was == 0} { 
	if {$mom_sys_lock_status != "ON"} {
	set mom_warning_info1 "Операция ''$oper'' является 5-ти(4-х) осевой. Для такого вида обработки" 
	append mom_warning_info1 "\n "
	append mom_warning_info1 "\n необходимо включить поспроцессорную команду Prefun со значением 5 " 
	append mom_warning_info1 "\n "
	append mom_warning_info1 "\n\t\t в разделе Machine -> StartUp Commands. "
	MOM_output_to_listing_device $mom_warning_info1 
	set user_exe_file "${path}/mesbox.exe"
	if { [file exists $user_exe_file] } {
	set var [exec $user_exe_file $mom_warning_info1]
	}
	MOM_catch_warning
	MOM_abort "Требуется задание постпроцессорной команды!!!!!!"
 	}
	}
	}
	set eng_flag 0

}
}
set eng_flag 0
}


#=============================================================
proc PB_CMD_test_5axis_for_cycles { } {
#=============================================================
global mom_rotary_delta_4th mom_rotary_delta_5th G43_4_flag mom_sys_lock_status 
global oper eng_flag G68_turn path mom_warning_info1 mom_cutcom_status cutting_was
global m92_turn
global rotate_was


if {$mom_rotary_delta_4th != 0} {
    if {$eng_flag == 0} {  
	if {$G43_4_flag == 0} {
	if {$mom_sys_lock_status != "ON"} {
	if {$rotate_was == 0} {
	set mom_warning_info1 "В операции ''$oper'' используются циклы на криволинейной поверхности. Для такого вида обработки" 
	append mom_warning_info1 "\n "
	append mom_warning_info1 "\n необходимо использовать нецикловые обработки и включить поспроцессорную команду Prefun со значением 5 " 
	append mom_warning_info1 "\n "
	append mom_warning_info1 "\n в разделе Machine -> StartUp Commands, либо выполнять обработку отверстий отдельно в каждой операции." 
	MOM_output_to_listing_device $mom_warning_info1 
	set user_exe_file "${path}/mesbox.exe"
	if { [file exists $user_exe_file] } {
	set var [exec $user_exe_file $mom_warning_info1]
	}
	MOM_catch_warning
	MOM_abort "Требуется задание постпроцессорной команды!!!!!!"
 	}
	}
	if {($mom_cutcom_status == "RIGHT") || ($mom_cutcom_status == "LEFT") || ($mom_cutcom_status == "ON")} {
	if {$mom_sys_lock_status != "ON"} {
	set mom_warning_info1 "В операции ''$oper'' используется коррекция на радиус инструмента (Cutter Compensation)" 
	append mom_warning_info1 "\n "
	append mom_warning_info1 "\n Данная операция является 5-ти(4-х) осевой и использование коррекции на радиус "
	append mom_warning_info1 "\n "
	append mom_warning_info1 "\n  инструмента невозможно - поэтому следует удалить команду ее включающую!"
	MOM_output_to_listing_device $mom_warning_info1 
	set user_exe_file "${path}/mesbox.exe"
	if { [file exists $user_exe_file] } {
	set var [exec $user_exe_file $mom_warning_info1]
	}
	MOM_catch_warning
	MOM_abort "Неверное использование коррекции на радиус инструмента!!!!!!" 
    	}
	}
}

	set eng_flag 0

}
}
set eng_flag 0

set m92_turn 0

set cutting_was 1
}


#=============================================================
proc PB_CMD_test_empty_G1 { } {
#=============================================================
global mom_prev_pos mom_pos mom_warning_info oper

global delta1 delta2 delta3 motion_type


set m1 [format "%.3f" $mom_pos(0)]
set m2 [format "%.3f" $mom_pos(1)]
set m3 [format "%.3f" $mom_pos(2)]

set m1_pr [format "%.3f" $mom_prev_pos(0)]
set m2_pr [format "%.3f" $mom_prev_pos(1)]
set m3_pr [format "%.3f" $mom_prev_pos(2)]

set delta1 [format "%.3f" [expr $m1_pr - $m1]]
set delta2 [format "%.3f" [expr $m2_pr - $m2]]
set delta3 [format "%.3f" [expr $m3_pr - $m3]]


#MOM_output_literal "delta1=$delta1 delta2=$delta2 delta3=$delta3"

if {($delta1 == 0) && ($delta2 == 0) && ($delta3 < 0.0015) && ($delta3 > -0.0015) && ($motion_type == "Circle")} {

#MOM_suppress ONCE G_motion

}
}


#=============================================================
proc PB_CMD_test_empty_G2 { } {
#=============================================================
global mom_prev_pos mom_pos mom_warning_info oper
global delta1 delta2 delta3 motion_type mom_calc_pos


set m1 [format "%.3f" $mom_pos(0)]
set m2 [format "%.3f" $mom_pos(1)]
set m3 [format "%.3f" $mom_pos(2)]

set m1_pr [format "%.3f" $mom_prev_pos(0)]
set m2_pr [format "%.3f" $mom_prev_pos(1)]
set m3_pr [format "%.3f" $mom_prev_pos(2)]

set delta1 [format "%.3f" [expr $m1_pr - $m1]]
set delta2 [format "%.3f" [expr $m2_pr - $m2]]
set delta3 [format "%.3f" [expr $m3_pr - $m3]]


#MOM_output_literal "delta1=$delta1 delta2=$delta2 delta3=$delta3"

if {(abs($delta1) < 0.0011)} {
set mom_pos(0) $mom_prev_pos(0)
}
if {(abs($delta2) < 0.0011)} {
set mom_pos(1) $mom_prev_pos(1)
}
MOM_force once G_plane
}


#=============================================================
proc PB_CMD_test_feed { } {
#=============================================================
global mom_cycle_feed_rate_mode oper path mom_motion_event

#if {$mom_motion_event == "tap_move"} {
if {$mom_cycle_feed_rate_mode != "MMPR"} {
	set mom_warning_info1 "Подача в цикле нарезания резьбы задана не в миллиметрах в на оборот в операции ''$oper''!!!" 
	#append mom_warning_info1 "\n "
	#MOM_output_to_listing_device $mom_warning_info1 
	set user_exe_file "${path}/mesbox.exe"
	if { [file exists $user_exe_file] } {
	set var [exec $user_exe_file $mom_warning_info1]
	MOM_abort "Измените тип подачи!!!!!!" 
	}
}
#}
#MOM_output_literal "mom_cycle_feed_rate_mode = $mom_cycle_feed_rate_mode"
}


#=============================================================
proc PB_CMD_tool_change_another_tool { } {
#=============================================================
global mom_sys_lock_status tool_with_on prev_tool_number 
global mom_tool_number G43_4_flag from_flag

MOM_do_template coolant_off

	if {$G43_4_flag == 0} { 
	MOM_force ONCE T for_tool_type M
	MOM_force ONCE G_motion fourth_axis fifth_axis
	PB_CMD_check_ref_motion
global mom_which_turret mom_right_spindle


MOM_force ONCE T for_tool_type M
MOM_do_template tool_change_2
PB_CMD_OTSKOK
MOM_output_literal "G10.9X0"

	MOM_suppress Always G_adjust_43_4 H
	MOM_force Once S M_spindle

	#PB_CMD_unsets

	set tool_with_on 1
	set from_flag 0 
	}
}


#=============================================================
proc PB_CMD_tool_change_force_addresses { } {
#=============================================================
  MOM_force once G_adjust H S
}


#=============================================================
proc PB_CMD_tool_datas { } {
#=============================================================
global mom_tool_name mom_tool_diameter mom_tool_corner1_radius mom_ug_version
global tool_data_name tool_data_diameter tool_data_corner1_radius tool_i line
global mom_tool_number tool_numbers


set not_use 0
	
for { set nn 0 } { $nn < 99} { set nn [expr $nn+1]} {
if {$mom_tool_number == [lindex $tool_numbers $nn]} {
set not_use 1
break
}
}

	     
if ![info exist mom_tool_corner1_radius] {
set mom_tool_corner1_radius 0
}

set line [format "TOOL: %s D=%.3f R=%.3f" $mom_tool_name $mom_tool_diameter $mom_tool_corner1_radius]
#MOM_output_literal ";($line)"
set tool_data_name($tool_i)  $mom_tool_name
set tool_data_diameter($tool_i) $mom_tool_diameter
set tool_data_corner1_radius($tool_i) $mom_tool_corner1_radius
unset mom_tool_corner1_radius
MOM_output_literal "($line)"

if {$not_use == 0} {
set tool_i [expr $tool_i+1]
set tool_numbers [append tool_numbers " " $mom_tool_number]
#MOM_output_literal "($tool_numbers)"
}
#MOM_output_literal "($tool_numbers)"
}


#=============================================================
proc PB_CMD_tool_type_marker { } {
#=============================================================
global tool_type_marker mom_tool_cutcom_register mom_tool_number mom_tool_adjust_register
global oper mom_warning_info

if {$mom_tool_cutcom_register == 0} {
set mom_tool_cutcom_register $mom_tool_number
}

if {$mom_tool_adjust_register == 0} {
set mom_tool_adjust_register $mom_tool_number
}

set tool_type_marker $mom_tool_cutcom_register
}


#=============================================================
proc PB_CMD_unclamp_fifth_axis { } {
#=============================================================
#
#  This procedure is used by auto clamping to output the code
#  needed to unclamp the fifth axis.  
#
#  Do NOT add this block to events or markers.  It is a static 
#  block and it is not intended to be added to events.  Do NOT 
#  change the name of this custom command.
#
  MOM_output_literal "M13"
}


#=============================================================
proc PB_CMD_unclamp_fourth_axis { } {
#=============================================================
#
#  This procedure is used by auto clamping to output the code
#  needed to unclamp the fourth axis.  
#
#  Do NOT add this block to events or markers.  It is a static 
#  block and it is not intended to be added to events.  Do NOT 
#  change the name of this custom command.
#
  MOM_output_literal "M11"
}


#=============================================================
proc PB_CMD_unsets { } {
#=============================================================
global mom_from_pos mom_gohome_pos mom_pos mom_last_pos



set mom_from_pos(0) 999
set mom_from_pos(1) 999
set mom_from_pos(2) 999

unset mom_from_pos

#MOM_output_literal "TEST2"

set mom_gohome_pos(0) 999
set mom_gohome_pos(1) 999
set mom_gohome_pos(2) 999
unset mom_gohome_pos

set mom_pos(0) 999
set mom_pos(1) 999
set mom_pos(2) 999
unset mom_pos

global B_cur C_cur
if [info exist B_cur] {
unset B_cur
unset C_cur
}

global mom_Q_val
if [info exist mom_Q_val] {
unset mom_Q_val
}
}


#=============================================================
proc PB_CMD_various_prefun_numbers { } {
#=============================================================
global mom_prefun G68_turn G43_4_flag oper mom_warning_info mom_prefun_text mom_sys_leader mom_sys_trailer
global polar_flag mom_kin_arc_output_mode mom_kin_helical_arc_output_mode


if {$mom_prefun == 5} {
set G43_4_flag 1

set mom_sys_leader(fifth_axis) "C"
set mom_sys_trailer(fifth_axis) ""
	MOM_reload_variable -a mom_sys_leader 
	MOM_reload_variable -a mom_sys_trailer

set mom_kin_arc_output_mode "LINEAR"
set mom_kin_helical_arc_output_mode "LINEAR"
MOM_reload_kinematics

#MOM_output_literal "dddddddddddddddddddddddddddddd"
}

if {$mom_prefun == 6} {
set polar_flag 1
#MOM_output_literal "dddddddddddddddddddddddddddddd"
}


if {$mom_prefun == 1} {

if {![info exists mom_prefun_text] || $mom_prefun_text == ""} {
	set mom_warning_info "В операции ''$oper'' включена функция кругового массивирования операций" 
	append mom_warning_info "\n "
	append mom_warning_info "\n Включение данной функции требует задания числа повторов в поле ''text''" 
	#MOM_output_to_listing_device $mom_warning_info 
	PB_CMD_Messages
	MOM_abort "Задайте число повторов!!!!!!" 

}

}
}


#=============================================================
proc ANGLE_CHECK { a axis } {
#=============================================================
# called by ROTARY_AXIS_RETRACT

   upvar $a ang

   global mom_kin_4th_axis_max_limit
   global mom_kin_5th_axis_max_limit
   global mom_kin_4th_axis_min_limit
   global mom_kin_5th_axis_min_limit
   global mom_kin_4th_axis_direction
   global mom_kin_5th_axis_direction

   if { $axis == 4 } {
      set min $mom_kin_4th_axis_min_limit
      set max $mom_kin_4th_axis_max_limit
      set dir $mom_kin_4th_axis_direction
   } else {
      set min $mom_kin_5th_axis_min_limit
      set max $mom_kin_5th_axis_max_limit
      set dir $mom_kin_5th_axis_direction
   }

   if { [EQ_is_equal $min 0.0] && [EQ_is_equal $max 360.0] && ![string compare "MAGNITUDE_DETERMINES_DIRECTION" $dir] } {
      return 0
   } else {
      while { $ang > $max && $ang > [expr $min + 360.0] } { set ang [expr $ang - 360.0] }
      while { $ang < $min && $ang < [expr $max - 360.0] } { set ang [expr $ang + 360.0] }
      if { $ang > $max || $ang < $min } {
         return -1
      } else {
         return 1
      }
   }
}


#=============================================================
proc ARCTAN { y x } {
#=============================================================
   global PI

   if { [EQ_is_zero $y] } { set y 0 }
   if { [EQ_is_zero $x] } { set x 0 }

   if { [expr $y == 0] && [expr $x == 0] } {
      return 0
   }

   set ang [expr atan2($y,$x)]

   if { $ang < 0 } {
      return [expr $ang + $PI*2]
   } else {
      return $ang
   }
}


#=============================================================
proc AXIS_SET { axis } {
#=============================================================
# called by MOM_rotate & SET_LOCK

  global mom_sys_leader

   if { ![string compare "[string index $mom_sys_leader(fourth_axis) 0]AXIS" $axis] } {
      return 3
   } elseif { ![string compare "[string index $mom_sys_leader(fifth_axis) 0]AXIS" $axis] } {
      return 4
   } else {
      return 0
   }
}


#=============================================================
proc CALC_CYLINDRICAL_RETRACT_POINT { refpt axis dist ret_pt } {
#=============================================================
# called by ROTARY_AXIS_RETRACT

  upvar $refpt rfp ; upvar $axis ax ; upvar $ret_pt rtp

#
# return 0 parallel or lies on plane
#        1 unique intersection
#


#
# create plane canonical form
#
   VMOV 3 ax plane
   set plane(3) $dist

   set num [expr $plane(3)-[VEC3_dot rfp plane]]
   set dir [VEC3_dot ax plane]

   if { [EQ_is_zero $dir] } {
return 0
   }

   for { set i 0 } { $i < 3 } { incr i } {
      set rtp($i) [expr $rfp($i) + $ax($i)*$num/$dir]
   }

return [RETRACT_POINT_CHECK rfp ax rtp]
}


#=============================================================
proc CALC_SPHERICAL_RETRACT_POINT { refpt axis cen_sphere rad_sphere int_pts } {
#=============================================================
# called by ROTARY_AXIS_RETRACT

  upvar $refpt rp ; upvar $axis ta ; upvar $cen_sphere cs
  upvar $int_pts ip

   set rad [expr $rad_sphere*$rad_sphere]
   VEC3_sub rp cs v1

   set coeff(2) 1.0
   set coeff(1) [expr ($v1(0)*$ta(0) + $v1(1)*$ta(1) + $v1(2)*$ta(2))*2.0]
   set coeff(0) [expr $v1(0)*$v1(0) + $v1(1)*$v1(1) + $v1(2)*$v1(2) - $rad]

   set num_sol [SOLVE_QUADRATIC coeff roots iroots status degree]
   if {$num_sol == 0} { return 0 }

   if { [expr $roots(0)] > [expr $roots(1)] || $num_sol == 1 } {
      set d $roots(0)
   } else {
      set d $roots(1)
   }

   set ip(0) [expr $rp(0) + $d*$ta(0)]
   set ip(1) [expr $rp(1) + $d*$ta(1)]
   set ip(2) [expr $rp(2) + $d*$ta(2)]

return [RETRACT_POINT_CHECK rp ta ip]
}


#=============================================================
proc CATCH_WARNING { msg {output 1} } {
#=============================================================
   global mom_warning_info
   global mom_motion_event
   global mom_event_number
   global mom_motion_type


   set level [info level]
   set call_stack ""
   for { set i 1 } { $i < $level } { incr i } {
      set call_stack "$call_stack\[ [lindex [info level $i] 0] \]"
   }

   global mom_o_buffer
   if { ![info exists mom_o_buffer] } {
      set mom_o_buffer ""
   }

   set mom_warning_info "$msg\n\  Event $mom_event_number [MOM_ask_event_type] : $mom_motion_event ($mom_motion_type)\n\    $mom_o_buffer\n\      $call_stack"

   if { $output == 1 } {
      MOM_catch_warning
   }

   set mom_warning_info $msg
}


#=============================================================
proc DELAY_TIME_SET {  } {
#=============================================================
  global mom_sys_delay_param mom_delay_value
  global mom_delay_revs mom_delay_mode delay_time
 
   # post builder provided format for the current mode:
    if {[info exists mom_sys_delay_param(${mom_delay_mode},format)] != 0} {
      MOM_set_address_format dwell $mom_sys_delay_param(${mom_delay_mode},format)
    }
 
    switch $mom_delay_mode {
      SECONDS {set delay_time $mom_delay_value}
      default {set delay_time $mom_delay_revs}
    }
}


#=============================================================
proc EQ_is_equal { s t } {
#=============================================================
   global mom_system_tolerance

   if { [info exists mom_system_tolerance] } {
      set tol $mom_system_tolerance
   } else {
      set tol 0.0000001
   }

   if { [expr abs($s - $t) <= $tol] } { return 1 } else { return 0 }
}


#=============================================================
proc EQ_is_zero { s } {
#=============================================================
   global mom_system_tolerance

   if { [info exists mom_system_tolerance] } {
      set tol $mom_system_tolerance
   } else {
      set tol 0.0000001
   }

   if { [expr abs($s) <= $tol] } { return 1 } else { return 0 }
}




#=============================================================
proc GET_SPINDLE_AXIS { input_tool_axis } {
#=============================================================
# called by ROTARY_AXIS_RETRACT

   upvar $input_tool_axis axis

   global mom_kin_4th_axis_type
   global mom_kin_4th_axis_plane
   global mom_kin_5th_axis_type
   global mom_kin_spindle_axis
   global mom_sys_spindle_axis

   if { ![string compare "Table" $mom_kin_4th_axis_type] } {
      VMOV 3 mom_kin_spindle_axis mom_sys_spindle_axis
   } elseif { ![string compare "Table" $mom_kin_5th_axis_type] } {
      VMOV 3 axis vec
      if { ![string compare "XY" $mom_kin_4th_axis_plane] } {
         set vec(2) 0.0
      } elseif { ![string compare "ZX" $mom_kin_4th_axis_plane] } {
         set vec(1) 0.0
      } elseif { ![string compare "YZ" $mom_kin_4th_axis_plane] } {
         set vec(0) 0.0
      }
      set len [VEC3_unitize vec mom_sys_spindle_axis]
      if { [EQ_is_zero $len] } { set mom_sys_spindle_axis(2) 1.0 }
   } else {
      VMOV 3 axis mom_sys_spindle_axis
   }
}


#=============================================================
proc LIMIT_ANGLE { a } {
#=============================================================

   while { $a < 0.0 }    { set a [expr $a + 360.0] }
   while { $a >= 360.0 } { set a [expr $a - 360.0] }

return $a
}


#=============================================================
proc LINEARIZE_LOCK_MOTION {  } {
#=============================================================
# called by LOCK_AXIS_MOTION
#
#  This command linearizes the move between two positions that
#  have both linear and rotary motion.  The rotary motion is
#  created by LOCK_AXIS from the coordinates in the locked plane.
#  The combined linear and rotary moves result in non-linear
#  motion.  This command will break the move into shorter moves
#  that do not violate the tolerance.
#
   global mom_pos
   global mom_prev_pos
   global unlocked_pos
   global unlocked_prev_pos
   global mom_kin_linearization_tol
   global mom_kin_machine_resolution
   global mom_out_angle_pos

   VMOV 5 mom_pos locked_pos
   VMOV 5 mom_prev_pos locked_prev_pos

   UNLOCK_AXIS locked_pos unlocked_pos
   UNLOCK_AXIS locked_prev_pos unlocked_prev_pos

   VMOV 5 unlocked_pos save_unlocked_pos
   VMOV 5 locked_pos save_locked_pos

   set loop 0
   set count 0

   set tol $mom_kin_linearization_tol

   while { $loop == 0 } {

      for { set i 3 } { $i < 5 } { incr i } {
         set del [expr $locked_pos($i) - $locked_prev_pos($i)]
         if { $del > 180.0 } {
            set locked_prev_pos($i) [expr $locked_prev_pos($i)+360.0]
         } elseif {$del < -180.0} {
            set locked_prev_pos($i) [expr $locked_prev_pos($i)-360.0]
         }
      }

      set loop 1

      for { set i 0 } { $i < 5 } { incr i } {
         set mid_unlocked_pos($i) [expr ($unlocked_pos($i)+$unlocked_prev_pos($i))/2.0]
         set mid_locked_pos($i) [expr ($locked_pos($i)+$locked_prev_pos($i))/2.0]
      }

      UNLOCK_AXIS mid_locked_pos temp

      VEC3_sub temp mid_unlocked_pos work

      set error [VEC3_mag work]

      if { $count > 20 } {

         VMOV 5 locked_pos mom_pos
         VMOV 5 unlocked_pos mom_prev_pos

         LINEARIZE_LOCK_OUTPUT $count

      } elseif { $error < $tol } {

         VMOV 5 locked_pos mom_pos
         VMOV 5 unlocked_pos mom_prev_pos

         LINEARIZE_LOCK_OUTPUT $count

         VMOV 5 unlocked_pos unlocked_prev_pos
         VMOV 5 locked_pos locked_prev_pos

         if { $count != 0 } {
            VMOV 5 save_unlocked_pos unlocked_pos
            VMOV 5 save_locked_pos locked_pos
            set loop 0
            set count 0
         }

      } else {

         if { $error < $mom_kin_machine_resolution } {
            set error $mom_kin_machine_resolution
         }

         set error [expr sqrt($mom_kin_linearization_tol*.98/$error)]

         if { $error < .5 } { set error .5 }

         for { set i 0 } { $i < 5 } { incr i } {
            set locked_pos($i) [expr $locked_prev_pos($i)+($locked_pos($i)-$locked_prev_pos($i))*$error]
            set unlocked_pos($i) [expr $unlocked_prev_pos($i)+($unlocked_pos($i)-$unlocked_prev_pos($i))*$error]
         }

         LOCK_AXIS unlocked_pos locked_pos mom_outangle_pos

         set loop 0
         incr count
      }
   }
}


#=============================================================
proc LINEARIZE_LOCK_OUTPUT { count } {
#=============================================================
# called by LOCK_AXIS_MOTION & LINEARIZE_LOCK_MOTION

   global mom_out_angle_pos
   global mom_pos
   global mom_prev_rot_ang_4th
   global mom_prev_rot_ang_5th
   global mom_kin_4th_axis_direction
   global mom_kin_5th_axis_direction
   global mom_kin_4th_axis_leader
   global mom_kin_5th_axis_leader
   global mom_sys_leader
   global mom_prev_pos
   global mom_mcs_goto
   global mom_prev_mcs_goto
   global mom_motion_distance
   global mom_feed_rate_number
   global mom_feed_rate
   global mom_kin_machine_resolution
   global mom_kin_max_frn
   global mom_kin_machine_type
   global mom_kin_4th_axis_min_limit mom_kin_4th_axis_max_limit
   global mom_kin_5th_axis_min_limit mom_kin_5th_axis_max_limit
   global mom_out_angle_pos
   global unlocked_pos unlocked_prev_pos


   set mom_out_angle_pos(0)  [ROTSET $mom_pos(3) $mom_prev_rot_ang_4th $mom_kin_4th_axis_direction $mom_kin_4th_axis_leader mom_sys_leader(fourth_axis) $mom_kin_4th_axis_min_limit $mom_kin_4th_axis_max_limit]
   if { [info exists mom_kin_5th_axis_direction] } {
      set mom_out_angle_pos(1)  [ROTSET $mom_pos(4) $mom_prev_rot_ang_5th $mom_kin_5th_axis_direction $mom_kin_5th_axis_leader mom_sys_leader(fifth_axis) $mom_kin_5th_axis_min_limit $mom_kin_5th_axis_max_limit]
   }

#
#  Re-calcualte the distance and feed rate number
#

   if { $count < 0 } {
      VEC3_sub mom_mcs_goto mom_prev_mcs_goto delta
   } else {
      VEC3_sub unlocked_pos unlocked_prev_pos delta
   }
   set mom_motion_distance [VEC3_mag delta]
   if { [EQ_is_lt $mom_motion_distance $mom_kin_machine_resolution] } {
      set mom_feed_rate_number $mom_kin_max_frn
   } else {
      set mom_feed_rate_number [expr $mom_feed_rate / $mom_motion_distance]
   }

   set mom_pos(3) $mom_out_angle_pos(0)

   FEEDRATE_SET

   if { $count > 0 } { PB_CMD_linear_move }

#   set mom_prev_pos(3) $mom_out_angle_pos(0)
}


#=============================================================
proc LOCK_AXIS { input_point output_point output_rotary } {
#=============================================================
# called by LOCK_AXIS_MOTION & LINEARIZE_LOCK_MOTION

   upvar $input_point ip ; upvar $output_point op ; upvar $output_rotary or

   global mom_kin_4th_axis_center_offset
   global mom_kin_5th_axis_center_offset
   global mom_sys_lock_value
   global mom_sys_lock_plane
   global mom_sys_lock_axis
   global mom_sys_unlocked_axis
   global mom_sys_4th_axis_index
   global mom_sys_5th_axis_index
   global mom_sys_linear_axis_index_1
   global mom_sys_linear_axis_index_2
   global mom_sys_rotary_axis_index
   global mom_kin_machine_resolution
   global mom_prev_lock_angle
   global mom_out_angle_pos
   global mom_prev_rot_ang_4th
   global mom_prev_rot_ang_5th
   global positive_radius
   global DEG2RAD
   global RAD2DEG

   if { ![info exists positive_radius] } { set positive_radius 0 }

   if { $mom_sys_rotary_axis_index == 3 } {
      if { ![info exists mom_prev_rot_ang_4th] } { set mom_prev_rot_ang_4th 0.0 }
      set mom_prev_lock_angle $mom_prev_rot_ang_4th
   } else {
      if { ![info exists mom_prev_rot_ang_5th] } { set mom_prev_rot_ang_5th 0.0 }
      set mom_prev_lock_angle $mom_prev_rot_ang_5th
   }

   if { ![info exists mom_kin_4th_axis_center_offset] } {
      set temp(0) $ip(0)
      set temp(1) $ip(1)
      set temp(2) $ip(2)
   } else {
      VEC3_sub ip mom_kin_4th_axis_center_offset temp
   }

   if { [info exists mom_kin_5th_axis_center_offset] } {
      VEC3_sub temp mom_kin_5th_axis_center_offset temp
   }

   set temp(3) $ip(3)
   set temp(4) $ip(4)

   if { $mom_sys_lock_axis > 2 } {
      set angle [expr ($mom_sys_lock_value-$temp($mom_sys_lock_axis))*$DEG2RAD]
      ROTATE_VECTOR $mom_sys_lock_plane $angle temp temp1
      VMOV 3 temp1 temp
      set temp($mom_sys_lock_axis) $mom_sys_lock_value
   } else {
      if { ![string compare $mom_sys_lock_plane $mom_sys_5th_axis_index] } {
         set angle [expr ($temp(4))*$DEG2RAD]
         ROTATE_VECTOR $mom_sys_5th_axis_index $angle temp temp1
         VMOV 3 temp1 temp
         set temp(4) 0.0
      }
      set rad [expr sqrt($temp($mom_sys_linear_axis_index_1)*$temp($mom_sys_linear_axis_index_1) + $temp($mom_sys_linear_axis_index_2)*$temp($mom_sys_linear_axis_index_2))]
      set angle [ARCTAN $temp($mom_sys_linear_axis_index_2) $temp($mom_sys_linear_axis_index_1)]

      if { $rad < [expr abs($mom_sys_lock_value) + $mom_kin_machine_resolution] } {
         if { $mom_sys_lock_value < 0.0 } {
            set temp($mom_sys_lock_axis) [expr -$rad]
         } else {
            set temp($mom_sys_lock_axis) $rad
         }
      } else {
         set temp($mom_sys_lock_axis) $mom_sys_lock_value
      }

      set temp($mom_sys_unlocked_axis)  [expr sqrt($rad*$rad - $temp($mom_sys_lock_axis)*$temp($mom_sys_lock_axis))]

      VMOV 5 temp temp1
      set temp1($mom_sys_unlocked_axis) [expr -$temp($mom_sys_unlocked_axis)]
      set ang1 [ARCTAN $temp($mom_sys_linear_axis_index_2) $temp($mom_sys_linear_axis_index_1)]
      set ang2 [ARCTAN $temp1($mom_sys_linear_axis_index_2) $temp1($mom_sys_linear_axis_index_1)]
      set temp($mom_sys_rotary_axis_index) [expr ($angle-$ang1)*$RAD2DEG]
      set temp1($mom_sys_rotary_axis_index) [expr ($angle-$ang2)*$RAD2DEG]
      set ang1 [LIMIT_ANGLE [expr $mom_prev_lock_angle-$temp($mom_sys_rotary_axis_index)]]
      set ang2 [LIMIT_ANGLE [expr $mom_prev_lock_angle-$temp1($mom_sys_rotary_axis_index)]]
      if { $ang1 > 180.0 } { set ang1 [LIMIT_ANGLE [expr -$ang1]] }
      if { $ang2 > 180.0 } { set ang2 [LIMIT_ANGLE [expr -$ang2]] }
      if { $positive_radius == 0 } {
         if { $ang1 > $ang2 } {
            VMOV 5 temp1 temp
            set positive_radius "-1"
         } else {
            set positive_radius "1"
         }
      } elseif { $positive_radius == -1 } {
         VMOV 5 temp1 temp
      }

   }

   if { [info exists mom_kin_4th_axis_center_offset] } {
      VEC3_add temp mom_kin_4th_axis_center_offset op
   } else {
      set op(0) $temp(0)
      set op(1) $temp(1)
      set op(2) $temp(2)
   }

   if { [info exists mom_kin_5th_axis_center_offset] } {
      VEC3_add op mom_kin_5th_axis_center_offset op
   }

   if { ![info exists or] } {
      set or(0) 0.0
      set or(1) 0.0
   }

   set mom_prev_lock_angle $temp($mom_sys_rotary_axis_index)
   set op(3) $temp(3)
   set op(4) $temp(4)
}


#=============================================================
proc LOCK_AXIS_INITIALIZE {  } {
#=============================================================
# called by MOM_lock_axis

   global mom_sys_lock_plane
   global mom_sys_lock_axis
   global mom_sys_unlocked_axis
   global mom_sys_unlock_plane
   global mom_sys_4th_axis_index
   global mom_sys_5th_axis_index
   global mom_sys_linear_axis_index_1
   global mom_sys_linear_axis_index_2
   global mom_sys_rotary_axis_index
   global mom_kin_4th_axis_plane
   global mom_kin_5th_axis_plane

   if { $mom_sys_lock_plane == -1 } {
      if { ![string compare "XY" $mom_kin_4th_axis_plane] } {
         set mom_sys_lock_plane 2
      } elseif { ![string compare "ZX" $mom_kin_4th_axis_plane] } {
         set mom_sys_lock_plane 1
      } elseif { ![string compare "YZ" $mom_kin_4th_axis_plane] } {
         set mom_sys_lock_plane 0
      }
   }

   if { ![string compare "XY" $mom_kin_4th_axis_plane] } {
      set mom_sys_4th_axis_index 2
   } elseif { ![string compare "ZX" $mom_kin_4th_axis_plane] } {
      set mom_sys_4th_axis_index 1
   } elseif { ![string compare "YZ" $mom_kin_4th_axis_plane] } {
      set mom_sys_4th_axis_index 0
   }

   if { [info exists mom_kin_5th_axis_plane] } {
      if { ![string compare "XY" $mom_kin_5th_axis_plane] } {
         set mom_sys_5th_axis_index 2
      } elseif { ![string compare "ZX" $mom_kin_5th_axis_plane] } {
         set mom_sys_5th_axis_index 1
      } elseif { ![string compare "YZ" $mom_kin_5th_axis_plane] } {
         set mom_sys_5th_axis_index 0
      }
   } else {
      set mom_sys_5th_axis_index -1
   }


   if { $mom_sys_lock_plane == 0 } {
      set mom_sys_linear_axis_index_1 1
      set mom_sys_linear_axis_index_2 2
   } elseif { $mom_sys_lock_plane == 1 } {
      set mom_sys_linear_axis_index_1 2
      set mom_sys_linear_axis_index_2 0
   } elseif { $mom_sys_lock_plane == 2 } {
      set mom_sys_linear_axis_index_1 0
      set mom_sys_linear_axis_index_2 1
   }

   if { $mom_sys_5th_axis_index == -1 } {
      set mom_sys_rotary_axis_index 3
   } else {
      set mom_sys_rotary_axis_index 4
   }

   set mom_sys_unlocked_axis [expr $mom_sys_linear_axis_index_1 + $mom_sys_linear_axis_index_2 - $mom_sys_lock_axis]
}


#=============================================================
proc LOCK_AXIS_MOTION {  } {
#=============================================================
# called by PB_CMD_kin_before_motion
#
#  The UDE lock_axis must be specified in the tool path
#  for the post to lock the requested axis.  The UDE lock_axis may only
#  be used for four and five axis machine tools.  A four axis post may
#  only lock an axis in the plane of the fourth axis.  For five axis
#  posts only the fifth axis may be locked.  Five axis will only
#  output correctly if the fifth axis is rotated so it is perpendicular
#  to the spindle axis.
#
  global mom_sys_lock_status

   if { [string match "ON" $mom_sys_lock_status] } {

      global mom_pos mom_out_angle_pos
      global mom_current_motion
      global mom_motion_type
      global mom_cycle_feed_to_pos
      global mom_cycle_feed_to mom_tool_axis
      global mom_motion_event
      global mom_cycle_rapid_to_pos
      global mom_cycle_retract_to_pos
      global mom_cycle_rapid_to
      global mom_cycle_retract_to
      global mom_prev_pos
      global mom_kin_4th_axis_type
      global mom_kin_spindle_axis
      global mom_kin_5th_axis_type
      global mom_kin_4th_axis_plane
      global mom_sys_cycle_after_initial
      global mom_kin_4th_axis_min_limit
      global mom_kin_4th_axis_max_limit
      global mom_kin_5th_axis_min_limit
      global mom_kin_5th_axis_max_limit
      global mom_prev_rot_ang_4th
      global mom_prev_rot_ang_5th
      global mom_kin_4th_axis_direction
      global mom_kin_5th_axis_direction
      global mom_kin_4th_axis_leader
      global mom_kin_5th_axis_leader


      if { [string match "circular_move" $mom_current_motion] } {
return
      }


      if { ![info exists mom_sys_cycle_after_initial] } {
         set mom_sys_cycle_after_initial "FALSE"
      }

      if { [string match "FALSE" $mom_sys_cycle_after_initial] } {
         LOCK_AXIS mom_pos mom_pos mom_out_angle_pos
      }

      if { [string match "CYCLE" $mom_motion_type] } {

        if { [string match "initial_move" $mom_motion_event] } {
           set mom_sys_cycle_after_initial "TRUE"
return
        }

        if { [string match "TRUE" $mom_sys_cycle_after_initial] } {
           set mom_pos(0) [expr $mom_pos(0) - $mom_cycle_rapid_to * $mom_tool_axis(0)]
           set mom_pos(1) [expr $mom_pos(1) - $mom_cycle_rapid_to * $mom_tool_axis(1)]
           set mom_pos(2) [expr $mom_pos(2) - $mom_cycle_rapid_to * $mom_tool_axis(2)]
        }

        set mom_sys_cycle_after_initial "FALSE"

        if { [string match "Table" $mom_kin_4th_axis_type] } {

           VMOV 3 mom_kin_spindle_axis mom_sys_spindle_axis

        } elseif { [string match "Table" $mom_kin_5th_axis_type] } {

           VMOV 3 mom_tool_axis vec

           switch $mom_kin_4th_axis_plane {
              XY {
                 set vec(2) 0.0
              }
              ZX {
                 set vec(1) 0.0
              }
              YZ {
                 set vec(0) 0.0
              }
           }

           set len [VEC3_unitize vec mom_sys_spindle_axis]

           if { [EQ_is_zero $len] } {
              set mom_sys_spindle_axis(2) 1.0
           }

        } else {

           VMOV 3 mom_tool_axis mom_sys_spindle_axis
        }

        set mom_cycle_feed_to_pos(0) [expr $mom_pos(0) + $mom_cycle_feed_to * $mom_sys_spindle_axis(0)]
        set mom_cycle_feed_to_pos(1) [expr $mom_pos(1) + $mom_cycle_feed_to * $mom_sys_spindle_axis(1)]
        set mom_cycle_feed_to_pos(2) [expr $mom_pos(2) + $mom_cycle_feed_to * $mom_sys_spindle_axis(2)]

        set mom_cycle_rapid_to_pos(0) [expr $mom_pos(0) + $mom_cycle_rapid_to * $mom_sys_spindle_axis(0)]
        set mom_cycle_rapid_to_pos(1) [expr $mom_pos(1) + $mom_cycle_rapid_to * $mom_sys_spindle_axis(1)]
        set mom_cycle_rapid_to_pos(2) [expr $mom_pos(2) + $mom_cycle_rapid_to * $mom_sys_spindle_axis(2)]

        set mom_cycle_retract_to_pos(0) [expr $mom_pos(0) + $mom_cycle_retract_to * $mom_sys_spindle_axis(0)]
        set mom_cycle_retract_to_pos(1) [expr $mom_pos(1) + $mom_cycle_retract_to * $mom_sys_spindle_axis(1)]
        set mom_cycle_retract_to_pos(2) [expr $mom_pos(2) + $mom_cycle_retract_to * $mom_sys_spindle_axis(2)]

      }
#<07-11-08 gsl> Cleaned up here!!!

      global mom_kin_linearization_flag

      if { ![string compare "TRUE" $mom_kin_linearization_flag] && [string compare "RAPID" $mom_motion_type] && [string compare "RETRACT" $mom_motion_type] } {

         LINEARIZE_LOCK_MOTION

      } else {

         if { ![info exists mom_prev_rot_ang_4th] } { set mom_prev_rot_ang_4th 0.0 }
         if { ![info exists mom_prev_rot_ang_5th] } { set mom_prev_rot_ang_5th 0.0 }

         set mom_out_angle_pos(0)  [ROTSET $mom_pos(3) $mom_prev_rot_ang_4th $mom_kin_4th_axis_direction $mom_kin_4th_axis_leader mom_sys_leader(fourth_axis) $mom_kin_4th_axis_min_limit $mom_kin_4th_axis_max_limit]

         if { [info exists mom_kin_5th_axis_direction] } {
            set mom_out_angle_pos(1) [ROTSET $mom_pos(4) $mom_prev_rot_ang_5th $mom_kin_5th_axis_direction $mom_kin_5th_axis_leader mom_sys_leader(fifth_axis) $mom_kin_5th_axis_min_limit $mom_kin_5th_axis_max_limit]
            set mom_prev_rot_ang_5th $mom_out_angle_pos(1)
            MOM_reload_variable mom_prev_rot_ang_5th
         }

         LINEARIZE_LOCK_OUTPUT -1
      }

      set mom_prev_rot_ang_4th $mom_out_angle_pos(0)
      MOM_reload_variable mom_prev_rot_ang_4th
      MOM_reload_variable -a mom_pos
   }
}


#=============================================================
proc LOCK_AXIS_SUB { axis } {
#=============================================================
# called by SET_LOCK

  global mom_pos mom_lock_axis_value_defined mom_lock_axis_value

   if {$mom_lock_axis_value_defined == 1} {
      return $mom_lock_axis_value
   } else {
      return $mom_pos($axis)
   }
}


#=============================================================
proc PAUSE { args } {
#=============================================================
   global env
   if { [info exists env(PB_SUPPRESS_UGPOST_DEBUG)]  &&  $env(PB_SUPPRESS_UGPOST_DEBUG) == 1 } {
  return
   }

   global gPB
   if { [info exists gPB(PB_disable_MOM_pause)]  &&  $gPB(PB_disable_MOM_pause) == 1 } {
  return
   }



  #==========
  # Win64 OS
  #
   global tcl_platform

   if { [string match "*windows*" $tcl_platform(platform)] } {
      global mom_sys_processor_archit

      if { ![info exists mom_sys_processor_archit] } {
         set pVal ""
         set env_vars [array get env]
         set idx [lsearch $env_vars "PROCESSOR_ARCHITE*"]
         if { $idx >= 0 } {
            set pVar [lindex $env_vars $idx]
            set pVal [lindex $env_vars [expr $idx + 1]]
         }
         set mom_sys_processor_archit $pVal
      }

      if { [string match "*64*" $mom_sys_processor_archit] } {

         PAUSE_win64 $args
  return
      }
   }



   set cam_aux_dir  [MOM_ask_env_var UGII_CAM_AUXILIARY_DIR]


   if { [string match "*windows*" $tcl_platform(platform)] } {
     set ug_wish "ugwish.exe"
   } else {
     set ug_wish ugwish
   }
 
   if { [file exists ${cam_aux_dir}$ug_wish] && [file exists ${cam_aux_dir}mom_pause.tcl] } {

      set title ""
      set msg ""

      if { [llength $args] == 1 } {
         set msg [lindex $args 0]
      }

      if { [llength $args] > 1 } {
         set title [lindex $args 0]
         set msg [lindex $args 1]
      }
 
      set res [exec ${cam_aux_dir}$ug_wish ${cam_aux_dir}mom_pause.tcl $title $msg]
      switch $res {
         no {
            set gPB(PB_disable_MOM_pause) 1
         }
         cancel {
            set gPB(PB_disable_MOM_pause) 1

            uplevel #0 {
               MOM_abort "*** User Abort Post Processing *** "
            }
         }
         default { return }
      }
   }
}


#=============================================================
proc PAUSE_win64 { args } {
#=============================================================
   global env
   if { [info exists env(PB_SUPPRESS_UGPOST_DEBUG)]  &&  $env(PB_SUPPRESS_UGPOST_DEBUG) == 1 } {
  return
   }

   global gPB
   if { [info exists gPB(PB_disable_MOM_pause)]  &&  $gPB(PB_disable_MOM_pause) == 1 } {
  return
   }


   set cam_aux_dir  [MOM_ask_env_var UGII_CAM_AUXILIARY_DIR]
   set ug_wish "ugwish.exe"

   if { [file exists ${cam_aux_dir}$ug_wish] && [file exists ${cam_aux_dir}mom_pause_win64.tcl] } {

      set title ""
      set msg ""

      if { [llength $args] == 1 } {
         set msg [lindex $args 0]
      }

      if { [llength $args] > 1 } {
         set title [lindex $args 0]
         set msg [lindex $args 1]
      }


     ######
     # Define a scratch file and pass it to mom_pause_win64.tcl script -
     #
     #   A separated process will be created to construct the Tk dialog.
     #   This process will communicate with the main process via the state of a scratch file.
     #   This scratch file will collect the messages that need to be conveyed from the
     #   child process to the main process.
     ######
      global mom_logname
      set pause_file_name "$env(TEMP)/${mom_logname}_mom_pause_[clock clicks].txt"


     ######
     # Path names should be per unix style for "open" command
     ######
      regsub -all {\\} $pause_file_name {/}  pause_file_name
      regsub -all { }  $pause_file_name {\ } pause_file_name
      regsub -all {\\} $cam_aux_dir {/}  cam_aux_dir
      regsub -all { }  $cam_aux_dir {\ } cam_aux_dir

      if [file exists $pause_file_name] {
         file delete -force $pause_file_name
      }


     ######
     # Note that the argument order for mom_pasue.tcl has been changed
     # The assumption at this point is we will always have the communication file as the first
     # argument and optionally the title and message as the second and third arguments
     ######
      open "|${cam_aux_dir}$ug_wish ${cam_aux_dir}mom_pause_win64.tcl ${pause_file_name} {$title} {$msg}"


     ######
     # Waiting for the mom_pause to complete its process...
     # - This is indicated when the scratch file materialized and became read-only.
     ######
      while { ![file exists $pause_file_name] || [file writable $pause_file_name] } { }


     ######
     # Delay a 100 milli-seconds to ensure that sufficient time is given for the other process to complete.
     ######
      after 100


     ######
     # Open the scratch file to read and process the information.  Close it afterward.
     ######
      set fid [open "$pause_file_name" r]

      set res [string trim [gets $fid]]
      switch $res {
         no {
            set gPB(PB_disable_MOM_pause) 1
         }
         cancel {
            close $fid
            file delete -force $pause_file_name

            set gPB(PB_disable_MOM_pause) 1

            uplevel #0 {
               MOM_abort "*** User Abort Post Processing *** "
            }
         }
         default {}
      }


     ######
     # Delete the scratch file
     ######
      close $fid
      file delete -force $pause_file_name
   }
}


#=============================================================
proc REPOSITION_ERROR_CHECK { warn } {
#=============================================================
# not called in this script

   global mom_kin_4th_axis_max_limit mom_kin_4th_axis_min_limit
   global mom_kin_5th_axis_max_limit mom_kin_5th_axis_min_limit
   global mom_pos mom_prev_pos mom_alt_pos mom_alt_prev_pos
   global mom_sys_rotary_error mom_warning_info mom_kin_machine_type

   if { [string compare "secondary rotary position being used" $warn] || [string index $mom_kin_machine_type 0] != 5 } {
      set mom_sys_rotary_error $warn
return
   }

   set mom_sys_rotary_error 0

   set a4 [expr $mom_alt_pos(3)+360.0]
   set a5 [expr $mom_alt_pos(4)+360.0]

   while { [expr $a4-$mom_kin_4th_axis_min_limit] > 360.0 } { set a4 [expr $a4-360.0] }
   while { [expr $a5-$mom_kin_5th_axis_min_limit] > 360.0 } { set a5 [expr $a5-360.0] }

   if { $a4 <= $mom_kin_4th_axis_max_limit && $a5 <= $mom_kin_5th_axis_max_limit } {
return
   }

   for { set i 0 } { $i < 2 } { incr i } {
      set rot($i) [expr $mom_pos([expr $i+3]) - $mom_prev_pos([expr $i+3])]
      while { $rot($i) > 180.0 } { set rot($i) [expr $rot($i)-360.0] }
      while { $rot($i) < 180.0 } { set rot($i) [expr $rot($i)+360.0] }
      set rot($i) [expr abs($rot($i))]

      set rotalt($i) [expr $mom_alt_pos([expr $i+3]) - $mom_prev_pos([expr $i+3])]
      while { $rotalt($i) > 180.0 } { set rotalt($i) [expr $rotalt($i)-360.0] }
      while { $rotalt($i) < 180.0 } { set rotalt($i) [expr $rotalt($i)+360.0] }
      set rotalt($i) [expr abs($rotalt($i))]
   }

   if { [EQ_is_equal [expr $rot(0)+$rot(1)] [expr $rotalt(0)+$rotalt(1)]] } {
return
   }

   set mom_sys_rotary_error $warn
}


#=============================================================
proc RETRACT_POINT_CHECK { refpt axis retpt } {
#=============================================================
# called by CALC_SPHERICAL_RETRACT_POINT & CALC_CYLINDRICAL_RETRACT_POINT

  upvar $refpt rfp ; upvar $axis ax ; upvar $retpt rtp

#
#  determine if retraction point is "below" the retraction plane
#  if the tool is already in a safe position, do not retract
#
#  return 0    no retract needed
#         1     retraction needed
#

   VEC3_sub rtp rfp vec
   if { [VEC3_is_zero vec] } {
return 0
   }

   set x [VEC3_unitize vec vec1]
   set dir [VEC3_dot ax vec1]

   if { $dir <= 0.0 } {
return 0
   } else {
return 1
   }
}


#=============================================================
proc ROTARY_AXIS_RETRACT {  } {
#=============================================================
# called by PB_CMD_kin_befor_motion

#  This command is used by four and five axis posts to retract
#  from the part when the rotary axis become discontinuous.  This
#  command is activated by setting the axis limit violation
#  action to "retract / re-engage".
#

   global mom_sys_rotary_error
   global mom_motion_event


  #<sws 9-21-06> Make sure mom_sys_rotary_error is always unset.

   if { ![info exists mom_sys_rotary_error] } {
return
   }

   set rotary_error_code $mom_sys_rotary_error
   unset mom_sys_rotary_error


   if { [info exists mom_motion_event] } {
      if { $rotary_error_code != 0 && ![string compare "linear_move" $mom_motion_event] } {
         global mom_kin_reengage_distance
         global mom_kin_rotary_reengage_feedrate
         global mom_kin_rapid_feed_rate
         global mom_pos
         global mom_prev_pos
         global mom_prev_rot_ang_4th mom_prev_rot_ang_5th
         global mom_kin_4th_axis_direction mom_kin_4th_axis_leader
         global mom_out_angle_pos mom_kin_5th_axis_direction mom_kin_5th_axis_leader
         global mom_kin_4th_axis_center_offset mom_kin_5th_axis_center_offset
         global mom_sys_leader mom_tool_axis mom_prev_tool_axis mom_kin_4th_axis_type
         global mom_kin_spindle_axis
         global mom_alt_pos mom_prev_alt_pos mom_feed_rate
         global mom_kin_rotary_reengage_feedrate
         global mom_feed_engage_value mom_feed_cut_value
         global mom_kin_4th_axis_limit_action mom_warning_info
         global mom_kin_4th_axis_min_limit mom_kin_4th_axis_max_limit
         global mom_kin_5th_axis_min_limit mom_kin_5th_axis_max_limit

        #
        #  Check for the limit action being warning only.  If so, issue warning and leave
        #
         if { ![string compare "Warning" $mom_kin_4th_axis_limit_action] } {
            set mom_warning_info  "Rotary axis limit violated, discontinuous motion may result"
            MOM_catch_warning
            return
         }

        #
        #  The previous rotary info is only available after the first motion.
        #
         if { ![info exists mom_prev_rot_ang_4th] } {
            set mom_prev_rot_ang_4th [MOM_ask_address_value fourth_axis]
         }
         if { ![info exists mom_prev_rot_ang_5th] } {
            set mom_prev_rot_ang_5th [MOM_ask_address_value fifth_axis]
         }

        #
        #  Determine the type of rotary violation encountered.  There are
        #  three distinct possibilities.
        #
        #  "ROTARY CROSSING LIMIT" and a four axis machine tool.  The fourth
        #      axis will be repositioned by either +360 or -360 before
        #      re-engaging. (roterr=0)
        #
        #  "ROTARY CROSSING LIMIT" and a five axis machine tool.  There are two
        #      possible solutions.  If the axis that crossed a limit can be
        #      repositioned by adding or subtracting 360, then that solution
        #      will be used.  (roterr=0) If there is only one position available and it is
        #      not in the valid travel limits, then the alternate position will
        #      be tested.  If valid, then the "secondary rotary position being used"
        #      method will be used. (roterr=2)
        #      If the aternate position cannot be used a warning will be given.
        #
        #  "secondary rotary position being used".  Can only occur with a five
        #      axis machine tool.  The tool will reposition to the alternate
        #      current rotary position and re-engage to the alternate current
        #      linear position.  (roterr=1)
        #
        #      (roterr=0)
        #      Rotary Reposition : mom_prev_pos(3,4) +- 360
        #      Linear Re-Engage : mom_prev_pos(0,1,2)
        #      Final End Point : mom_pos(0-4)
        #
        #      (roterr=1)
        #      Rotary Reposition : mom_prev_alt_pos(3,4)
        #      Linear Re-Engage : mom_prev_alt_pos(0,1,2)
        #      Final End Point : mom_pos(0-4)
        #
        #      (roterr=2)
        #      Rotary Reposition : mom_prev_alt_pos(3,4)
        #      Linear Re-Engage : mom_prev_alt_pos(0,1,2)
        #      Final End Point : mom_alt_pos(0-4)
        #
        #      For all cases, a warning will be given if it is not possible to
        #      to cut from the re-calculated previous position to move end point.
        #      For all valid cases the tool will, retract from the part, reposition
        #      the rotary axis and re-engage back to the part.

         if { ![string compare "ROTARY CROSSING LIMIT." $rotary_error_code] } {
            global mom_kin_machine_type

            set machine_type [string tolower $mom_kin_machine_type]
            switch $machine_type {
               5_axis_dual_table -
               5_axis_dual_head  -
               5_axis_head_table {

                  set d [expr $mom_out_angle_pos(0) - $mom_prev_rot_ang_4th]

                  if { [expr abs($d)] > 180.0 } {
                     set min $mom_kin_4th_axis_min_limit
                     set max $mom_kin_4th_axis_max_limit
                     if { $d > 0.0 } {
                        set ang [expr $mom_prev_rot_ang_4th+360.0]
                     } else {
                        set ang [expr $mom_prev_rot_ang_4th-360.0]
                     }
                  } else {
                     set min $mom_kin_5th_axis_min_limit
                     set max $mom_kin_5th_axis_max_limit
                     set d [expr $mom_out_angle_pos(1) - $mom_prev_rot_ang_5th]
                     if { $d > 0.0 } {
                        set ang [expr $mom_prev_rot_ang_5th+360.0]
                     } else {
                        set ang [expr $mom_prev_rot_ang_5th-360.0]
                     }
                  }

                  if { $ang >= $min && $ang <= $max } {
                     set roterr 0
                  } else {
                     set roterr 2
                  }
               }

               default { set roterr 0 }
            }
         } else {
            set roterr 1
         }

        #
        #  Retract from part
        #
         VMOV 5 mom_pos save_pos
         VMOV 5 mom_prev_pos save_prev_pos
         VMOV 2 mom_out_angle_pos save_out_angle_pos
         set save_feedrate $mom_feed_rate

         global mom_kin_output_unit mom_part_unit
         if { ![string compare $mom_kin_output_unit $mom_part_unit] } {
            set mom_sys_unit_conversion "1.0"
         } elseif { ![string compare "IN" $mom_kin_output_unit] } {
            set mom_sys_unit_conversion [expr 1.0/25.4]
         } else {
            set mom_sys_unit_conversion 25.4
         }

         global mom_sys_spindle_axis
         GET_SPINDLE_AXIS mom_prev_tool_axis

         global mom_kin_retract_type
         global mom_kin_retract_distance
         global mom_kin_retract_plane

         if { ![info exists mom_kin_retract_distance] } {
            if { [info exists mom_kin_retract_plane] } {
              # Convert legacy variable
               set mom_kin_retract_distance $mom_kin_retract_plane
            } else {
               set mom_kin_retract_distance 10.0
            }
         }

         if { ![info exists mom_kin_retract_type] } {
            set mom_kin_retract_type "DISTANCE"
         }

        #
        #  Pre-release type conversion
        #
         if { [string match "PLANE" $mom_kin_retract_type] } {
            set mom_kin_retract_type "SURFACE"
         }

         switch $mom_kin_retract_type {
            SURFACE {
               set cen(0) 0.0
               set cen(1) 0.0
               set cen(2) 0.0
               if { [info exists mom_kin_4th_axis_center_offset] } {
                  VEC3_add cen mom_kin_4th_axis_center_offset cen
               }

               if { ![string compare "Table" $mom_kin_4th_axis_type] } {
                  set num_sol [CALC_CYLINDRICAL_RETRACT_POINT mom_prev_pos mom_kin_spindle_axis $mom_kin_retract_distance ret_pt]
               } else {
                  set num_sol [CALC_SPHERICAL_RETRACT_POINT mom_prev_pos mom_prev_tool_axis cen $mom_kin_retract_distance ret_pt]
               }
               if {$num_sol != 0} {VEC3_add ret_pt cen mom_pos}
            }

            DISTANCE -
            default {
               set mom_pos(0) [expr $mom_prev_pos(0)+$mom_kin_retract_distance*$mom_sys_spindle_axis(0)]
               set mom_pos(1) [expr $mom_prev_pos(1)+$mom_kin_retract_distance*$mom_sys_spindle_axis(1)]
               set mom_pos(2) [expr $mom_prev_pos(2)+$mom_kin_retract_distance*$mom_sys_spindle_axis(2)]
               set num_sol 1
            }
         }


         global mom_motion_distance
         global mom_feed_rate_number
         global mom_feed_retract_value
         global mom_feed_approach_value


         set dist [expr $mom_kin_reengage_distance*2.0]

         if { $num_sol != 0 } {

        #
        #  Retract from the part at rapid feed rate.  This is the same for all conditions.
        #
            MOM_suppress once fourth_axis fifth_axis
            set mom_feed_rate [expr $mom_feed_retract_value*$mom_sys_unit_conversion]
            if { [EQ_is_equal $mom_feed_rate 0.0] } {set mom_feed_rate [expr $mom_kin_rapid_feed_rate*$mom_sys_unit_conversion]}
            VEC3_sub mom_pos mom_prev_pos del_pos
            set dist [VEC3_mag del_pos]

           #<03-13-08 gsl> Replaced next call
           # global mom_sys_frn_factor
           # set mom_feed_rate_number [expr ($mom_sys_frn_factor*$mom_feed_rate)/ $dist]
            set mom_feed_rate_number [SET_FEEDRATE_NUMBER $dist $mom_feed_rate]
            FEEDRATE_SET
            set retract "yes"
         } else {
            set mom_warning_info "Retraction geometry is defined inside of the current point.  \nNo retraction will be output. Set the retraction distance to a greater value."
            MOM_catch_warning
            set retract "no"
         }

         if { $roterr == 0 } {
#
#  This section of code handles the case where a limit forces a reposition to an angle
#  by adding or subtracting 360 until the new angle is within the limits.
#  This is either a four axis case or a five axis case where it is not a problem
#  with the inverse kinematics forcing a change of solution.
#  This is only a case of "unwinding" the table.
#
            if { ![string compare "yes"  $retract] } {
               PB_CMD_retract_move
            }

           #
           #  move to alternate rotary position
           #
            if { [info exists mom_kin_4th_axis_direction] } {
               set mom_out_angle_pos(0) [ROTSET $mom_prev_pos(3) $mom_out_angle_pos(0) $mom_kin_4th_axis_direction $mom_kin_4th_axis_leader mom_sys_leader(fourth_axis) $mom_kin_4th_axis_min_limit $mom_kin_4th_axis_max_limit]
            }
            if { [info exists mom_kin_5th_axis_direction] } {
               set mom_out_angle_pos(1) [ROTSET $mom_prev_pos(4) $mom_out_angle_pos(1) $mom_kin_5th_axis_direction $mom_kin_5th_axis_leader mom_sys_leader(fifth_axis) $mom_kin_5th_axis_min_limit $mom_kin_5th_axis_max_limit]
            }

            PB_CMD_reposition_move

           #
           #  position back to part at approach feed rate
           #
            GET_SPINDLE_AXIS mom_prev_tool_axis
            for { set i 0 } { $i < 3 } { incr i } {
               set mom_pos($i) [expr $mom_prev_pos($i) + $mom_kin_reengage_distance * $mom_sys_spindle_axis($i)]
            }
            set mom_feed_rate [expr $mom_feed_approach_value * $mom_sys_unit_conversion]
            if { [EQ_is_equal $mom_feed_rate 0.0] } {
               set mom_feed_rate [expr $mom_kin_rapid_feed_rate*$mom_sys_unit_conversion]
            }
            set dist [expr $dist-$mom_kin_reengage_distance]
            set mom_feed_rate_number [SET_FEEDRATE_NUMBER $dist $mom_feed_rate]
            FEEDRATE_SET
            MOM_suppress once fourth_axis fifth_axis
            PB_CMD_linear_move

           #
           #  feed back to part at engage feed rate
           #
            MOM_suppress once fourth_axis fifth_axis
            if { $mom_feed_engage_value  > 0.0 } {
               set mom_feed_rate [expr $mom_feed_engage_value*$mom_sys_unit_conversion]
            } elseif { $mom_feed_cut_value  > 0.0 } {
               set mom_feed_rate [expr $mom_feed_cut_value*$mom_sys_unit_conversion]
            } else {
               set mom_feed_rate [expr 10.0*$mom_sys_unit_conversion]
            }
            VEC3_sub mom_pos mom_prev_pos del_pos
            set mom_feed_rate_number [SET_FEEDRATE_NUMBER $mom_kin_reengage_distance $mom_feed_rate]
            FEEDRATE_SET
            VMOV 3 mom_prev_pos mom_pos
            PB_CMD_linear_move

            VEC3_sub mom_pos save_pos del_pos
            set dist [VEC3_mag del_pos]
            set mom_feed_rate_number [SET_FEEDRATE_NUMBER $dist $mom_feed_rate]
            FEEDRATE_SET

            VMOV 5 save_pos mom_pos
            VMOV 5 save_prev_pos mom_prev_pos
            VMOV 2 save_out_angle_pos mom_out_angle_pos

         } else {
#
#  This section of code handles the case where there are two solutions to the tool axis inverse kinematics.
#  The post is forced to change from one solution to the other.  This causes a discontinuity in the tool path.
#  The post needs to retract, rotate to the new rotaries, then position back to the part using the alternate
#  solution.
#
            #
            #  Check for rotary axes in limits before retracting
            #
            set res [ANGLE_CHECK mom_prev_alt_pos(3) 4]
            if { $res == 1 } {
               set mom_out_angle_pos(0) [ROTSET $mom_prev_alt_pos(3) $mom_prev_rot_ang_4th $mom_kin_4th_axis_direction $mom_kin_4th_axis_leader mom_sys_leader(fourth_axis) $mom_kin_4th_axis_min_limit  $mom_kin_4th_axis_max_limit 1]
            } elseif { $res == 0 } {
               set mom_out_angle_pos(0) $mom_prev_alt_pos(3)
            } else {
               set mom_warning_info "Not possible to position to alternate rotary axis positions.  Gouging may result"
               MOM_catch_warning
               VMOV 5 save_pos mom_pos

             return
            }

            set res [ANGLE_CHECK mom_prev_alt_pos(4) 5]
            if { $res == 1 } {
               set mom_out_angle_pos(1) [ROTSET $mom_prev_alt_pos(4) $mom_prev_rot_ang_5th $mom_kin_5th_axis_direction $mom_kin_5th_axis_leader mom_sys_leader(fifth_axis) $mom_kin_5th_axis_min_limit $mom_kin_5th_axis_max_limit 1]
            } elseif {$res == 0} {
               set mom_out_angle_pos(1) $mom_prev_alt_pos(4)
            } else {
               set mom_warning_info "Not possible to position to alternate rotary axis positions.  Gouging may result"
               MOM_catch_warning
               VMOV 5 save_pos mom_pos

             return
            }

            set mom_prev_pos(3) $mom_pos(3)
            set mom_prev_pos(4) $mom_pos(4)
            FEEDRATE_SET

            if { ![string compare "yes" $retract] } { PB_CMD_retract_move }
           #
           #  move to alternate rotary position
           #
            set mom_pos(3) $mom_prev_alt_pos(3)
            set mom_pos(4) $mom_prev_alt_pos(4)
            set mom_prev_rot_ang_4th $mom_out_angle_pos(0)
            set mom_prev_rot_ang_5th $mom_out_angle_pos(1)
            VMOV 3 mom_prev_pos mom_pos
            FEEDRATE_SET
            PB_CMD_reposition_move

           #
           #  position back to part at approach feed rate
           #
            set mom_prev_pos(3) $mom_pos(3)
            set mom_prev_pos(4) $mom_pos(4)
            for {set i 0} {$i < 3} {incr i} {
              set mom_pos($i) [expr $mom_prev_alt_pos($i)+$mom_kin_reengage_distance*$mom_sys_spindle_axis($i)]
            }
            MOM_suppress once fourth_axis fifth_axis
            set mom_feed_rate [expr $mom_feed_approach_value*$mom_sys_unit_conversion]
            if { [EQ_is_equal $mom_feed_rate 0.0] } {
              set mom_feed_rate [expr $mom_kin_rapid_feed_rate * $mom_sys_unit_conversion]
            }
            set dist [expr $dist-$mom_kin_reengage_distance]
            set mom_feed_rate_number [SET_FEEDRATE_NUMBER $dist $mom_feed_rate]
            FEEDRATE_SET
            PB_CMD_linear_move

           #
           #  feed back to part at engage feed rate
           #
            MOM_suppress once fourth_axis fifth_axis
            if { $mom_feed_engage_value  > 0.0 } {
               set mom_feed_rate [expr $mom_feed_engage_value*$mom_sys_unit_conversion]
            } elseif { $mom_feed_cut_value  > 0.0 } {
               set mom_feed_rate [expr $mom_feed_cut_value*$mom_sys_unit_conversion]
            } else {

#<03-13-08 gsl> - What is the logic here???
               set mom_feed_rate [expr 10.0*$mom_sys_unit_conversion]
            }
            set mom_feed_rate_number [SET_FEEDRATE_NUMBER $mom_kin_reengage_distance $mom_feed_rate]
            VMOV 3 mom_prev_alt_pos mom_pos
            FEEDRATE_SET
            PB_CMD_linear_move

            VEC3_sub mom_pos save_pos del_pos
            set dist [VEC3_mag del_pos]
            if { $dist <= 0.0 } { set dist $mom_kin_reengage_distance }
            set mom_feed_rate_number [SET_FEEDRATE_NUMBER $dist $mom_feed_rate]
            FEEDRATE_SET
            if { $roterr == 2 } {
               VMOV 5 mom_alt_pos mom_pos
            } else {
               VMOV 5 save_pos mom_pos
            }

            set mom_out_angle_pos(0) [ROTSET $mom_pos(3) $mom_out_angle_pos(0) $mom_kin_4th_axis_direction $mom_kin_4th_axis_leader mom_sys_leader(fourth_axis) $mom_kin_4th_axis_min_limit $mom_kin_4th_axis_max_limit]
            set mom_out_angle_pos(1) [ROTSET $mom_pos(4) $mom_out_angle_pos(1) $mom_kin_5th_axis_direction $mom_kin_5th_axis_leader mom_sys_leader(fifth_axis) $mom_kin_5th_axis_min_limit $mom_kin_5th_axis_max_limit]

            MOM_reload_variable -a mom_out_angle_pos
            MOM_reload_variable -a mom_pos
            MOM_reload_variable -a mom_prev_pos
         }

         set mom_feed_rate $save_feedrate
         FEEDRATE_SET
      }
   }
}


#=============================================================
proc ROTATE_VECTOR { plane angle input_vector output_vector } {
#=============================================================
  upvar $output_vector v ; upvar $input_vector v1

   if {$plane == 0} {
      set v(0) $v1(0)
      set v(1) [expr $v1(1)*cos($angle) - $v1(2)*sin($angle)]
      set v(2) [expr $v1(2)*cos($angle) + $v1(1)*sin($angle)]
   } elseif {$plane == 1} {
      set v(0) [expr $v1(0)*cos($angle) + $v1(2)*sin($angle)]
      set v(1) $v1(1)
      set v(2) [expr $v1(2)*cos($angle) - $v1(0)*sin($angle)]
   } elseif {$plane == 2} {
      set v(0) [expr $v1(0)*cos($angle) - $v1(1)*sin($angle)]
      set v(1) [expr $v1(1)*cos($angle) + $v1(0)*sin($angle)]
      set v(2) $v1(2)
   }
}


#=============================================================
proc ROTSET { angle prev_angle dir kin_leader sys_leader min max {tol_flag 0} } {
#=============================================================
#  This command will take an input angle and format for a specific machine.
#  It will also validate that the angle is within the specified limits of
#  machine.
#
#  angle        angle to be output.
#  prev_angle   previous angle output.  It should be mom_out_angle_pos
#  dir          can be either MAGNITUDE_DETERMINES_DIRECTION or
#               SIGN_DETERMINES_DIRECTION
#  kin_leader   leader (usually A, B or C) defined by postbuilder
#  sys_leader   leader that is created by rotset.  It could be C-.
#  min          minimum degrees of travel for current axis
#  max          maximum degrees of travel for current axis
#
#  tol_flag     performance comparison with tolerance
#                 0 : No (default)
#                 1 : Yes
#
#
# - This command is called by the following functions.
#   RETRACT_ROTARY_AXIS, LOCK_AXIS_MOTION, LINEARIZE_LOCK_OUTPUT,
#   MOM_rotate, LINEARIZE_OUTPUT and MILL_TURN.
#
#=============================================================
# Revisions
# 02-25-09 mzg - Added optional argument tol_flag to allow
#                performing comparisions with tolerance
#=============================================================

   upvar $sys_leader lead

#
#  Make sure angle is 0-360 to start with.
#
   LIMIT_ANGLE $angle

   if { ![string compare "MAGNITUDE_DETERMINES_DIRECTION" $dir] } {
#
#  If magnitude determines direction and total travel is less than or equal
#  to 360, we can assume there is at most one valid solution.  Find it and
#  leave.  Check for the total travel being less than 360 and give a warning
#  if a valid position cannot be found.
#
      set travel [expr $max - $min]
      if { $travel <= 360.0 } {
         while { $angle < $min } { set angle [expr $angle + 360.0] }
         while { $angle > $max } { set angle [expr $angle - 360.0] }
         if { $angle < $min } {
            global mom_warning_info
            set mom_warning_info "$kin_leader-axis is under minimum or over maximum.  Assumed default."
            MOM_catch_warning
         }
      } else {
#
#  If magnitude determines direction and total travel is greater than
#  360, we need to find the best solution that cause a move of 180 degree
#  or less.
#
         if { $tol_flag == 0 } {
            while { [expr abs([expr $angle - $prev_angle])] > 180.0 } {
               if { [expr $angle - $prev_angle] < -180.0 } {
                  set angle [expr $angle + 360.0]
               } elseif { [expr $angle - $prev_angle] > 180.0 } {
                  set angle [expr $angle - 360.0]
               }
            }
         } else {
            while { [EQ_is_gt [expr abs([expr $angle - $prev_angle])] 180.0] } {
               if { [EQ_is_lt [expr $angle - $prev_angle] -180.0] } {
                  set angle [expr $angle + 360.0]
               } elseif { [EQ_is_gt [expr $angle - $prev_angle] 180.0] } {
                  set angle [expr $angle - 360.0]
               }
            }
         }
#
#  Check for the best solution being out of the travel limits.  Use the
#  next best valid solution.
#
         while { $angle < $min } { set angle [expr $angle + 360.0] }
         while { $angle > $max } { set angle [expr $angle - 360.0] }
      }

   } elseif { ![string compare "SIGN_DETERMINES_DIRECTION" $dir] } {
#
#  Sign determines direction.  Determine whether the shortest distance is
#  clockwise or counterclockwise.  If counterclockwise append a "-" sign
#  to the address leader.
#
      set angle [expr abs($angle)]  ;# This line was not in ROTSET of xzc post.

      set del [expr $angle - $prev_angle]
      if { $tol_flag == 0 } {
         if { ($del < 0.0 && $del > -180.0) || $del > 180.0 } {
            set lead "$kin_leader-"
         } else {
            set lead $kin_leader
         }
      } else {
         if { ([EQ_is_lt $del 0.0] && [EQ_is_gt $del -180.0]) || [EQ_is_gt $del 180.0] } {
            set lead "$kin_leader-"
         } else {
            set lead $kin_leader
         }
      }
#
#  There are no alternate solutions if the position is out of limits.  Give
#  a warning a leave.
#
      if { $angle < $min || $angle > $max } {
         global mom_warning_info
         set mom_warning_info "$kin_leader-axis is under minimum or over maximum.  Assumed default."
         MOM_catch_warning
      }
   }

return $angle
}


#=============================================================
proc SET_FEEDRATE_NUMBER { dist feed } {
#=============================================================
# called by ROTARY_AXIS_RETRACT

#<03-13-08 gsl> FRN factor should not be used here! Leave it to PB_CMD_FEEDRATE_NUMBER
# global mom_sys_frn_factor

  global mom_kin_max_frn

  if { [EQ_is_zero $dist] } {
return $mom_kin_max_frn
  } else {
    set f [expr $feed / $dist ]
    if { [EQ_is_lt $f $mom_kin_max_frn] } {
return $f
    } else {
return $mom_kin_max_frn
    }
  }
}


#=============================================================
proc SET_LOCK { axis plane value } {
#=============================================================
# called by MOM_lock_axis

  upvar $axis a ; upvar $plane p ; upvar $value v

  global mom_kin_machine_type mom_lock_axis mom_lock_axis_plane mom_lock_axis_value
  global mom_warning_info

   set machine_type [string tolower $mom_kin_machine_type]
   switch $machine_type {
      4_axis_head       -
      4_axis_table      -
      mill_turn         { set mtype 4 }
      5_axis_dual_table -
      5_axis_dual_head  -
      5_axis_head_table { set mtype 5 }
      default {
         set mom_warning_info "Set lock only vaild for 4 and 5 axis machines"
return "error"
      }
   }

   set p -1

   switch $mom_lock_axis {
      OFF {
         global mom_sys_lock_arc_save
         global mom_kin_arc_output_mode
         if { [info exists mom_sys_lock_arc_save] } {
             set mom_kin_arc_output_mode $mom_sys_lock_arc_save
             unset mom_sys_lock_arc_save
             MOM_reload_kinematics
         }
         return "OFF"
      }
      XAXIS {
         set a 0
         switch $mom_lock_axis_plane {
            XYPLAN {
               set v [LOCK_AXIS_SUB $a]
               set p 2
            }
            YZPLAN {
               set mom_warning_info "Invalid plane for lock axis"
               return "error"
            }
            ZXPLAN {
               set v [LOCK_AXIS_SUB $a]
               set p 1
            }
            NONE {
               if { $mtype == 5 } {
                  set mom_warning_info "Must specify lock axis plane for 5 axis machine"
                  return "error"
               } else {
                  set v [LOCK_AXIS_SUB $a]
               }
            }
         }
      }
      YAXIS {
         set a 1
         switch $mom_lock_axis_plane {
            XYPLAN {
               set v [LOCK_AXIS_SUB $a]
               set p 2
            }
            YZPLAN {
               set v [LOCK_AXIS_SUB $a]
               set p 0
            }
            ZXPLAN {
               set mom_warning_info "Invalid plane for lock axis"
               return "error"
            }
            NONE {
               if { $mtype == 5 } {
                  set mom_warning_info "Must specify lock axis plane for 5 axis machine"
                  return "error"
               } else {
                  set v [LOCK_AXIS_SUB $a]
               }
            }
         }
      }
      ZAXIS {
         set a 2
         switch $mom_lock_axis_plane {
            YZPLAN {
               set v [LOCK_AXIS_SUB $a]
               set p 0
            }
            ZXPLAN {
               set v [LOCK_AXIS_SUB $a]
               set p 1
            }
            XYPLAN {
               set mom_warning_info "Invalid plane for lock axis"
               return "error"
            }
            NONE {
               if {$mtype == 5} {
                  set mom_warning_info "Must specify lock axis plane for 5 axis machine"
                  return "error"
               } else {
                  set v [LOCK_AXIS_SUB $a]
               }
            }
         }
      }
      FOURTH {
         set a 3
         set v [LOCK_AXIS_SUB $a]
      }
      FIFTH {
         set a 4
         set v [LOCK_AXIS_SUB $a]
      }
      AAXIS {
         set a [AXIS_SET $mom_lock_axis]
         set v [LOCK_AXIS_SUB $a]
      }
      BAXIS {
         set a [AXIS_SET $mom_lock_axis]
         set v [LOCK_AXIS_SUB $a]
      }
      CAXIS {
         set a [AXIS_SET $mom_lock_axis]
         set v [LOCK_AXIS_SUB $a]
      }
   }


   global mom_sys_lock_arc_save
   global mom_kin_arc_output_mode

   if { ![info exists mom_sys_lock_arc_save] } {
      set mom_sys_lock_arc_save $mom_kin_arc_output_mode
   }
   set mom_kin_arc_output_mode "LINEAR"

   MOM_reload_kinematics

return "ON"
}


#=============================================================
proc SOLVE_QUADRATIC { coeff rcomp icomp status degree } {
#=============================================================
# called by CALC_SPHERICAL_RETRACT_POINT

   upvar $coeff c ; upvar $rcomp rc ; upvar $icomp ic
   upvar $status st ; upvar $degree deg

   set st 1
   set deg 0
   set rc(0) 0.0 ; set rc(1) 0.0
   set ic(0) 0.0 ; set ic(1) 0.0
   set mag [VEC3_mag c]
   if { [EQ_is_zero $mag] } { return 0 }
   set acoeff [expr $c(2)/$mag]
   set bcoeff [expr $c(1)/$mag]
   set ccoeff [expr $c(0)/$mag]
   if { ![EQ_is_zero $acoeff] } {
      set deg 2
      set denom [expr $acoeff*2.]
      set dscrm [expr $bcoeff*$bcoeff - $acoeff*$ccoeff*4.0]
      if { [EQ_is_zero $dscrm] } {
         set dsqrt1 0.0
      } else {
         set dsqrt1 [expr sqrt(abs($dscrm))]
      }
      if { [EQ_is_ge $dscrm 0.0] } {
         set rc(0) [expr (-$bcoeff + $dsqrt1)/$denom]
         set rc(1) [expr (-$bcoeff - $dsqrt1)/$denom]
         set st 3
         return 2
      } else {
         set rc(0) [expr -$bcoeff/$denom]
         set rc(1) $rc(0)
         set ic(0) [expr $dsqrt1/$denom]
         set ic(1) $ic(0)
         set st 2
         return 0
      }
   } elseif { ![EQ_is_zero $bcoeff] } {
      set st 3
      set deg 1
      set rc(0) [expr -$ccoeff/$bcoeff]
      return 1
   } elseif { [EQ_is_zero $ccoeff] } {
      return 0
   } else {
      return 0
   }
}


#=============================================================
proc TRACE {  } {
#=============================================================
   set start_idx 1

   set str ""
   set level [info level]
   for { set i $start_idx } { $i < $level } { incr i } {
      set str "${str}[lindex [info level $i] 0]\n"
   }

return $str
}


#=============================================================
proc UNLOCK_AXIS { locked_point unlocked_point } {
#=============================================================
# called by LINEARIZE_LOCK_MOTION

   upvar $locked_point ip ; upvar $unlocked_point op

   global mom_sys_4th_axis_index
   global mom_sys_5th_axis_index
   global mom_sys_lock_plane
   global mom_sys_linear_axis_index_1
   global mom_sys_linear_axis_index_2
   global mom_sys_rotary_axis_index
   global mom_kin_4th_axis_center_offset
   global mom_kin_5th_axis_center_offset
   global DEG2RAD


   if { [info exists mom_kin_4th_axis_center] } {
       VEC3_add ip mom_kin_4th_axis_center_offset temp
   } else {
       set temp(0) $ip(0)
       set temp(1) $ip(1)
       set temp(2) $ip(2)
   }
   if { [info exists mom_kin_5th_axis_center_offset] } {
      VEC3_add temp mom_kin_5th_axis_center_offset temp
   }

   set op(3) $ip(3)
   set op(4) $ip(4)

   set ang [expr $op($mom_sys_rotary_axis_index)*$DEG2RAD]
   ROTATE_VECTOR $mom_sys_lock_plane $ang temp op

   set op($mom_sys_rotary_axis_index) 0.0

   if { [info exists mom_kin_4th_axis_center_offset] } {
      VEC3_sub op mom_kin_4th_axis_center_offset op
   }
   if { [info exists mom_kin_5th_axis_center_offset] } {
      VEC3_sub op mom_kin_5th_axis_center_offset op
   }
}


#=============================================================
proc UNSET_VARS { args } {
#=============================================================
   if { [llength $args] == 0 } {
return
   }

   foreach VAR $args {
      upvar $VAR var

      global tcl_version

      if { [array exists var] } {
         if { [expr $tcl_version < 8.4] } {
            foreach a [array names var] {
               if { [info exists var($a)] } {
                  unset var($a)
               }
            }
            unset var
         } else {
            array unset var
         }
      }

      if { [info exists var] } {
         unset var
      }
   }
}


#=============================================================
proc VMOV { n p1 p2 } {
#=============================================================
  upvar $p1 v1 ; upvar $p2 v2

   for {set i 0} {$i < $n} {incr i} {
      set v2($i) $v1($i)
   }
}


#=============================================================
proc WORKPLANE_SET {  } {
#=============================================================
   global mom_cycle_spindle_axis
   global mom_sys_spindle_axis
   global traverse_axis1 traverse_axis2

   if { ![info exists mom_sys_spindle_axis] } {
      set mom_sys_spindle_axis(0) 0.0
      set mom_sys_spindle_axis(1) 0.0
      set mom_sys_spindle_axis(2) 1.0
   }

   if { ![info exists mom_cycle_spindle_axis] } {
      set x $mom_sys_spindle_axis(0)
      set y $mom_sys_spindle_axis(1)
      set z $mom_sys_spindle_axis(2)

      if { [EQ_is_zero $y] && [EQ_is_zero $z] } {
         set mom_cycle_spindle_axis 0
      } elseif { [EQ_is_zero $x] && [EQ_is_zero $z] } {
         set mom_cycle_spindle_axis 1
      } else {
         set mom_cycle_spindle_axis 2
      }
   }

   if { $mom_cycle_spindle_axis == 2 } {
      set traverse_axis1 0 ; set traverse_axis2 1
   } elseif { $mom_cycle_spindle_axis == 0 } {
      set traverse_axis1 1 ; set traverse_axis2 2
   } elseif { $mom_cycle_spindle_axis == 1 } {
      set traverse_axis1 0 ; set traverse_axis2 2
   }
}




if [info exists mom_sys_start_of_program_flag] {
   if [llength [info commands PB_CMD_kin_start_of_program] ] {
      PB_CMD_kin_start_of_program
   }
} else {
   set mom_sys_head_change_init_program 1
   set mom_sys_start_of_program_flag 1
}


