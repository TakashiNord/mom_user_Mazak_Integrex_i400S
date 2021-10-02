########################## TCL Event Handlers ##########################
#
#  Mazak_Integrex-i400S-TURN.tcl -
#
#  Created by Batarev  @  5 декабря 2016 г. 16:23:26 RTZ 2 (Р·РёРјР°)
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
     set mom_sys_commentary_list                   "x z feed speed"


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
  set mom_sys_lathe_thread_advance_type(1)      "32" 
  set mom_sys_lathe_thread_advance_type(2)      "32" 
  set mom_sys_lathe_thread_advance_type(3)      "32" 
  set mom_sys_delay_code(SECONDS)               "4"  
  set mom_sys_delay_code(REVOLUTIONS)           "4"  
  set mom_sys_cutcom_code(OFF)                  "40" 
  set mom_sys_cutcom_code(LEFT)                 "41" 
  set mom_sys_cutcom_code(RIGHT)                "42" 
  set mom_sys_adjust_code                       "43" 
  set mom_sys_adjust_code_minus                 "44" 
  set mom_sys_adjust_cancel_code                "49" 
  set mom_sys_unit_code(IN)                     "70" 
  set mom_sys_unit_code(MM)                     "71" 
  set mom_sys_cycle_drill_break_chip_code       "73" 
  set mom_sys_cycle_off                         "80" 
  set mom_sys_cycle_drill_code                  "81" 
  set mom_sys_cycle_drill_deep_code             "83" 
  set mom_sys_cycle_drill_dwell_code            "82" 
  set mom_sys_cycle_tap_code                    "84" 
  set mom_sys_cycle_bore_code                   "85" 
  set mom_sys_output_code(ABSOLUTE)             "90" 
  set mom_sys_output_code(INCREMENTAL)          "91" 
  set mom_sys_reset_code                        "92" 
  set mom_sys_feed_rate_mode_code(IPM)          "94" 
  set mom_sys_feed_rate_mode_code(IPR)          "95" 
  set mom_sys_feed_rate_mode_code(FRN)          "93" 
  set mom_sys_spindle_mode_code(SFM)            "96" 
  set mom_sys_spindle_mode_code(RPM)            "97" 
  set mom_sys_return_code                       "28" 
  set mom_sys_cycle_ret_code(AUTO)              "0"  
  set mom_sys_cycle_ret_code(MANUAL)            "0"  
  set mom_sys_feed_rate_mode_code(MMPM)         "94" 
  set mom_sys_feed_rate_mode_code(MMPR)         "95" 
  set mom_sys_program_stop_code                 "0"  
  set mom_sys_optional_stop_code                "1"  
  set mom_sys_end_of_program_code               "30" 
  set mom_sys_spindle_direction_code(CLW)       "204"
  set mom_sys_spindle_direction_code(CCLW)      "203"
  set mom_sys_spindle_direction_code(OFF)       "205"
  set mom_sys_tool_change_code                  "6"  
  set mom_sys_coolant_code(MIST)                "8"  
  set mom_sys_coolant_code(ON)                  "8"  
  set mom_sys_coolant_code(FLOOD)               "8"  
  set mom_sys_coolant_code(OFF)                 "9"  
  set mom_sys_head_code(INDEPENDENT)            "21" 
  set mom_sys_head_code(DEPENDENT)              "22" 
  set mom_sys_rewind_code                       "30" 
  set mom_sys_sim_cycle_drill                   "0"  
  set mom_sys_sim_cycle_drill_dwell             "0"  
  set mom_sys_sim_cycle_drill_deep              "0"  
  set mom_sys_sim_cycle_drill_break_chip        "0"  
  set mom_sys_sim_cycle_tap                     "0"  
  set mom_sys_sim_cycle_bore                    "0"  
  set mom_sys_cir_vector                        "Vector - Arc Start to Center"
  set mom_sys_spindle_max_rpm_code              "92" 
  set mom_sys_spindle_cancel_sfm_code           "93" 
  set mom_sys_spindle_ranges                    "0"  
  set mom_sys_delay_output_mode                 "SECONDS"
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
  set mom_sys_lathe_x_double                    "2"  
  set mom_sys_lathe_i_double                    "1"  
  set mom_sys_lathe_x_factor                    "1"  
  set mom_sys_lathe_z_factor                    "1"  
  set mom_sys_lathe_i_factor                    "1"  
  set mom_sys_lathe_k_factor                    "1"  
  set mom_sys_leader(N)                         "N"  
  set mom_sys_leader(X)                         "X"  
  set mom_sys_leader(Y)                         "Y"  
  set mom_sys_leader(Z)                         "Z"  
  set mom_sys_turret_index(INDEPENDENT)         "1"  
  set mom_sys_turret_index(DEPENDENT)           "2"  
  set mom_sys_delay_param(SECONDS,format)       "Dwell_SECONDS"
  set mom_sys_delay_param(REVOLUTIONS,format)   "Dwell_REVOLUTIONS"
  set mom_sys_contour_feed_mode(LINEAR)         "MMPM"
  set mom_sys_rapid_feed_mode(LINEAR)           "MMPM"
  set mom_sys_cycle_feed_mode                   "MMPR"
  set mom_sys_feed_param(IPM,format)            "Feed_IPM"
  set mom_sys_feed_param(IPR,format)            "Feed_IPR"
  set mom_sys_feed_param(FRN,format)            "Feed_INV"
  set mom_sys_vnc_rapid_dogleg                  "1"  
  set mom_sys_prev_mach_head                    ""   
  set mom_sys_curr_mach_head                    ""   
  set mom_sys_feed_param(MMPM,format)           "Feed_MMPM"
  set mom_sys_feed_param(MMPR,format)           "Feed_MMPR"
  set mom_sys_post_description                  "Tomsk Transmission Systems"
  set mom_sys_ugpadvkins_used                   "0"
  set mom_sys_post_builder_version              "6.0.3"

####### KINEMATIC VARIABLE DECLARATIONS ##############
  set mom_kin_4th_axis_center_offset(0)         "0.0"
  set mom_kin_4th_axis_center_offset(1)         "0.0"
  set mom_kin_4th_axis_center_offset(2)         "0.0"
  set mom_kin_4th_axis_max_limit                "0.0"
  set mom_kin_4th_axis_min_incr                 "0.0"
  set mom_kin_4th_axis_min_limit                "0.0"
  set mom_kin_4th_axis_point(0)                 "0.0"
  set mom_kin_4th_axis_point(1)                 "0.0"
  set mom_kin_4th_axis_point(2)                 "0.0"
  set mom_kin_4th_axis_zero                     "0.0"
  set mom_kin_5th_axis_center_offset(0)         "0.0"
  set mom_kin_5th_axis_center_offset(1)         "0.0"
  set mom_kin_5th_axis_center_offset(2)         "0.0"
  set mom_kin_5th_axis_max_limit                "0.0"
  set mom_kin_5th_axis_min_incr                 "0.0"
  set mom_kin_5th_axis_min_limit                "0.0"
  set mom_kin_5th_axis_point(0)                 "0.0"
  set mom_kin_5th_axis_point(1)                 "0.0"
  set mom_kin_5th_axis_point(2)                 "0.0"
  set mom_kin_5th_axis_zero                     "0.0"
  set mom_kin_arc_output_mode                   "FULL_CIRCLE"
  set mom_kin_arc_valid_plane                   "XY" 
  set mom_kin_clamp_time                        "2.0"
  set mom_kin_dependent_head                    "NONE"
  set mom_kin_flush_time                        "2.0"
  set mom_kin_ind_to_dependent_head_x           "0"  
  set mom_kin_ind_to_dependent_head_z           "0"  
  set mom_kin_independent_head                  "NONE"
  set mom_kin_linearization_flag                "1"  
  set mom_kin_linearization_tol                 "0.001"
  set mom_kin_machine_resolution                ".002"
  set mom_kin_machine_type                      "lathe"
  set mom_kin_machine_zero_offset(0)            "0.0"
  set mom_kin_machine_zero_offset(1)            "0.0"
  set mom_kin_machine_zero_offset(2)            "0.0"
  set mom_kin_max_arc_radius                    "99999.999"
  set mom_kin_max_dpm                           "0.0"
  set mom_kin_max_fpm                           "10000"
  set mom_kin_max_fpr                           "1000"
  set mom_kin_max_frn                           "99999.999"
  set mom_kin_min_arc_length                    "0.01"
  set mom_kin_min_arc_radius                    "0.002"
  set mom_kin_min_dpm                           "0.0"
  set mom_kin_min_fpm                           "1.0"
  set mom_kin_min_fpr                           "0.001"
  set mom_kin_min_frn                           "0.001"
  set mom_kin_output_unit                       "MM" 
  set mom_kin_pivot_gauge_offset                "0.0"
  set mom_kin_post_data_unit                    "MM" 
  set mom_kin_rapid_feed_rate                   "10000"
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




if { [llength [info commands MOM_do_template]] == 0 } {
   proc MOM_do_template { args } {}
}


if { ![info exists mom_sys_lathe_x_double] } { set mom_sys_lathe_x_double 1 }
if { ![info exists mom_sys_lathe_y_double] } { set mom_sys_lathe_y_double 1 }
if { ![info exists mom_sys_lathe_i_double] } { set mom_sys_lathe_i_double 1 }
if { ![info exists mom_sys_lathe_j_double] } { set mom_sys_lathe_j_double 1 }
if { ![info exists mom_sys_lathe_x_factor] } { set mom_sys_lathe_x_factor 1 }
if { ![info exists mom_sys_lathe_y_factor] } { set mom_sys_lathe_y_factor 1 }
if { ![info exists mom_sys_lathe_z_factor] } { set mom_sys_lathe_z_factor 1 }
if { ![info exists mom_sys_lathe_i_factor] } { set mom_sys_lathe_i_factor 1 }
if { ![info exists mom_sys_lathe_j_factor] } { set mom_sys_lathe_j_factor 1 }
if { ![info exists mom_sys_lathe_k_factor] } { set mom_sys_lathe_k_factor 1 }


if { $mom_sys_lathe_x_double != 1 || \
     $mom_sys_lathe_y_double != 1 || \
     $mom_sys_lathe_i_double != 1 || \
     $mom_sys_lathe_j_double != 1 || \
     $mom_sys_lathe_x_factor != 1 || \
     $mom_sys_lathe_y_factor != 1 || \
     $mom_sys_lathe_z_factor != 1 || \
     $mom_sys_lathe_i_factor != 1 || \
     $mom_sys_lathe_j_factor != 1 || \
     $mom_sys_lathe_k_factor != 1 } {

   rename MOM_do_template MOM_SYS_do_template

   #====================================
   proc MOM_do_template { block args } {
   #====================================
     global mom_sys_lathe_x_double
     global mom_sys_lathe_y_double
     global mom_sys_lathe_i_double
     global mom_sys_lathe_j_double
     global mom_sys_lathe_x_factor
     global mom_sys_lathe_y_factor
     global mom_sys_lathe_z_factor
     global mom_sys_lathe_i_factor
     global mom_sys_lathe_j_factor
     global mom_sys_lathe_k_factor

     global mom_prev_pos mom_pos mom_pos_arc_center mom_from_pos mom_from_ref_pos
     global mom_cycle_rapid_to_pos mom_cycle_feed_to_pos mom_cycle_retract_to_pos
     global mom_cycle_clearance_to_pos
     global mom_cycle_feed_to mom_cycle_rapid_to
     global mom_tool_x_offset mom_tool_y_offset mom_tool_z_offset

     global mom_lathe_thread_lead_i mom_lathe_thread_lead_k


     #-----------------------------------
     # Lists of variables to be modified
     #-----------------------------------
      set var_list_1 { mom_pos(\$i) \
                       mom_from_pos(\$i) \
                       mom_from_ref_pos(\$i) \
                       mom_cycle_rapid_to_pos(\$i) \
                       mom_cycle_feed_to_pos(\$i) \
                       mom_cycle_retract_to_pos(\$i) \
                       mom_cycle_clearance_to_pos(\$i) }

      set var_list_2 { mom_prev_pos(\$i) \
                       mom_pos_arc_center(\$i) }

      set var_list_3 { mom_cycle_feed_to \
                       mom_cycle_rapid_to \
                       mom_lathe_thread_lead_i \
                       mom_lathe_thread_lead_k }


     # Retain current values
      set var_list [concat $var_list_1 $var_list_2]

      foreach var $var_list {
         for { set i 0 } { $i < 3 } { incr i } {
            if [eval info exists [set var]] {
               set val [eval format $[set var]]
               eval set __[set var] $val
            }
         }
      }

      foreach var $var_list_3 {
         if [eval info exists [set var]] {
             set val [eval format $[set var]]
             eval set __[set var] $val
         }
      }

     # Adjust X, Y & Z values
      set _factor(0) [expr $mom_sys_lathe_x_double * $mom_sys_lathe_x_factor]
      set _factor(1) [expr $mom_sys_lathe_y_double * $mom_sys_lathe_y_factor]
      set _factor(2) $mom_sys_lathe_z_factor

      foreach var $var_list_1 {
         for { set i 0 } { $i < 3 } { incr i } {
            if [expr $_factor($i) != 1] {
               if [eval info exists [set var]] {
                  set val [eval format $[set var]]
                  eval set [set var] [expr $val * $_factor($i)]
               }
            }
         }
      }

     # Adjust I, J & K
      set _factor(0) [expr $mom_sys_lathe_i_factor * $mom_sys_lathe_i_double]
      set _factor(1) [expr $mom_sys_lathe_j_factor * $mom_sys_lathe_j_double]
      set _factor(2)       $mom_sys_lathe_k_factor

      foreach var $var_list_2 {
         for { set i 0 } { $i < 3 } { incr i } {
            if [expr $_factor($i) != 1] {
               if [eval info exists [set var]] {
                  set val [eval format $[set var]]
                  eval set [set var] [expr $val * $_factor($i)]
               }
            }
         }
      }

     # Adjust Cycle's & threading registers
      foreach var $var_list_3 {
         if [eval info exists [set var]] {

            set val [eval format $[set var]]

            switch "$var" {
               "mom_cycle_feed_to"  -
               "mom_cycle_rapid_to" {
                  eval set [set var] [expr $val * $mom_sys_lathe_z_factor]
               }
               "mom_lathe_thread_lead_i" {
                  eval set [set var] [expr $val * $mom_sys_lathe_i_factor * $mom_sys_lathe_i_double]
               }
               "mom_lathe_thread_lead_k" {
                  eval set [set var] [expr $val * $mom_sys_lathe_k_factor]
               }
            }
         }
      }


     # Neutralize all factors to avoid double multiplication in the legacy posts.
      set _lathe_x_double $mom_sys_lathe_x_double
      set _lathe_y_double $mom_sys_lathe_y_double
      set _lathe_i_double $mom_sys_lathe_i_double
      set _lathe_j_double $mom_sys_lathe_j_double
      set _lathe_x_factor $mom_sys_lathe_x_factor
      set _lathe_y_factor $mom_sys_lathe_y_factor
      set _lathe_z_factor $mom_sys_lathe_z_factor
      set _lathe_i_factor $mom_sys_lathe_i_factor
      set _lathe_j_factor $mom_sys_lathe_j_factor
      set _lathe_k_factor $mom_sys_lathe_k_factor

      set mom_sys_lathe_x_double 1
      set mom_sys_lathe_y_double 1
      set mom_sys_lathe_i_double 1
      set mom_sys_lathe_j_double 1
      set mom_sys_lathe_x_factor 1
      set mom_sys_lathe_y_factor 1
      set mom_sys_lathe_z_factor 1
      set mom_sys_lathe_i_factor 1
      set mom_sys_lathe_j_factor 1
      set mom_sys_lathe_k_factor 1


     #-----------------------
     # Output block template
     #-----------------------
      set block_buffer [MOM_SYS_do_template $block $args]


     # Restore values
      foreach var $var_list {
         for { set i 0 } { $i < 3 } { incr i } {
            if [eval info exists [set var]] {
               set v __[set var]
               set val [eval format $$v]
               eval set [set var] $val
            }
         }
      }
      foreach var $var_list_3 {
         if [eval info exists [set var]] {
            set v __[set var]
            set val [eval format $$v]
            eval set [set var] $val
         }
      }

     # Restore factors
      set mom_sys_lathe_x_double $_lathe_x_double
      set mom_sys_lathe_y_double $_lathe_y_double
      set mom_sys_lathe_i_double $_lathe_i_double
      set mom_sys_lathe_j_double $_lathe_j_double
      set mom_sys_lathe_x_factor $_lathe_x_factor
      set mom_sys_lathe_y_factor $_lathe_y_factor
      set mom_sys_lathe_z_factor $_lathe_z_factor
      set mom_sys_lathe_i_factor $_lathe_i_factor
      set mom_sys_lathe_j_factor $_lathe_j_factor
      set mom_sys_lathe_k_factor $_lathe_k_factor

   return $block_buffer
   }
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


#=========================
# Linked posts definition
#=========================
 set mom_sys_master_post   "[file rootname $mom_event_handler_file_name]"
 set mom_sys_master_head                       "Turn"

 set mom_sys_postname(Turn)                    "$mom_sys_master_post"
 set mom_sys_postname(MILL)                    "Mazak_Integrex-i400S_MILL"


#=============================================================
proc MOM_end_of_program { } {
#=============================================================
   PB_CMD_for_prefun_in_end
   PB_CMD_check_ref_motion
   PB_CMD_set_modes_end
   MOM_set_seq_off
   PB_CMD_reprocess

#**** The following procedure lists the tool list with time in commentary data
   LIST_FILE_TRAILER

#**** The following procedure closes the warning and listing files
   CLOSE_files
}


#=============================================================
proc PB_end_of_HEAD__MILL { } {
#=============================================================
   PB_CMD_for_prefun_in_end
}


#=============================================================
proc PB_end_of_HEAD__Turn { } {
#=============================================================
   PB_CMD_custom_command_4
}


#=============================================================
proc PB_start_of_HEAD__MILL { } {
#=============================================================
   PB_CMD_init_vars_from_mill
   PB_CMD_init_vars1_from_mill
   PB_CMD_start_from_mill
}


#=============================================================
proc PB_start_of_HEAD__Turn { } {
#=============================================================
   MOM_do_template start_of_HEAD__Turn
}


  incr mom_sys_post_initialized


} ;# uplevel
#***********


}


#=============================================================
proc PB_TURRET_HEAD_SET { } {
#=============================================================
  global mom_kin_independent_head mom_tool_head
  global turret_current mom_warning_info

    set turret_current INDEPENDENT
    set ind_head NONE
    set dep_head NONE

    if { [string compare $mom_tool_head $mom_kin_independent_head] } {
       set turret_current DEPENDENT
    }

    if { [string compare $mom_tool_head "$ind_head"] && \
         [string compare $mom_tool_head "$dep_head"] } {
       set mom_warning_info "mom_tool_head = $mom_tool_head IS INVALID, USING NONE"
       MOM_catch_warning
    }
}


#=============================================================
proc PB_LATHE_THREAD_SET { } {
#=============================================================
  global mom_lathe_thread_type mom_lathe_thread_advance_type
  global mom_lathe_thread_lead_i mom_lathe_thread_lead_k
  global mom_motion_distance
  global mom_lathe_thread_increment mom_lathe_thread_value
  global thread_type thread_increment feed_rate_mode

    switch $mom_lathe_thread_advance_type {
      1 {set thread_type CONSTANT ; MOM_suppress once E}
      2 {set thread_type INCREASING ; MOM_force once E}
      default {set thread_type DECREASING ; MOM_force once E}
    }

    if { ![string compare $thread_type "INCREASING"] || ![string compare $thread_type "DECREASING"] } {
      if {$mom_lathe_thread_type != 1} {
        set LENGTH $mom_motion_distance
        set LEAD $mom_lathe_thread_value
        set INCR $mom_lathe_thread_increment
        set E [expr abs(pow(($LEAD + ($INCR * $LENGTH)) , 2) - pow($LEAD , 2)) / 2 * $LENGTH]
        set thread_increment $E
      }
    }

    if {$mom_lathe_thread_lead_i == 0} {
      MOM_suppress once I ; MOM_force once K
    } elseif {$mom_lathe_thread_lead_k == 0} {
      MOM_suppress once K ; MOM_force once I
    } else {
      MOM_force once I ; MOM_force once K
    }
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


#=============================================================
proc MOM_head { } {
#=============================================================
   global mom_warning_info

   global mom_sys_in_operation
   if { [info exists mom_sys_in_operation] && $mom_sys_in_operation == 1 } {
      global mom_operation_name
      set mom_warning_info "HEAD event should not be assigned to an operatrion ($mom_operation_name)."
      MOM_catch_warning
return
   }

   global mom_head_name mom_sys_postname
   global mom_load_event_handler
   global CURRENT_HEAD NEXT_HEAD
   global mom_sys_prev_mach_head mom_sys_curr_mach_head
   global mom_sys_head_change_init_program

   if { ![info exists CURRENT_HEAD] } {
      set CURRENT_HEAD ""
   }

   if { [info exists mom_head_name] } {
      set NEXT_HEAD $mom_head_name
   } else {
      set mom_warning_info "No HEAD event has been assigned."
      MOM_catch_warning
return
   }

   set head_list [array names mom_sys_postname]
   foreach h $head_list {
      if { [regexp -nocase ^$mom_head_name$ $h] == 1 } {
         set NEXT_HEAD $h
         break
      }
   }


   set tcl_file ""

   if { ![info exists mom_sys_postname($NEXT_HEAD)] } {

      set mom_warning_info "Post is not specified with Head ($NEXT_HEAD)."
      MOM_catch_warning

   } elseif { ![string match "$NEXT_HEAD" $CURRENT_HEAD] } {

      if { [llength [info commands PB_end_of_HEAD__$CURRENT_HEAD]] } {
         PB_end_of_HEAD__$CURRENT_HEAD
      }

      set mom_sys_prev_mach_head $CURRENT_HEAD
      set mom_sys_curr_mach_head $NEXT_HEAD

      set CURRENT_HEAD $NEXT_HEAD


      global mom_sys_master_head mom_sys_master_post cam_post_dir

      if [string match "$CURRENT_HEAD" $mom_sys_master_head] {

         set mom_load_event_handler "\"$mom_sys_master_post.tcl\""
         MOM_load_definition_file   "$mom_sys_master_post.def"

         set tcl_file "$mom_sys_master_post.tcl"

      } else {

         set tcl_file "[file dirname $mom_sys_master_post]/$mom_sys_postname($CURRENT_HEAD).tcl"
         set def_file "[file dirname $mom_sys_master_post]/$mom_sys_postname($CURRENT_HEAD).def"

         if [file exists "$tcl_file"] {

            global tcl_platform

            if [string match "*windows*" $tcl_platform(platform)] {
               regsub -all {/} $tcl_file {\\} tcl_file
               regsub -all {/} $def_file {\\} def_file
            }

            set mom_load_event_handler "\"$tcl_file\""
            MOM_load_definition_file   "$def_file"

         } else {

            set tcl_file "${cam_post_dir}$mom_sys_postname($CURRENT_HEAD).tcl"
            set def_file "${cam_post_dir}$mom_sys_postname($CURRENT_HEAD).def"

            if [file exists "$tcl_file"] {

               set mom_load_event_handler "\"$tcl_file\""
               MOM_load_definition_file   "$def_file"

            } else {
               set mom_warning_info  "Post ($mom_sys_postname($CURRENT_HEAD)) for HEAD ($CURRENT_HEAD) not found."
               MOM_catch_warning
            }
         }
      }


      set mom_sys_head_change_init_program 1

      if [llength [info commands MOM_start_of_program_save]] {
         rename MOM_start_of_program_save ""
      }
      rename MOM_start_of_program MOM_start_of_program_save

      if [llength [info commands MOM_end_of_program]] {
         if [llength [info commands MOM_end_of_program_save]] {
            rename MOM_end_of_program_save ""
         }
         rename MOM_end_of_program MOM_end_of_program_save
      }

      if [llength [info commands MOM_head_save]] {
         rename MOM_head_save ""
      }
      rename MOM_head MOM_head_save
   }
}


#=============================================================
proc MOM_Head { } {
#=============================================================
   MOM_head
}


#=============================================================
proc MOM_HEAD { } {
#=============================================================
   MOM_head
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


   MOM_do_template cycle_bore
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


   PB_CMD_no_move_flag
   PB_CMD_very_need
   MOM_force Once G_plane I K
   MOM_do_template circular_move
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
}


#=============================================================
proc MOM_cutcom_off { } {
#=============================================================
   CUTCOM_SET
   MOM_do_template cutcom_off
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


   MOM_do_template cycle_drill
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


   MOM_do_template cycle_drill_break_chip
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


   MOM_do_template cycle_drill_deep
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


   MOM_do_template cycle_drill_dwell
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_end_of_path { } {
#=============================================================

   if [llength [info commands PB_CMD_kin_end_of_path] ] {
      PB_CMD_kin_end_of_path
   }

   MOM_force Once G_spin
   MOM_do_template end_of_path_2
   PB_CMD_ude
   PB_CMD_INITS_goto_right
   PB_CMD_init_perehvat
   PB_CMD_vars_in_end
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

   PB_TURRET_HEAD_SET
   PB_CMD_Posle_perehvata
   PB_CMD_tool_datas
   PB_CMD_tool_changing_flag
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
   PB_CMD_approach
}


#=============================================================
proc MOM_gohome_move { } {
#=============================================================
   MOM_rapid_move
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
proc MOM_lathe_thread { } {
#=============================================================
  global cycle_name
  global cycle_init_flag

   set cycle_init_flag TRUE
   set cycle_name LATHE_THREAD
}


#=============================================================
proc MOM_lathe_thread_move { } {
#=============================================================
   global cycle_init_flag


   global mom_sys_abort_next_event
   if { [info exists mom_sys_abort_next_event] } {
      if { [llength [info commands PB_CMD_kin_abort_event]] } {
         PB_CMD_kin_abort_event
      }
   }


   PB_LATHE_THREAD_SET
   PB_CMD_no_move_flag
   MOM_do_template thread_move
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_length_compensation { } {
#=============================================================
   TOOL_SET MOM_length_compensation
   PB_CMD_groove_change_point
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
   PB_CMD_spindle_rpm_add
   PB_CMD_very_need
   PB_CMD_coolant_init
   MOM_do_template linear_move
}


#=============================================================
proc MOM_load_tool { } {
#=============================================================
  global mom_tool_change_type mom_manual_tool_change
   PB_TURRET_HEAD_SET
}


#=============================================================
proc MOM_opstop { } {
#=============================================================
   MOM_do_template opstop
}


#=============================================================
proc MOM_prefun { } {
#=============================================================
   MOM_do_template prefun
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
   PB_CMD_spindle_rpm_add
   PB_CMD_very_need
   MOM_do_template rapid_move
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
proc MOM_spindle_css { } {
#=============================================================
   SPINDLE_SET
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

   MOM_set_seq_off
   MOM_do_template start_of_path_3
   MOM_set_seq_on
   PB_CMD_INITS_remove_detal
   MOM_do_template start_of_path
   PB_CMD_Operation_name
   PB_CMD_Check_marker
   PB_CMD_set_modes_in_start
   PB_CMD_custom_command_2
}


#=============================================================
proc MOM_stop { } {
#=============================================================
   PB_CMD_STOP
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


   MOM_do_template cycle_tap
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_tool_change { } {
#=============================================================
  global mom_tool_change_type mom_manual_tool_change
   PB_TURRET_HEAD_SET
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
   PB_CMD_approach
}


#=============================================================
proc PB_auto_tool_change { } {
#=============================================================
   PB_CMD_Posle_perehvata
   PB_CMD_tool_datas
   PB_CMD_tool_changing_flag
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

   PB_CMD_init_dll
   PB_CMD_init_start_vars
   PB_CMD_Path_of_Post_files
   PB_CMD_fo_prefun_mill
   PB_CMD_Init_vars
   MOM_set_seq_on
}


#=============================================================
proc PB_CMD_53_5 { } {
#=============================================================
MOM_output_literal "G53.5 Z\[#751\]"
MOM_output_literal "G53.5 C\[#753\]"
}


#=============================================================
proc PB_CMD_Check_marker { } {
#=============================================================
global mom_operation_type path

set marker 0
switch $mom_operation_type {
      "Cavity Milling" {set marker 1}
      "Z-Level Milling" {set marker 1}
      "Planar Milling" {set marker 1}
      "Variable-axis Surface Contouring" {set marker 1}
      "Point to Point" {set marker 1}
      "Fixed-axis Surface Contouring" {set marker 1}
      "Sequential Mill Main Operation" {set marker 1}
    }



if {$marker == 1} {
	set mom_warning_info1 "Попытка отпроцессировать не фрезерной составляющей постпроцессора!!!!" 
	append mom_warning_info1 "\n "
	append mom_warning_info1 "\n Скорее всего не проставлена постпроцессорная команда HEAD "
	append mom_warning_info1 "\n "
	append mom_warning_info1 "\n\t\t\t со значением MILL. "
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
proc PB_CMD_Check_tool_angle { } {
#=============================================================
global mom_tool_holder_orient_angle mom_angle_tool mom_angle_tool_new mom_operation_type RAD2DEG
global mom_use_turn_holder oper mom_warning_info mom_tool_holder_angle_for_cutting
global mom_use_a_axis mom_use_b_axis


if {[info exists mom_use_turn_holder]} {
	if {$mom_use_turn_holder == "Yes"} {
	if {[info exists mom_tool_holder_orient_angle]} {
	set holder_orient_angle [format "%.3f" [expr $mom_tool_holder_orient_angle*$RAD2DEG]]
	set mom_angle_tool_new [expr 0 + $holder_orient_angle]
	#MOM_output_literal "mom_tool_holder_angle_for_cutting = $mom_tool_holder_angle_for_cutting"
	}
	}
}

if [info exist mom_tool_holder_angle_for_cutting] {
set holder_angle_for_cutting [format "%.3f" [expr $mom_tool_holder_angle_for_cutting*$RAD2DEG]]
#MOM_output_literal "?????????????????mom_tool_holder_angle_for_cutting = $mom_tool_holder_angle_for_cutting"
if [info exist mom_use_b_axis] {
	if {$mom_use_b_axis == 1} {
	set mom_angle_tool_new [expr 0 + $holder_angle_for_cutting]
	#MOM_output_literal "!!!!!!!!!!!!!!!!!!mom_tool_holder_angle_for_cutting = $mom_tool_holder_angle_for_cutting"

	}
}

}


if {$mom_operation_type == "Turn Centerline Drilling"} {
set mom_angle_tool_new 0
}

if {[info exists mom_angle_tool]} {
set mom_angle_tool_new $mom_angle_tool
#MOM_output_literal "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!$mom_angle_tool"
}


if ![info exist mom_angle_tool_new] {
if {$mom_operation_type != "Turn Centerline Drilling"} {
	set mom_warning_info "В операции ''$oper'' не задан ни угол наклона державки, " 
	append mom_warning_info "\n "
	append mom_warning_info "\n\t ни угол наклона резца" 
	MOM_output_to_listing_device $mom_warning_info 
	PB_CMD_Messages
	MOM_abort "Задайте угол наклона резца!!!!!!" 
	#set mom_angle_tool_new 0
}
}
}


#=============================================================
proc PB_CMD_Check_tool_angleA { } {
#=============================================================
global mom_use_a_axis prev_mom_use_a_axis tool_changing mom_operation_type

if {$mom_operation_type != "Turn Centerline Drilling"} {
if {$mom_use_a_axis != $prev_mom_use_a_axis} {
#MOM_output_literal "CHANGE A ANGLE!!!!!!!!!!!!!!"
set tool_changing 1
}
}
}


#=============================================================
proc PB_CMD_Check_tool_angle_old1 { } {
#=============================================================
global mom_tool_holder_orient_angle mom_angle_tool mom_angle_tool_new mom_operation_type RAD2DEG
global mom_use_turn_holder oper mom_warning_info mom_tool_holder_angle_for_cutting
global mom_use_a_axis mom_use_b_axis


if {[info exists mom_use_turn_holder]} {
	if {$mom_use_turn_holder == "Yes"} {
	if {[info exists mom_tool_holder_orient_angle]} {
	set mom_tool_holder_orient_angle [format "%.3f" [expr $mom_tool_holder_orient_angle*$RAD2DEG]]
	set mom_angle_tool_new [expr 0 + $mom_tool_holder_orient_angle]
	#MOM_output_literal "mom_tool_holder_angle_for_cutting = $mom_tool_holder_angle_for_cutting"
	}
	}
}

if [info exist mom_tool_holder_angle_for_cutting] {
set mom_tool_holder_angle_for_cutting [format "%.3f" [expr $mom_tool_holder_angle_for_cutting*$RAD2DEG]]
if [info exist mom_use_b_axis] {
	if {$mom_use_b_axis == 1} {
	set mom_angle_tool_new [expr 0 + $mom_tool_holder_angle_for_cutting]
	}
}

}


if {$mom_operation_type == "Turn Centerline Drilling"} {
set mom_angle_tool_new 0
}

if {[info exists mom_angle_tool]} {
set mom_angle_tool_new $mom_angle_tool
}

#if [info exist mom_use_turn_holder] {
#if {$mom_use_turn_holder != "Yes"} {
if ![info exist mom_angle_tool_new] {
if {$mom_operation_type != "Turn Centerline Drilling"} {
	set mom_warning_info "В операции ''$oper'' не задан ни угол наклона державки, " 
	append mom_warning_info "\n "
	append mom_warning_info "\n\t ни угол наклона резца" 
	MOM_output_to_listing_device $mom_warning_info 
	PB_CMD_Messages
	MOM_abort "Задайте угол наклона резца!!!!!!" 
	#set mom_angle_tool_new 0
}
}
#}
#}
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
global mom_warning_info tools_info tools_length kol var

global tool_i i1 i2 5axis G43_f
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

global mom_sys_group_output
set mom_sys_group_output "OFF"

global mom_perehvat_was 
set mom_perehvat_was 0

global mom_perehvat_was2
set mom_perehvat_was2 0

global mom_perehvat_was3
set mom_perehvat_was3 0

global mom_perehvat_was_obr
set mom_perehvat_was_obr 0
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
MOM_output_literal "G0 G53 X0 Y-125."


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
global mom_change_turret_was mom_P mom_which_turret
global mom_no_move

if {$mom_change_turret_was == 1} {

if {$mom_no_move != 1} {
MOM_output_literal "G28 U0 V0"
MOM_output_literal "G28 W0"
}
if {$mom_which_turret == "НИЖНИЙ"} {
MOM_output_literal "G28 U0 V0"
MOM_output_literal "G28 W0"
}
MOM_set_seq_off
MOM_output_literal "P$mom_P"
set mom_P [expr $mom_P +1] 
#MOM_output_literal "M950"
MOM_set_seq_on
set mom_change_turret_was 0
MOM_reload_variable -a mom_change_turret_was

}

global mom_no_move

set mom_no_move 1
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
global mom_operation_name oper

set oper $mom_operation_name
#MOM_output_literal "($oper)"
}


#=============================================================
proc PB_CMD_Path_of_Post_files { } {
#=============================================================
global mom_output_file_basename mom_operation_name mom_group_name mom_logname
global mom_date mom_machine_name mom_warning_info mom_part_name path path_flag mom_definition_file_name

set str "\n Постпроцессор для станка MAZAK Integrex i400S токарная часть \n\n"
MOM_output_to_listing_device $str  ;

set path $mom_definition_file_name

set j 1
if {[string index $path 1] == ":"} {set j 2}
if {[string index $path 2] == ":"} {set j 2}

for { set i 0 } { $i < [string length $path] } { set i [expr $i+1]} {
	if {[string index $path $i] == [string index $path $j]} {
	     set path_flag $i
	}
}
set path [string range $path 0 $path_flag]

#set is_name_ok [regexp -nocase -- {[a-z]} $mom_output_file_basename]
   #if {$is_name_ok == "1"} {
      #set mom_warning_info "\n\n\tПредупреждение: \n\t Имя файла программы - должно содержать только цифры и расширение *.eia\n\n"
      #MOM_output_to_listing_device $mom_warning_info  ;   MOM_catch_warning ;
   #}
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
EXTN_rtv_mom_cp_part_attr "32"
} else {
MOM_output_literal "(PROVER`TE PRIVYAZKU PROGRAMMNOGO NULYA - G55!!!!!)"
}
}


#=============================================================
proc PB_CMD_Posle_perehvata { } {
#=============================================================
global mom_which_spindle mom_side_clump mom_distance_zc mom_distance_zc_clump 
global mom_spin_clump mom_time_clump mom_together_machining

global mom_which_spindle mom_side_clump mom_distance_zc mom_distance_zc_clump 
global mom_spin_clump mom_time_clump mom_together_machining H_user H_user2
global mom_right_spindle mom_which_spindle mom_offset_zero

if {[info exist mom_right_spindle]} {

MOM_set_seq_off
MOM_output_literal "  " 
MOM_set_seq_on
unset mom_right_spindle

set mom_which_spindle "ПРАВЫЙ"
PB_CMD_set_modes_in_start
}
}


#=============================================================
proc PB_CMD_STOP { } {
#=============================================================
global metka2 mom_seqnum mom_stop_text
PB_CMD_OTSKOK
if [info exist mom_stop_text] {
MOM_output_literal "($mom_stop_text)"
unset mom_stop_text
}
MOM_output_literal "M0"

MOM_force once T M
MOM_do_template auto_tool_change

PB_CMD_OTSKOK
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
proc PB_CMD_alignment_block { } {
#=============================================================
  global spindle_is_out  

   MOM_force once X Z M_spindle M_coolant F G_feed

   if {[info exists spindle_is_out]} {unset spindle_is_out}
}


#=============================================================
proc PB_CMD_alignment_block_1 { } {
#=============================================================
   MOM_force once X Z M_spindle M_coolant F G_feed
}


#=============================================================
proc PB_CMD_approach { } {
#=============================================================
global approach

set approach 1

#MOM_output_literal "(APPROACH!!!!!!!!!!!!1)"
}


#=============================================================
proc PB_CMD_ask_machine_type { } {
#=============================================================
# Utility to return machine type per mom_kin_machine_type
#
# Revisions:
#-----------
# 02-26-09 gsl - Initial version
#
   global mom_kin_machine_type

   if { [string match "*wedm*" $mom_kin_machine_type] } {
return WEDM
   } elseif { [string match "*axis*" $mom_kin_machine_type] } {
return MILL
   } elseif { [string match "*lathe*" $mom_kin_machine_type] } {
return TURN
   } else {
return $mom_kin_machine_type
   }
}


#=============================================================
proc PB_CMD_before_motion { } {
#=============================================================
global mom_spindle_speed oper mom_warning_info mom_motion_type approach tool_changing
global mom_angle_tool_new mom_from_pos tool_init mom_input_zero_int prev_angle_tool
global mom_tool_type
#PB_CMD_check_travel_limits

PB_CMD_Posle_perehvata

if {$mom_spindle_speed == 0} {
	set mom_warning_info "В операции ''$oper'' не задано значение оборотов шпинделя" 
	MOM_output_to_listing_device $mom_warning_info 
	PB_CMD_Messages
	MOM_abort "Нулевое значение оборотов шпинделя!!!!!!" 
}

#PB_CMD_Check_tool_angle
if {$tool_init == 0} {
if {$approach == 1} {
	PB_CMD_Check_tool_angle
	set approach 0
PB_CMD_Check_tool_angleA
	if {$tool_changing == 1} {
  	MOM_do_template coolant_off
	PB_CMD_check_ref_motion
#MOM_output_literal "mom_tool_type = $mom_tool_type !!!!!!!!!!!!!"
	PB_CMD_tool_type_marker
	PB_CMD_tool_change_modes
	MOM_output_literal "G10.9X1"
	PB_CMD_choose_output_spindle
	MOM_force Once G_motion X Y  Z F
	set tool_changing 0
	} else {
	set mom_angle_tool_new [format "%.3f" $mom_angle_tool_new]
	PB_CMD_groove_change_point
	if {$prev_angle_tool != $mom_angle_tool_new} {
	PB_CMD_OTSKOK
	EXTN_rtv_mom_cp_part_attr "18"
	}
	MOM_output_literal "G10.9X1"
	}
	if [info exist mom_from_pos(0)] {
	MOM_force Once G_motion X Y Z
#MOM_output_literal "HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH"
	MOM_do_template from
	}
set tool_init 1
}

}
global mom_spindle_mode
#MOM_output_literal "mom_spindle_mode=$mom_spindle_mode"
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
proc PB_CMD_check_ref_motion { } {
#=============================================================
global mom_out_angle_pos mom_head_name orient_marker
	
PB_CMD_OTSKOK
	#MOM_output_literal "G0 B0"
}


#=============================================================
proc PB_CMD_check_tools { } {
#=============================================================
global mom_tool_number oper mom_warning_info

if {$mom_tool_number == 0} {
	set mom_warning_info "В операции ''$oper'' не задан номер инструмента" 
	MOM_output_to_listing_device $mom_warning_info 
	PB_CMD_Messages
	MOM_abort "Нулевое значение номера инструмента!!!!!!" 
}
}


#=============================================================
proc PB_CMD_check_travel_limits { } {
#=============================================================
global mom_sys_max_travel 
   global mom_sys_min_travel
   global mom_kin_x_axis_limit
   global mom_kin_y_axis_limit
   global mom_kin_z_axis_limit
   global mom_pos 
   global mom_cycle_rapid_to_pos 
   global mom_cycle_feed_to_pos 
   global mom_cycle_retract_to_pos 
   global mom_motion_type
   global mom_warning_info
global mom_motion_event

#MOM_output_literal "mom_motion_event = $mom_motion_event"

   if {![info exists mom_sys_max_travel]} {

      for {set i 0} {$i < 3} {incr i} {
	if {($mom_motion_event == "rapid_move") && ($mom_motion_event == "initial_move")} {
         set mom_sys_max_travel($i) $mom_pos($i)
         set mom_sys_min_travel($i) $mom_pos($i)
		#MOM_output_literal "INITS@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
		#MOM_output_literal "mom_pos(2)=$mom_pos(2)@@@@@@@@@@@@@@@@"
	} else {
	 set mom_sys_max_travel($i) -999
         set mom_sys_min_travel($i) 999

	}
      }

   } elseif {$mom_motion_type == "CYCLE"} {

      for {set i 0} {$i < 3} {incr i} {

         if {$mom_cycle_rapid_to_pos($i) < $mom_sys_min_travel($i)} {
            set mom_sys_min_travel($i) $mom_cycle_rapid_to_pos($i)
         }
         if {$mom_cycle_rapid_to_pos($i) > $mom_sys_max_travel($i)} {
            set mom_sys_max_travel($i) $mom_cycle_rapid_to_pos($i)
         }
         if {$mom_cycle_feed_to_pos($i) < $mom_sys_min_travel($i)} {
            set mom_sys_min_travel($i) $mom_cycle_feed_to_pos($i)
         }
         if {$mom_cycle_feed_to_pos($i) > $mom_sys_max_travel($i)} {
            set mom_sys_max_travel($i) $mom_cycle_feed_to_pos($i)
         }
         if {$mom_cycle_retract_to_pos($i) < $mom_sys_min_travel($i)} {
            set mom_sys_min_travel($i) $mom_cycle_retract_to_pos($i)
         }
         if {$mom_cycle_retract_to_pos($i) > $mom_sys_max_travel($i)} {
            set mom_sys_max_travel($i) $mom_cycle_retract_to_pos($i)
         }
      }

   } else {
    
      for {set i 0} {$i < 3} {incr i} {
	if {($mom_motion_event != "rapid_move") && ($mom_motion_event != "initial_move")} {
         if {$mom_pos($i) < $mom_sys_min_travel($i)} {
            set mom_sys_min_travel($i) $mom_pos($i)
         }
         if {$mom_pos($i) > $mom_sys_max_travel($i)} {
            set mom_sys_max_travel($i) $mom_pos($i)
		#MOM_output_literal "MAX!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
		#MOM_output_literal "mom_pos(2)=$mom_pos(2)!!!!!!!!!!!!!!!"
         }
      	}
      }
   }

#   if {[expr $mom_sys_max_travel(0) - $mom_sys_min_travel(0)] > $mom_kin_x_axis_limit} {
      #set mom_warning_info "Maximum X axis travel exceeded, did not alter output"
      #MOM_catch_warning
#   }

#   if {[expr $mom_sys_max_travel(1) - $mom_sys_min_travel(1)] > $mom_kin_y_axis_limit} {
      #set mom_warning_info "Maximum Y axis travel exceeded, did not alter output"
      #MOM_catch_warning
#   }

#   if {[expr $mom_sys_max_travel(2) - $mom_sys_min_travel(2)] > $mom_kin_z_axis_limit} {
      #set mom_warning_info "Maximum Z axis travel exceeded, did not alter output"
      #MOM_catch_warning
#   }
}


#=============================================================
proc PB_CMD_choose_output_spindle { } {
#=============================================================
  global mom_spindle_mode 
  global spindle_is_out
  global mom_spindle_maximum_rpm mom_spindle_speed
  global mom_which_spindle

MOM_force once M_spindle S G_spin

   if {[info exist mom_which_spindle]} {
	if {$mom_which_spindle == "ЛЕВЫЙ"} {
#MOM_output_literal "1"
	EXTN_rtv_mom_cp_part_attr "20"
	} elseif {$mom_which_spindle == "ПРАВЫЙ"} {
#MOM_output_literal "2"
	PB_CMD_output_spindle_for_side2
	}
   } else {
	EXTN_rtv_mom_cp_part_attr "20"
#MOM_output_literal "def"
   }
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
proc PB_CMD_custom_command { } {
#=============================================================
global mom_sys_current_head

MOM_output_literal "$mom_sys_current_head"
}


#=============================================================
proc PB_CMD_custom_command_1 { } {
#=============================================================
global mom_head_name mom_head_type
MOM_output_literal "NAME $mom_head_name"
MOM_output_literal "TYPE $mom_head_type"
}


#=============================================================
proc PB_CMD_custom_command_2 { } {
#=============================================================
MOM_force once G_feed F 

#set test_var 111
}


#=============================================================
proc PB_CMD_custom_command_3 { } {
#=============================================================
MOM_output_literal "TEEEEEEEEEEEEEEEEEEEESTTTTTTTTTTT!!!!!!!!!!!!!!"
}


#=============================================================
proc PB_CMD_custom_command_4 { } {
#=============================================================
global mom_which_spindle


if {[info exist mom_which_spindle]} {
if {$mom_which_spindle == "ЛЕВЫЙ" } {
MOM_output_literal "M205"
} else {
MOM_output_literal "M305"
}
}
}


#=============================================================
proc PB_CMD_end_of_alignment_character { } {
#=============================================================
#  Return sequnece number back to orignal
#  This command may be used with the command "PM_CMD_start_of_alignment_character"

  global mom_sys_leader saved_seq_num
   set mom_sys_leader(N) $saved_seq_num
}


#=============================================================
proc PB_CMD_fo_prefun_mill { } {
#=============================================================
global flag flag2
set flag 0
set flag2 0
}


#=============================================================
proc PB_CMD_for_prefun_in_end { } {
#=============================================================
global mom_prefun flag metka1 metka2 flag2 mom_prefun_text count_metka mom_massive_otskok
global mom_first_teeth mom_end_teeth mom_all_teeth massiv_turned metka_all first_group prev_massive_otskok

#MOM_output_literal "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

if [info exist massiv_turned] {

#MOM_output_literal "!!!!!!!!mom_massive_otskok=mom_massive_otskok!!!!!!!!!!!!!"
set metka2 [format "%.0f" $metka2]
set metka_all [format "%.0f" $metka_all]
MOM_output_literal "\#820 = \[\#820+1\]"
MOM_output_literal "IF \[\#820 GT \[\#821\]\] GOTO[expr $metka2]"
if [info exist first_group] {
PB_CMD_PROGRAMMED_OTSKOK_MASSIVE
}
MOM_output_literal "GOTO[expr $metka_all-1]"
MOM_set_seq_on
MOM_output_literal "G10 L2 P0 C0"
MOM_output_literal "G0 G53 Z0"
MOM_set_seq_off

set flag 1
set flag2 0
unset massiv_turned
}

if [info exist mom_massive_otskok] {
set prev_massive_otskok $mom_massive_otskok
}
}


#=============================================================
proc PB_CMD_groove_change_point { } {
#=============================================================
global mom_tool_type first_groove mom_cutcom_adjust_register korrector korrector1
global mom_tool_adjust_register mom_tool_catalog_number orient_marker mom_use_a_axis

#MOM_output_literal "mom_tool_adjust_register = $mom_tool_adjust_register!!!!!!!!"
if {$mom_tool_type == "Grooving Tool-Standard"} {
PB_CMD_Check_tool_angle
	if {$first_groove == 1} {
		set first_groove 0
set orient_marker $mom_tool_adjust_register

if [info exist mom_use_a_axis] {
if {$mom_use_a_axis == 1} {
set orient_marker [expr $orient_marker + 1]
}
}

if [info exist mom_tool_catalog_number] {
if {($mom_tool_catalog_number == "тяжелый") || ($mom_tool_catalog_number == "heavy")} { 
set orient_marker [expr $orient_marker +60]
}
}
MOM_force once T M
MOM_do_template auto_tool_change

		return
	} else {
set orient_marker $mom_tool_adjust_register
if [info exist mom_use_a_axis] {
if {$mom_use_a_axis == 1} {
set orient_marker [expr $orient_marker + 1]
}
}
if [info exist mom_tool_catalog_number] {
if {($mom_tool_catalog_number == "тяжелый") || ($mom_tool_catalog_number == "heavy")} {
set orient_marker [expr $orient_marker +60]
}
}
MOM_force once T M
MOM_do_template auto_tool_change
	MOM_force once G_motion
	}
}
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
proc PB_CMD_init_dll { } {
#=============================================================
global external_lib_rtv_mom_component_part_attr mom_event_handler_file_name
global nx_platform

set nx_platform [MOM_ask_env_var UGII_PLATFORM]
set text_32 mom_user_MAZAK_INTEGREX_i630_32.dll
set text_64 mom_user_MAZAK_INTEGREX_i630_64.dll

#MOM_output_literal "nx_platform = $nx_platform"

for { set nn [string length $mom_event_handler_file_name] } { $nn > 0 } { set nn [expr $nn-1]} {
if {([string index $mom_event_handler_file_name $nn] == "\134")} {
set post_file_name [string range $mom_event_handler_file_name [expr $nn+1] [string length $mom_event_handler_file_name]]
set post_dir_path [string range $mom_event_handler_file_name 0 [expr $nn]]
break
}
}

if {$nx_platform == "x64wnt"} {
append post_dir_path $text_64
} elseif {$nx_platform == "ix8xwnt"} {
append post_dir_path $text_32
} else { 
	set root_ugii_dir [MOM_ask_env_var UGII_ROOT_DIR] ;
	set tested_file ${root_ugii_dir}ugtcl.dll
	if { [file exists $tested_file] } {	
        set checked_size [ file size $tested_file]
        set checked_size [ expr double($checked_size)]
        # 616 960 for 64bit ; 462 848 for 32bit
        if {$checked_size>600000.} { set NX4_64 1 ; } else { set NX4_64 0 ; }
	if {$NX4_64 == 1} {append post_dir_path $text_64} else {append post_dir_path $text_32}
	}
}

set external_lib_rtv_mom_component_part_attr $post_dir_path
MOM_run_user_function $external_lib_rtv_mom_component_part_attr "entry_rtv_mom_cp_part_attr"


global external_lib_aviastar
global use_attributes

set use_attributes 0 
#(ГҐГ±Г«ГЁ 1 - Г ГІГ°ГЁГЎГіГІГ» ГЁГ±ГЇГ®Г«ГјГ§Г®ГўГ ГІГј, ГҐГ±Г«ГЁ 0 - Г­ГҐГІ)

if {$use_attributes == 1} {
set external_lib_aviastar [MOM_ask_env_var UGII_CAM_POST_DIR]Aviastar_ATT.dll
MOM_run_user_function $external_lib_aviastar "entry_aviastar"
}
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
proc PB_CMD_init_start_vars { } {
#=============================================================
global tool_with_on 
set tool_with_on 0

global first_flag
set first_flag 0

global orient_marker
set orient_marker "1"

global mom_which_turret
set mom_which_turret "ВЕРХНИЙ"

global mom_which_spindle 
set mom_which_spindle "ЛЕВЫЙ"

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

global B_prev
set B_prev 0

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

global prev_group_name 
set prev_group_name ""

global prev_mom_use_a_axis 
set prev_mom_use_a_axis 0

global first_time
set first_time 1

global count_metka
set count_metka 1

global prev_group_name 
set prev_group_name ""

global metka2 
set metka2 0

global coolant_inited
set coolant_inited 0

global first_groove
set first_groove 1

global synch_mode
set synch_mode 0

global mom_input_zero_int
set mom_input_zero_int "G54"

global lunet_turned
set lunet_turned 0
}


#=============================================================
proc PB_CMD_init_vars1_from_mill { } {
#=============================================================
global G10 mom_warning_info G68 mom_contact_status tools_info tools_length kol

global 5axis_flag 5axis_flag2 5axis_flag_for_end eng_flag Clear_G43_flag

global mom_kin_4th_axis_min_limit 
global mom_kin_4th_axis_max_limit tool_vec_check G54_flag mom_prefun

global mom_msys_origin nol1 nol2 nol3 mom_sys_leader

set mom_kin_4th_axis_min_limit 0
set mom_kin_4th_axis_max_limit 180
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

global coolant_inited
set coolant_inited 0

global diap
set diap 1
}


#=============================================================
proc PB_CMD_init_vars_from_mill { } {
#=============================================================
global tool_i i1 i2 5axis G43_f mom_sys_leader
global start_of_program_flag from_flag tool_numbers


	set start_of_program_flag "0"

	set from_flag 0

	#set i1 0
	#set i2 0
	uplevel #0 {
		#set tool_i "0"
		set 5axis 0
		set G43_f 0
		}
#set tool_numbers ""



global mom_perehvat_was 
set mom_perehvat_was 0


global mom_which_spindle 
#set mom_which_spindle "Г‹Г…Г‚Г›Г‰"

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
set mom_which_turret "Г‚Г…ГђГ•ГЌГ€Г‰"

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
proc PB_CMD_kin_abort_event { } {
#=============================================================
   if { [llength [info commands PB_CMD_abort_event]] } {
      PB_CMD_abort_event
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
proc PB_CMD_kin_init_new_iks { } {
#=============================================================
   global mom_kin_machine_type mom_kin_iks_usage

   if { ![string compare "lathe" $mom_kin_machine_type] } {
      set mom_kin_iks_usage 0
      MOM_reload_kinematics
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
proc PB_CMD_kin_set_csys { } {
#=============================================================
   if [llength [info commands PB_CMD_set_csys] ] {
      PB_CMD_set_csys
   }
}


#=============================================================
proc PB_CMD_kin_start_of_path { } {
#=============================================================
#
#  This procedure is executed at the start of every operation.
#  It will check to see if a new head (post) was loaded and 
#  will then initialize any functionality specific to that post.
#
#  It will also restore the initial Start of Program or End
#  of program event procedures.
#
#  DO NOT CHANGE THIS FILE UNLESS YOU KNOW WHAT YOU ARE DOING.
#  DO NOT CALL THIS PROCEDURE FROM ANY OTHER CUSTOM COMMAND.
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
         rename MOM_start_of_program ""
         rename MOM_start_of_program_save MOM_start_of_program 
      }
      if { [llength [info commands "MOM_end_of_program_save"]] } {
         rename MOM_end_of_program_save MOM_end_of_program 
      }

     # Restore master head change event handler
      if { [llength [info commands "MOM_head_save"]] } {
         if { [llength [info commands "MOM_head"]] } {
            rename MOM_head ""
         }
         rename MOM_head_save MOM_head
      }

     # Reset solver state for lathe post
      if { [llength [info commands PB_CMD_reset_lathe_post] ] } {
         PB_CMD_reset_lathe_post
      }
   }

  # Initialize tool time accumulator for this operation.
   if { [llength [info commands PB_CMD_init_oper_tool_time] ] } {
      PB_CMD_init_oper_tool_time
   }
}


#=============================================================
proc PB_CMD_kin_start_of_program { } {
#=============================================================
#
#  This procedure will execute the following custom commands for
#  initialization.  They will be executed once at the start of 
#  program and again each time they are loaded as a linked post.  
#  After execution they will be deleted so that they are not 
#  present when a different post is loaded.  You may add a call 
#  to a procedure that you want executed when a linked post is 
#  loaded.  
#
#  Note when a linked post is called in, the Start of Program
#  event is not executed again.
#
#  DO NOT REMOVE ANY LINES FROM THIS PROCEDURE UNLESS YOU KNOW
#  WHAT YOU ARE DOING.  DO NOT CALL THIS PROCEDURE FROM ANY
#  OTHER CUSTOM COMMAND.
#
 
   set command_list [list]

   lappend command_list  PB_CMD_kin_init_new_iks

   lappend command_list  PB_CMD_initialize_tool_list
   lappend command_list  PB_CMD_init_tool_list
   lappend command_list  PB_CMD_init_tape_break
   lappend command_list  PB_CMD_set_lathe_arc_plane

   lappend command_list  PB_CMD_kin_init_probing_cycles


   foreach cmd $command_list {
      if { [llength [info commands "$cmd"]] } {
         eval $cmd
         rename $cmd ""
         proc $cmd { args } {}
      }
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
proc PB_CMD_multi_post { } {
#=============================================================
# Эта команда определяет имена постпроцессоров для каждого вида обработки.
#
  
set mom_sys_postname(MILL) "Mazak_Integrex-e650_Mill_NEW"
}


#=============================================================
proc PB_CMD_no_move_flag { } {
#=============================================================
global mom_no_move

set mom_no_move 0
}


#=============================================================
proc PB_CMD_output_spindle { } {
#=============================================================
  global mom_spindle_mode 
  global spindle_is_out
  global mom_spindle_maximum_rpm mom_spindle_speed

MOM_force once M_spindle S G_spin

   if {$spindle_is_out == 0} { 
PB_CMD_set_Range
      if {($mom_spindle_mode == "RPM") && ($mom_spindle_speed != 0)} {
         MOM_force once M_spindle S G_spin R
         MOM_do_template spindle_rpm
      } elseif {$mom_spindle_mode == "SFM" || $mom_spindle_mode == "SMM"} {
         MOM_force once M_spindle S G_spin R

         if { (![info exists mom_spindle_maximum_rpm]) || ($mom_spindle_maximum_rpm == 0) } { 
		set mom_spindle_maximum_rpm 4000
		set maximum_rpm 4000
MOM_force once M_spindle S G_spin R
            MOM_do_template spindle_max_rpm
         }
	MOM_force once M_spindle S G_spin R
         MOM_do_template spindle_css
      }
      set spindle_is_out 1
   }
}


#=============================================================
proc PB_CMD_output_spindle_for_side2 { } {
#=============================================================
  global mom_spindle_mode 
  global spindle_is_out
  global mom_spindle_maximum_rpm mom_spindle_speed

MOM_force once M_spindle S G_spin

   if {$spindle_is_out == 0} { 
      if {($mom_spindle_mode == "RPM") && ($mom_spindle_speed != 0)} {
         MOM_force once M_spindle S G_spin R
         MOM_do_template spindle_rpm_side2
      } elseif {$mom_spindle_mode == "SFM" || $mom_spindle_mode == "SMM"} {
         MOM_force once M_spindle S G_spin R

         if { (![info exists mom_spindle_maximum_rpm]) || ($mom_spindle_maximum_rpm == 0) } { 
		set mom_spindle_maximum_rpm 4000
		set maximum_rpm 4000
MOM_force once M_spindle S G_spin R
            MOM_do_template spindle_max_rpm_side2
         }
	MOM_force once M_spindle S G_spin R
         MOM_do_template spindle_css_side2
      }
      set spindle_is_out 1
   }
}


#=============================================================
proc PB_CMD_pause { } {
#=============================================================
# This command enables you to pause the UG/Post processing.
#
  PAUSE
}


#=============================================================
proc PB_CMD_reprocess { } {
#=============================================================
global ptp_file_name mom_definition_file_name  mom_tool_count mom_tool_use tool_data_name tool_data_diameter tool_data_corner1_radius
global tmp_mess_file name_operation mom_warning_info mom_output_file_directory
global mom_output_file_suffix mom_group_name mom_output_file_basename 5axis_flag
global array_rot_C count 

set count 0
	
set tmp_file_name "${ptp_file_name}_"

if {[file exists $tmp_file_name]} {
	MOM_remove_file $tmp_file_name
}

MOM_close_output_file $ptp_file_name
file rename $ptp_file_name $tmp_file_name
set ifile [open $tmp_file_name r]
set ofile [open $ptp_file_name w]
	
global mom_machine_time mom_group_name mom_operation_name
global mom_tool_count mom_tool_use tool_i
global tool_data_name tool_data_diameter tool_data_corner1_radius
global mom_output_file_basename
global mom_logname mom_ug_version mom_date mom_part_name mom_machine_name

puts $ofile "($mom_output_file_basename)"
puts $ofile " "

puts $ofile "(MACHINE: Mazak Integrex i400S)"
puts $ofile "(Part: $mom_part_name )"
   if {[info exists mom_operation_name] == 0} { set mom_operation_name "" }
   if {[info exists mom_group_name] == 0} { set mom_group_name $mom_operation_name }
puts $ofile "(Program: $mom_group_name)" 
puts $ofile "($mom_logname, Date:$mom_date )"
puts $ofile "(ZAO \"POSTPROCESSOR\", MOSCOW, 2016, (http://www.postprocessor.ru))"
puts $ofile " "

#set mom_machine_time [expr $mom_machine_time * 2] 
puts $ofile "(MACHINE TIME: [format "%.2f" $mom_machine_time] MIN)"
puts $ofile " "

puts $ofile "(----------- TOOL LIST -----------)"
for { set nn 0 } { $nn < $tool_i } {incr nn} {
    if {[hiset mom_tool_use($nn,0)] && [hiset mom_tool_use($nn,1)]} {
        set a [scan $mom_tool_use($nn,0) %d tn]
        set mom_tool_use($nn,1) [expr $mom_tool_use($nn,1) * 1]
        puts $ofile "(TOOL NUMBER [format "%s" $tn])      (TOOL NAME: [format "%s" $tool_data_name($nn)])"


    }
}

puts $ofile "(--------- END TOOL LIST ---------)"


set 5axis 0
set buf ""

while { [gets $ifile buf] > 0 } {

		puts $ofile $buf

}
		close $ifile
	close $ofile

global tmp2_file_name file_created

if [info exists file_created] {
MOM_remove_file $tmp2_file_name
}


	MOM_remove_file $tmp_file_name
	MOM_open_output_file $ptp_file_name
}


#=============================================================
proc PB_CMD_reprocess_end { } {
#=============================================================
global check_sum use_attributes

if {$use_attributes == 1} {
EXTN_aviastar SUMMA
MOM_set_seq_off
MOM_output_literal "+)(S$check_sum)"
}
}


#=============================================================
proc PB_CMD_reprocess_middle { } {
#=============================================================
global ptp_file_name mom_definition_file_name  mom_tool_count mom_tool_use tool_data_name tool_data_diameter tool_data_corner1_radius
global tmp_mess_file name_operation mom_warning_info mom_output_file_directory
global mom_output_file_suffix mom_group_name mom_output_file_basename 5axis_flag
global array_rot_C count 

set count 0
	
set tmp_file_name "${ptp_file_name}_"

if {[file exists $tmp_file_name]} {
	MOM_remove_file $tmp_file_name
}

MOM_close_output_file $ptp_file_name
file rename $ptp_file_name $tmp_file_name
set ifile [open $tmp_file_name r]
set ofile [open $ptp_file_name w]
	
global mom_machine_time mom_group_name mom_operation_name
global mom_tool_count mom_tool_use tool_i
global tool_data_name tool_data_diameter tool_data_corner1_radius
global mom_output_file_basename
global mom_logname mom_ug_version mom_date mom_part_name mom_machine_name

puts $ofile "($mom_output_file_basename)"
puts $ofile " "


puts $ofile "(----------- TOOL LIST -----------)"
for { set nn 0 } { $nn < $tool_i } {incr nn} {
	if {[hiset mom_tool_use($nn,0)] && [hiset mom_tool_use($nn,1)]} {
		set a [scan $mom_tool_use($nn,0) %d tn]
		set mom_tool_use($nn,1) [expr $mom_tool_use($nn,1) * 2]
		puts $ofile "(TOOL NUMBER [format "%s %.2f" $tn $mom_tool_use($nn,1)] MIN)"
		puts $ofile "(TOOL NAME: [format "%s D=%.3f R=%.3f" $tool_data_name($nn) $tool_data_diameter($nn) $tool_data_corner1_radius($nn)])" 
	}
}

puts $ofile "(--------- END TOOL LIST ---------)"

set 5axis 0
set buf ""

while { [gets $ifile buf] > 0 } {

		puts $ofile $buf

}
		close $ifile
	close $ofile

global tmp2_file_name file_created

if [info exists file_created] {
MOM_remove_file $tmp2_file_name
}


	MOM_remove_file $tmp_file_name
	MOM_open_output_file $ptp_file_name
}


#=============================================================
proc PB_CMD_reprocess_old_turn { } {
#=============================================================
global ptp_file_name 5axis_flag_for_end mom_definition_file_name 5axis_flag Clear_G43_flag
global tmp_mess_file name_operation
global nomer_detali
global nomer_pi tab_number machine_name machine_id
global mom_sys_max_travel 
global mom_sys_min_travel
global use_attributes

#set mom_sys_min_travel(0) [format "%.3f" $mom_sys_min_travel(0)]
#set mom_sys_min_travel(1) [format "%.3f" $mom_sys_min_travel(1)]
#set mom_sys_min_travel(2) [format "%.3f" $mom_sys_min_travel(2)]
#set mom_sys_max_travel(0) [format "%.3f" $mom_sys_max_travel(0)]
#set mom_sys_max_travel(1) [format "%.3f" $mom_sys_max_travel(1)]
#set mom_sys_max_travel(2) [format "%.3f" $mom_sys_max_travel(2)]
	
set tmp_file_name "${ptp_file_name}_"

if {[file exists $tmp_file_name]} {
	MOM_remove_file $tmp_file_name
}

MOM_close_output_file $ptp_file_name
file rename $ptp_file_name $tmp_file_name
set ifile [open $tmp_file_name r]
set ofile [open $ptp_file_name w]

global mom_machine_time mom_group_name mom_operation_name
global mom_tool_count mom_tool_use tool_i
global tool_data_name tool_data_diameter tool_data_corner1_radius
global mom_output_file_basename
global mom_logname mom_ug_version mom_date mom_part_name mom_machine_name

set time1 [clock format [clock seconds] -format %d]
set time2 [clock format [clock seconds] -format %m]
set time3 [clock format [clock seconds] -format %y]
set time4 [clock format [clock seconds] -format {%H:%M}]
#puts $ofile "($time1.$time2.$time3)"

if {$use_attributes == 1} {
puts $ofile "($nomer_detali+$mom_output_file_basename+$nomer_pi+$tab_number+$machine_name+$time1.$time2.$time3+$time4+[format "%.2f" [expr 2*$mom_machine_time]]+$machine_id)\012"
puts $ofile " "
}
	
global mom_machine_time mom_group_name mom_operation_name
global mom_tool_count mom_tool_use
global tool_data_name tool_data_diameter tool_data_corner1_radius
global mom_output_file_basename
global mom_logname mom_ug_version mom_date


#puts $ofile "($mom_output_file_basename)"
#puts $ofile " "

puts $ofile "($mom_date, User  $mom_logname)"
puts $ofile "(CSOFT, MOSCOW)"
puts $ofile "(Mazak Integrex e-1060II turning)"
puts $ofile " "

puts $ofile "(MACHINE TIME: [format "%.2f" $mom_machine_time] MIN)"
puts $ofile " "


set 5axis 0
set G43_f 0

set buf ""

while { [gets $ifile buf] > 0 } {
		puts $ofile $buf
}

if {$use_attributes == 1} {
puts $ofile "(@MAZATROL_MATRIX+0+1+0,0,0\12+$mom_sys_min_travel(0),$mom_sys_max_travel(0)*$mom_sys_min_travel(1),$mom_sys_max_travel(1)*$mom_sys_min_travel(2),$mom_sys_max_travel(2)+1,1,1+0*0"
}
	close $ifile
	close $ofile
	MOM_remove_file $tmp_file_name
	MOM_open_output_file $ptp_file_name
}


#=============================================================
proc PB_CMD_reset_lathe_post { } {
#=============================================================
  global mom_kin_machine_type

   if { $mom_kin_machine_type == "lathe" } {
      set mom_kin_machine_type "3_axis_mill"
      MOM_reload_kinematics

      set mom_kin_machine_type "lathe"
      MOM_reload_kinematics
   }
}


#=============================================================
proc PB_CMD_set_Range { } {
#=============================================================
global mom_spindle_speed mom_spindle_maximum_rpm

if {($mom_spindle_speed > 1100)} {set range 239}
if {($mom_spindle_speed <= 1100)} {set range 238}


#VSEGDA M239!!!!!!!!!!!!!!!!!!!!!!!!!!
#MOM_output_literal "M239"

if [info exist mom_spindle_maximum_rpm] {

if {$mom_spindle_maximum_rpm == 0} {set mom_spindle_maximum_rpm 1600}

}
}


#=============================================================
proc PB_CMD_set_csys { } {
#=============================================================
# This custom command is provided as the default to nullify
# the same command in a linked post that may have been
# imported from pb_cmd_coordinate_system_rotation.tcl.
#


global mom_input_zero_int path mom_P_num
set mom_input_zero_int "G54"
}


#=============================================================
proc PB_CMD_set_lathe_arc_plane { } {
#=============================================================
# This custom command will switch the valid arc plane for lathes
# from XY to ZX when the users selects the ZX lathe work
# plane in the MCS dialog.  If this custom command is not used then
# all arcs will be output as linear moves when the user selects the 
# ZX Plane.
#
# Post Builder v3.0.1 executes this custom command automatically
# for all lathe posts.

  global mom_lathe_spindle_axis
  global mom_kin_arc_valid_plane

   if { [info exists mom_lathe_spindle_axis] && $mom_lathe_spindle_axis == "MCSZ" } {
      set mom_kin_arc_valid_plane  "ZX" 
      MOM_reload_kinematics
   }
}


#=============================================================
proc PB_CMD_set_modes { } {
#=============================================================
global mom_which_turret mom_right_spindle mom_which_spindle
global mom_sys_spindle_direction_code(CCLW) mom_sys_spindle_direction_code(CLW)
global mom_P

	MOM_output_literal "M202"
	EXTN_rtv_mom_cp_part_attr "20"
}


#=============================================================
proc PB_CMD_set_modes_end { } {
#=============================================================
global mom_which_turret mom_right_spindle

MOM_output_literal "G49"
MOM_output_literal "G0 B0"
MOM_output_literal "M5 M9 M286"
MOM_output_literal "M30"
}


#=============================================================
proc PB_CMD_set_modes_in_start { } {
#=============================================================
global mom_which_turret mom_right_spindle mom_which_spindle
global mom_sys_spindle_direction_code(CCLW) mom_sys_spindle_direction_code(CLW)
global mom_P mom_synch_spindle



global mom_which_turret mom_right_spindle mom_which_spindle
global mom_sys_spindle_direction_code(CCLW) mom_sys_spindle_direction_code(CLW)
global mom_P mom_sys_leader First_oper synch_mode P_mode

   if {[info exist mom_which_spindle]} {
	if {$mom_which_spindle == "ЛЕВЫЙ" } {
if {$synch_mode == 0} {

}
set P_mode 1
MOM_output_literal "G90"
MOM_output_literal "M901"
MOM_output_literal "M202"

if [info exist mom_synch_spindle] {
MOM_output_literal "M111"
MOM_output_literal "M300"
MOM_output_literal "M511"
}

MOM_output_literal "G54"
} elseif {$mom_which_spindle == "ПРАВЫЙ" } {
set P_mode 2
MOM_output_literal "G90"
MOM_output_literal "M902"
MOM_output_literal "M302"
MOM_output_literal "G55"
	}
   } else {
if {$synch_mode == 0} {

}

set P_mode 1
MOM_output_literal "M901"
MOM_output_literal "M202"

if [info exist mom_synch_spindle] {
MOM_output_literal "M111"
MOM_output_literal "M300"
MOM_output_literal "M511"
}


MOM_output_literal "G54"
   }

set First_oper 1
}


#=============================================================
proc PB_CMD_spindle_rpm_add { } {
#=============================================================
global global mom_which_spindle spindle_rpm_add mom_spindle_mode


if {$spindle_rpm_add == 0} {
PB_CMD_set_Range
   if {[info exist mom_which_spindle]} {
	if {$mom_which_spindle == "ЛЕВЫЙ"} {
         if {$mom_spindle_mode == "SFM" || $mom_spindle_mode == "SMM"} {
	    MOM_force once M_spindle S G_spin R
            MOM_do_template spindle_max_rpm
         }
	MOM_force once M_spindle S G_spin R
	MOM_do_template spindle_rpm
	} elseif {$mom_which_spindle == "ПРАВЫЙ"} {
         if {$mom_spindle_mode == "SFM" || $mom_spindle_mode == "SMM"} {
	    MOM_force once M_spindle S G_spin R
            MOM_do_template spindle_max_rpm_side2
         }
	MOM_force once M_spindle S G_spin R
	MOM_do_template spindle_rpm_side2
	}
   } else {
         if {$mom_spindle_mode == "SFM" || $mom_spindle_mode == "SMM"} {
	    MOM_force once M_spindle S G_spin R
            MOM_do_template spindle_max_rpm
         }
	MOM_force once M_spindle S G_spin R
	MOM_do_template spindle_rpm
   }
set spindle_rpm_add 1
}
}


#=============================================================
proc PB_CMD_spindle_sfm_prestart { } {
#=============================================================
  global mom_spindle_mode

   if { ![string compare "SFM" $mom_spindle_mode] || ![string compare "SMM" $mom_spindle_mode] } {
      MOM_force once G_spin M_spindle S
      MOM_do_template spindle_rpm_preset
   }
}


#=============================================================
proc PB_CMD_start_from_mill { } {
#=============================================================

MOM_set_seq_on
MOM_output_literal "G10 L2 P0 C0"
MOM_output_literal "G40 G17 G90"
PB_CMD_OTSKOK
MOM_output_literal "G10.9X0"
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
proc PB_CMD_tool_change_modes { } {
#=============================================================
global mom_which_turret mom_right_spindle mom_tool_holder_orient_angle RAD2DEG
global mom_tool_adjust_register mom_angle_tool_new mom_input_zero_int mom_tool_description
global orient_marker mom_tool_catalog_number mom_operation_type mom_tool_type
global mom_tool_adjust_register mom_tool_type mom_thread_orientation mom_warning_info oper

PB_CMD_check_tools
MOM_force once T M



if {$mom_tool_type == "Threading Tool-Standard" } {
if ![info exist mom_thread_orientation] {
	set mom_warning_info "В операции ''$oper'' используется резьбовой резец. Для него требуется " 
	append mom_warning_info "\n "
	append mom_warning_info "\n явным образом задать ориентацию в шпинделе при смене инструмента" 
	append mom_warning_info "\n "
	append mom_warning_info "\n Через ПП-команду - Ориентация резьбового резца!"
	MOM_output_to_listing_device $mom_warning_info 
	PB_CMD_Messages
	MOM_abort "Задайте ПП команду!!!!!!" 
	#set mom_angle_tool_new 0

} else {
	if {$mom_thread_orientation == "ПЛАСТИНА НА НАС 1 РЕЖИМ"} {
	set orient_marker 1
	} else {
	set orient_marker 2
	#MOM_output_literal "mom_thread_orientation = $mom_thread_orientation"
	}
}
}

if [info exist mom_tool_catalog_number] {
if {($mom_tool_catalog_number == "тяжелый") || ($mom_tool_catalog_number == "heavy")} { 
set orient_marker [expr $orient_marker +60]
}
}



if {$mom_operation_type == "Turn Centerline Drilling"} {
MOM_do_template auto_tool_change_drill
} else {
MOM_do_template auto_tool_change
}
set mom_angle_tool_new [format "%.3f" $mom_angle_tool_new]

PB_CMD_OTSKOK
EXTN_rtv_mom_cp_part_attr "18"

#MOM_output_literal "$mom_tool_description = $mom_tool_description !!!!!!!"
}


#=============================================================
proc PB_CMD_tool_changing_flag { } {
#=============================================================
global tool_changing 

set tool_changing 1

#MOM_output_literal "(TOOL CHANGE!!!!!!!!!!!!1)"
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
proc PB_CMD_tool_orientation_parametres { } {
#=============================================================
global mom_tool_orientation mom_tool_holder_orient_angle orient_marker
global mom_tool_insert_position Real_holder_pos RAD2DEG mom_tool_insert_position
global orient_marker

global mom_tool_adjust_register mom_tool_number

if {$mom_tool_adjust_register == 0} {
set mom_tool_adjust_register $mom_tool_number
}

if {![info exists mom_tool_holder_orient_angle]} {
set mom_tool_holder_orient_angle 0
}

if {![info exists mom_tool_insert_position]} {
set mom_tool_insert_position 1
}

if {![info exists mom_tool_orientation]} {
set mom_tool_orientation 0
}

set Real_holder_pos [expr ($mom_tool_holder_orient_angle - $mom_tool_orientation)*$RAD2DEG]

set mom_tool_holder_orient_angle [format "%.3f" [expr $mom_tool_holder_orient_angle*$RAD2DEG]]
set Real_holder_pos [format "%.3f" $Real_holder_pos]

#MOM_output_literal "Real_holder_pos=$Real_holder_pos "
#MOM_output_literal "mom_tool_holder_orient_angle=$mom_tool_holder_orient_angle "
#MOM_output_literal "mom_tool_insert_position=$mom_tool_insert_position "


if {$mom_tool_holder_orient_angle > 180} {
set mom_tool_holder_orient_angle  [expr $mom_tool_holder_orient_angle  - 360]
}

#MOM_output_literal "mom_tool_holder_orient_angle=$mom_tool_holder_orient_angle "
#MOM_output_literal "mom_tool_insert_position=$mom_tool_insert_position "

if {$mom_tool_insert_position == 1} {
	if {($mom_tool_holder_orient_angle > 60) && ($mom_tool_holder_orient_angle < 120) } {
		set orient_marker "01"
		#MOM_output_literal "UUUUUPS1 "
	}
	if {($mom_tool_holder_orient_angle == 60) || ($mom_tool_holder_orient_angle == 120) } {
		set orient_marker "01"
		#MOM_output_literal "UUUUUPS1 "
	}

	if {($mom_tool_holder_orient_angle > -30) && ($mom_tool_holder_orient_angle < 30)} {
		set orient_marker "00"
		#MOM_output_literal "UUUUUPS2 "
	}
	if {($mom_tool_holder_orient_angle == -30) || ($mom_tool_holder_orient_angle == 30)} {
		set orient_marker "00"
		#MOM_output_literal "UUUUUPS2 "
	}

} elseif {$mom_tool_insert_position == 2} {
	if {($mom_tool_holder_orient_angle > 60) && ($mom_tool_holder_orient_angle < 120)} {
		set orient_marker "14"
		#MOM_output_literal "UUUUUPS14 "
	}
	if {($mom_tool_holder_orient_angle == 60) || ($mom_tool_holder_orient_angle == 120)} {
		set orient_marker "14"
		#MOM_output_literal "UUUUUPS14 "
	}

	if {($mom_tool_holder_orient_angle > -30) && ($mom_tool_holder_orient_angle < 30)} {
		set orient_marker "13"
		#MOM_output_literal "UUUUUPS13 "
	}
	if {($mom_tool_holder_orient_angle == -30) || ($mom_tool_holder_orient_angle == 30)} {
		set orient_marker "13"
		#MOM_output_literal "UUUUUPS13 "
	}


}

#MOM_output_literal "Real=$Real_holder_pos "
}


#=============================================================
proc PB_CMD_tool_type_marker { } {
#=============================================================
global tool_type_marker mom_tool_cutcom_register mom_tool_adjust_register mom_tool_number
global orient_marker mom_use_a_axis mom_tool_type

if [info exist mom_use_a_axis] {
if {$mom_use_a_axis == 1} {
set orient_marker 2
} else {
set orient_marker 1
}
#unset mom_use_a_axis
}

#set orient_marker $mom_tool_cutcom_register
#MOM_output_literal "$mom_tool_cutcom_register"

if {$mom_tool_adjust_register == 0} {
set mom_tool_adjust_register $mom_tool_number
}

if {($mom_tool_type == "Grooving Tool-Standard")} {
	set orient_marker $mom_tool_adjust_register

	if [info exist mom_use_a_axis] {
		if {$mom_use_a_axis == 1} {
		set orient_marker [expr $orient_marker + 1]
		}
	}

	if [info exist mom_tool_catalog_number] {
		if {($mom_tool_catalog_number == "тяжелый") || ($mom_tool_catalog_number == "heavy")} { 
		set orient_marker [expr $orient_marker +60]
		}
	}
}
}


#=============================================================
proc PB_CMD_ude { } {
#=============================================================
global mom_otvod_babki_in_feed mom_otvod_babki_in mom_tool_number
global mom_podvod_babki_in mom_podvod_babki_in_feed mom_flag_bottom_turret
global mom_number_tool mom_tool_number mom_tool_adjust_register mom_P mom_which_turret
global tool_changing approach mom_which_sideturret lunet_turned 

PB_CMD_LUNET

if [info exist mom_number_tool] {

set tool_changing 1
#set approach 1

unset mom_number_tool

}


global mom_lunet_on

MOM_output_literal "M09"
if {$lunet_turned == 1} {
MOM_output_literal "M286"
}
}


#=============================================================
proc PB_CMD_vars_in_end { } {
#=============================================================



global spindle_rpm_add
set spindle_rpm_add 0

global spindle_is_out
set spindle_is_out 0

global tool_init
set tool_init 0

global mom_angle_tool mom_angle_tool_new oper mom_warning_info mom_tool_holder_orient_angle mom_operation_type
global mom_use_turn_holder  prev_angle_tool mom_operation_type

#if [info exist mom_use_turn_holder] {
#if {$mom_use_turn_holder != "Yes"} {
if {$mom_operation_type != "Lathe Machine Control"} {
if ![info exist mom_angle_tool_new] {
if {$mom_operation_type != "Turn Centerline Drilling"} {
	set mom_warning_info "В операции ''$oper'' не задан ни угол наклона державки, " 
	append mom_warning_info "\n "
	append mom_warning_info "\n\t ни угол наклона резца" 
	MOM_output_to_listing_device $mom_warning_info 
	PB_CMD_Messages
	MOM_abort "Задайте угол наклона резца!!!!!!" 
}
}
}
#}
#}


if [info exist mom_angle_tool_new] {
set prev_angle_tool $mom_angle_tool_new
unset mom_angle_tool_new
}
if [info exist mom_angle_tool] {
unset mom_angle_tool
}
if [info exist mom_tool_holder_orient_angle] {
unset mom_tool_holder_orient_angle
}


global prev_mom_use_a_axis mom_use_a_axis
if [info exist mom_use_a_axis] {
set prev_mom_use_a_axis $mom_use_a_axis
}

global coolant_inited mom_coolant_status
set coolant_inited 0


global mom_next_oper_has_tool_change mom_coolant_status

if {$mom_next_oper_has_tool_change == "YES"} {
set mom_coolant_status UNDEFINED
MOM_reload_variable -a mom_coolant_status
MOM_coolant_off
}

global first_groove
set first_groove 1

global mom_thread_orientation
if [info exist mom_thread_orientation] {
unset mom_thread_orientation
}


global mom_alt_X mom_alt_Y mom_alt_Z mom_current_oper_is_last_oper_in_program
if {$mom_current_oper_is_last_oper_in_program == "NO"} {
if [info exist mom_alt_X] {
#unset mom_alt_X
#unset mom_alt_Y
#unset mom_alt_Z
}
}
MOM_output_literal "M01"
}


#=============================================================
proc PB_CMD_very_need { } {
#=============================================================
#EXTN_rtv_mom_cp_part_attr "FOR_TURN"
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
proc LIMIT_ANGLE { a } {
#=============================================================

   while { $a < 0.0 }    { set a [expr $a + 360.0] }
   while { $a >= 360.0 } { set a [expr $a - 360.0] }

return $a
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


