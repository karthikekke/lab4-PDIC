#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Thu May  4 15:08:05 2023                
#                                                     
#######################################################

#@(#)CDS: Innovus v19.16-s053_1 (64bit) 08/31/2020 13:16 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 19.16-s053_1 NR200827-1939/19_16-UB (database version 18.20, 510.7.1) {superthreading v1.53}
#@(#)CDS: AAE 19.16-s019 (64bit) 08/31/2020 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 19.16-s019_1 () Aug 22 2020 00:37:42 ( )
#@(#)CDS: SYNTECH 19.16-s010_1 () Aug 17 2020 09:10:13 ( )
#@(#)CDS: CPE v19.16-s038
#@(#)CDS: IQuantus/TQuantus 19.1.3-s268 (64bit) Mon Aug 10 22:57:12 PDT 2020 (Linux 2.6.32-431.11.2.el6.x86_64)

alias fs set top_design fifo1_sram
alias f set top_design fifo1
alias o set top_design ORCA_TOP
alias e set top_design ExampleRocketSystem
set_table_style -name report_timing -max_widths { 8,6,23,70} -no_frame_fix_width
set_global report_timing_format  {delay arrival slew load fanout cell hpin}
set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
o
set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
set search_path {}
set init_lef_file {../../cadence_cap_tech/tech.lef saed32sram.lef saed32nm_lvt_1p9m.lef saed32nm_hvt_1p9m.lef saed32nm_rvt_1p9m.lef}
set init_mmmc_file mmmc.tcl
set init_design_netlisttype Verilog
set init_verilog ../../syn/outputs/ORCA_TOP.genus_phys.vg
set init_top_cell ORCA_TOP
set init_pwr_net VDD
set init_gnd_net VSS
init_design
defIn ../outputs/ORCA_TOP.floorplan.innovus.def
add_tracks -honor_pitch
defIn ../../syn/outputs/ORCA_TOP.genus.scan.def
read_power_intent ../../syn/outputs/ORCA_TOP.genus.upf -1801
commit_power_intent
modifyPowerDomainAttr PD_RISC_CORE -box 505 10 810 265
setNanoRouteMode -drouteEndIteration 10
set_ccopt_property target_max_trans 0.3ns
setNanoRouteMode -drouteEndIteration 5
setNanoRouteMode -routeWithViaOnlyForMacroCellPin false
setNanoRouteMode -routeWithViaOnlyForStandardCellPin 1:1
setOptMode -usefulSkew false
setOptMode -usefulSkewCCOpt none
setOptMode -usefulSkewPostRoute false
setOptMode -usefulSkewPreCTS false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
setDontUse *DELLN* true
createBasicPathGroups -expanded
saveDesign ORCA_TOP_floorplan.innovus
setOptMode -usefulSkew false
setOptMode -usefulSkewCCOpt none
setOptMode -usefulSkewPostRoute false
setOptMode -usefulSkewPreCTS false
create_library_set -name worst_libs_vddh -timing {
update_delay_corner -name worst_corner -power_domain PD_RISC_CORE -library_set worst_libs_vddh
setEcoMode -batchMode true
ecoChangeCell -inst Xecutng_Instrn_0__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst Xecutng_Instrn_1__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst Xecutng_Instrn_2__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst Xecutng_Instrn_3__UPF_LS -cell LSDNSSX4_LVT
ecoChangeCell -inst Xecutng_Instrn_4__UPF_LS -cell LSDNSSX4_LVT
ecoChangeCell -inst Xecutng_Instrn_5__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst Xecutng_Instrn_6__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst Xecutng_Instrn_7__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst Xecutng_Instrn_8__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst Xecutng_Instrn_9__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst Xecutng_Instrn_10__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst Xecutng_Instrn_11__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst Xecutng_Instrn_12__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst Xecutng_Instrn_14__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst Xecutng_Instrn_15__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst Xecutng_Instrn_16__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst Xecutng_Instrn_17__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst Xecutng_Instrn_18__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst Xecutng_Instrn_19__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst Xecutng_Instrn_20__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst Xecutng_Instrn_21__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst Xecutng_Instrn_22__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst Xecutng_Instrn_23__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst Xecutng_Instrn_24__UPF_LS -cell LSDNSSX4_LVT
ecoChangeCell -inst Xecutng_Instrn_25__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst Xecutng_Instrn_26__UPF_LS -cell LSDNSSX4_LVT
ecoChangeCell -inst Xecutng_Instrn_27__UPF_LS -cell LSDNSSX4_LVT
ecoChangeCell -inst Xecutng_Instrn_28__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst Xecutng_Instrn_30__UPF_LS -cell LSDNSSX4_LVT
ecoChangeCell -inst Xecutng_Instrn_31__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst PSW_2__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst PSW_3__UPF_LS -cell LSDNSSX2_LVT
ecoChangeCell -inst PSW_4__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst PSW_6__UPF_LS -cell LSDNSSX4_LVT
ecoChangeCell -inst PSW_8__UPF_LS -cell LSDNSSX4_LVT
ecoChangeCell -inst PSW_9__UPF_LS -cell LSDNSSX4_LVT
ecoChangeCell -inst PSW_10__UPF_LS -cell LSDNSSX4_LVT
ecoChangeCell -inst RESULT_DATA_0__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst RESULT_DATA_1__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst RESULT_DATA_2__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst RESULT_DATA_3__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst RESULT_DATA_4__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst RESULT_DATA_5__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst RESULT_DATA_6__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst RESULT_DATA_7__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst RESULT_DATA_8__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst RESULT_DATA_9__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst RESULT_DATA_10__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst RESULT_DATA_11__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst RESULT_DATA_12__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst RESULT_DATA_13__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst RESULT_DATA_14__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst RESULT_DATA_15__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst EndOfInstrn_UPF_LS -cell LSDNSSX2_LVT
ecoChangeCell -inst OUT_VALID_UPF_LS -cell LSDNSSX4_LVT
ecoChangeCell -inst PSW_7__UPF_LS -cell LSDNSSX4_LVT
ecoChangeCell -inst Xecutng_Instrn_13__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst Xecutng_Instrn_29__UPF_LS -cell LSDNSSX8_LVT
ecoChangeCell -inst STACK_FULL_UPF_LS -cell LSDNSSX2_LVT
ecoChangeCell -inst Rd_Instr_UPF_LS -cell LSDNSSX2_LVT
ecoChangeCell -inst PSW_5__UPF_LS -cell LSDNSSX4_LVT
setEcoMode -batchMode false
place_opt_design
redirect -tee ../reports/ORCA_TOP.innovus.place.congestion.2d.rpt { reportCongestion -hotSpot -overflow -includeBlockage }
redirect -tee ../reports/ORCA_TOP.innovus.place.congestion.3d.rpt { reportCongestion -hotSpot -overflow -includeBlockage -3d }
timeDesign -preCTS -prefix place -outDir ../reports/ORCA_TOP.innovus -expandedViews
redirect -tee ../reports/ORCA_TOP.innovus.place.density.rpt { reportDensityMap }
summaryReport -noHtml -outfile ../reports/ORCA_TOP.innovus.place.summary.rpt
saveDesign ORCA_TOP_place.innovus
setDesignMode -process 28
setOptMode -usefulSkew false
setOptMode -usefulSkewCCOpt none
setOptMode -usefulSkewPostRoute false
setOptMode -usefulSkewPreCTS false
set_ccopt_property update_io_latency false
set_ccopt_property routing_top_min_fanout 10000
add_ndr -name CTS_RULE -spacing {M1 0.1 M2:M8 0.112 } -width_multiplier {M3:M8 2 } -generate_via
create_route_type -name top_type -non_default_rule CTS_RULE -top_preferred_layer M8 -bottom_preferred_layer M7
set_ccopt_property -net_type top route_type top_type
create_route_type -name trunk_type -non_default_rule CTS_RULE -top_preferred_layer M6 -bottom_preferred_layer M5
set_ccopt_property -net_type trunk route_type trunk_type
setNanoRouteMode -droutePostRouteSpreadWire false
set_ccopt_property use_inverters false
set_ccopt_property buffer_cells [ get_db [get_lib_cells */NBUF*LVT* ] .base_name ]
ccopt_design
setAnalysisMode -analysisType onChipVariation
setAnalysisMode -cppr both
optDesign -postCTS -hold
report_ccopt_skew_groups -summary -file ../reports/ORCA_TOP.innovus.postcts.ccopt_skew_groups.rpt
report_ccopt_clock_trees -summary -file ../reports/ORCA_TOP.innovus.postcts.ccopt_clock_trees.rpt
timeDesign -postCTS -prefix postcts -outDir ../reports/ORCA_TOP.innovus -expandedViews
timeDesign -postCTS -hold -prefix postcts -outDir ../reports/ORCA_TOP.innovus -expandedViews
redirect -tee ../reports/ORCA_TOP.innovus.postcts.density.rpt { reportDensityMap }
summaryReport -noHtml -outfile ../reports/ORCA_TOP.innovus.postcts.summary.rpt
saveDesign ORCA_TOP_postcts.innovus
fit
setLayerPreference node_layer -isVisible 0
report_clocks 
report_clocks 
report_ccopt_clock_tree_structure
ctd_win -id ctd_window
ctd_win -id ctd_window
report_ccopt_clock_tree_structure
report_clock_timing -type summary 
report_clock_timing -type summary -early 
report_clock_timing -type summary 
report_clock_timing -type summary -early 
report_timing -path_group reg2reg -path_type full_clock -net -early
report_timing -path_group reg2reg -path_type full_clock -net 
report_timing -path_group reg2reg -path_type full_clock -net
report_timing -path_group reg2reg -path_type full_clock -net -early
ctd_win -id ctd_window
report_clock_timing -type summary 
report_clock_timing -type summary -early 
help early
man early
man -early
report_timing
