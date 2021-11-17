#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sat Nov 13 13:52:47 2021                
#                                                     
#######################################################

#@(#)CDS: Innovus v17.11-s080_1 (64bit) 08/04/2017 11:13 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 17.11-s080_1 NR170721-2155/17_11-UB (database version 2.30, 390.7.1) {superthreading v1.44}
#@(#)CDS: AAE 17.11-s034 (64bit) 08/04/2017 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 17.11-s053_1 () Aug  1 2017 23:31:41 ( )
#@(#)CDS: SYNTECH 17.11-s012_1 () Jul 21 2017 02:29:12 ( )
#@(#)CDS: CPE v17.11-s095
#@(#)CDS: IQRC/TQRC 16.1.1-s215 (64bit) Thu Jul  6 20:18:10 PDT 2017 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getDrawView
loadWorkspace -name Physical
win
set init_design_netlisttype verilog
set init_design_settop 1
set init_top_cell IIR_FILTER
set init_verilog ../netlist/synth_netlist.v
set init_lef_file /software/dk/nangate45/lef/NangateOpenCellLibrary.lef
set init_gnd_net VSS
set init_pwr_net VDD
set init_mmmc_file mmm_design.tcl
init_design
set init_design_netlisttype verilog
set init_design_settop 1
set init_top_cell IIR_FILTER
set init_verilog ../netlist/synth_netlist.v
set init_lef_file /software/dk/nangate45/lef/NangateOpenCellLibrary.lef
set init_gnd_net VSS
set init_pwr_net VDD
set init_mmmc_file mmm_design.tcl
init_design
set init_design_netlisttype verilog
set init_design_settop 1
set init_top_cell IIR_FILTER
set init_verilog ../netlist/synth_netlist.v
set init_lef_file /software/dk/nangate45/lef/NangateOpenCellLibrary.lef
set init_gnd_net VSS
set init_pwr_net VDD
set init_mmmc_file mmm_design.tcl
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -coreMarginsBy die -site FreePDK45_38x28_10R_NP_162NW_34O -r 1.0 0.6 5 5 5 5
uiSetTool select
getIoFlowFlag
fit
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top metal1 bottom metal1 left metal2 right metal2} -width {top 0.8 bottom 0.8 left 0.8 right 0.8} -spacing {top 0.8 bottom 0.8 left 0.5 right 0.5} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
selectWire 74.0650 1.3200 74.8650 73.1600 2 VSS
gui_select -rect {95.687 2.180 103.363 -1.953}
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal10(10) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal10(10) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal10(10) }
zoomIn
zoomIn
selectWire 5.1300 44.1550 71.2500 44.3250 1 VDD
deselectAll
selectWire 5.1300 45.5550 71.2500 45.7250 1 VSS
zoomSelected
zoomSelected
deselectAll
zoomSelected
selectWire 1.5150 1.3200 2.3150 73.1600 2 VSS
zoomSelected
deselectAll
gui_select -rect {72.687 58.501 3.759 17.338}
deselectAll
setPlaceMode -prerouteAsObs {1 2 3 4 5 6 7 8}
setPlaceMode -fp false
placeDesign
fit
selectInst mult_35/U496
zoomSelected
deselectAll
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
optDesign -postCTS -hold
getFillerMode -quiet
addFiller -cell FILLCELL_X8 FILLCELL_X4 FILLCELL_X32 FILLCELL_X2 FILLCELL_X16 FILLCELL_X1 -prefix FILLER
fit
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
setAnalysisMode -analysisType onChipVariation
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
optDesign -postRoute -hold
saveDesign IIR_FILTER.enc
getDrawView
setDrawView fplan
win
dumpToGIF snaps/ss_snap1.fplan.gif
getDrawView
setDrawView amoeba
win
dumpToGIF snaps/ss_snap1.amoeba.gif
getDrawView
setDrawView place
win
dumpToGIF snaps/ss_snap1.place.gif
checkPlace checkplace.ss.rpt
reset_parasitics
extractRC
rcOut -setload IIR_FILTER.setload -rc_corner my_rc
rcOut -setres IIR_FILTER.setres -rc_corner my_rc
rcOut -spf IIR_FILTER.spf -rc_corner my_rc
rcOut -spef IIR_FILTER.spef -rc_corner my_rc
gui_select -rect {28.226 65.213 22.468 61.081}
deselectAll
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix IIR_FILTER_postRoute -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -hold -pathReports -slackReports -numPaths 50 -prefix IIR_FILTER_preCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix IIR_FILTER_postRoute -outDir timingReports
verifyConnectivity -type all -error 1000 -warning 50
gui_select -rect {21.435 45.433 30.883 31.557}
gui_select -rect {27.488 37.314 25.716 35.247}
gui_select -rect {22.764 43.514 28.226 33.181}
gui_select -rect {40.626 41.300 43.135 38.790}
gui_select -rect {51.107 22.700 53.911 19.305}
gui_select -rect {31.768 31.557 33.245 29.638}
gui_select -rect {29.111 56.947 31.178 54.585}
gui_select -rect {49.188 49.566 54.206 45.581}
gui_select -rect {24.535 44.547 36.639 31.704}
deselectAll
selectInst mult_39/U97
gui_select -rect {30.735 42.776 49.925 29.343}
deselectAll
selectWire 38.4750 16.9400 38.6150 25.2000 4 mult_39/n573
gui_select -rect {28.669 40.118 48.597 26.538}
gui_select -rect {28.226 51.337 45.645 30.966}
gui_select -rect {38.854 31.852 19.221 42.628}
gui_select -rect {39.444 34.214 50.368 51.337}
gui_select -rect {28.078 49.271 52.287 22.109}
gui_select -rect {24.535 51.928 57.011 17.090}
gui_select -rect {14.350 61.081 62.030 12.514}
deselectAll
gui_select -rect {19.811 61.523 22.764 59.604}
deselectAll
selectVia 15.7950 62.1600 15.9350 62.3000 2 mult_38/n690
deselectAll
gui_select -rect {11.545 65.066 63.949 12.219}
deselectAll
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
gui_select -rect {36.788 38.200 45.645 24.767}
gui_select -rect {25.421 47.943 46.530 25.948}
deselectAll
gui_select -rect {23.502 44.843 47.120 21.224}
gui_select -rect {47.120 21.224 22.616 44.252}
deselectAll
selectWire 5.1300 44.1550 71.2500 44.3250 1 VDD
gui_select -rect {27.044 49.123 30.440 45.728}
deselectAll
selectWire 30.2700 45.6750 33.5700 45.7450 3 {w[1]}
deselectAll
selectInst mult_38/U448
gui_select -rect {-1.151 73.481 2.540 67.133}
deselectAll
gui_select -rect {6.378 67.428 -3.513 75.104}
deselectAll
gui_select -rect {-1.889 74.071 5.050 69.642}
deselectAll
selectWire 2.8150 2.9200 3.6150 71.5600 2 VDD
deselectAll
selectWire 2.8150 70.7600 73.5650 71.5600 1 VDD
deselectAll
gui_select -rect {-4.989 75.400 83.730 69.790}
deselectAll
gui_select -rect {-9.713 71.413 -3.955 74.514}
gui_select -rect {-3.955 74.514 77.825 69.790}
deselectAll
gui_select -rect {82.401 73.332 -2.332 69.347}
deselectAll
gui_select -rect {-2.922 74.662 86.092 70.380}
gui_select -rect {41.216 75.104 -6.612 70.380}
deselectAll
gui_select -rect {-6.612 70.380 6.526 76.285}
gui_select -rect {-1.298 76.138 5.050 69.938}
deselectAll
gui_select -rect {-2.479 7.052 4.902 -0.624}
deselectAll
gui_select -rect {74.578 2.033 71.921 4.395}
deselectAll
gui_select -rect {76.792 0.410 73.544 2.919}
deselectAll
gui_select -rect {-20.931 55.324 -13.403 46.023}
gui_select -rect {-13.403 46.023 -27.427 59.604}
gui_select -rect {-20.193 50.747 -17.389 47.943}
gui_select -rect {-17.389 47.943 -27.574 58.718}
gui_select -rect {3.425 57.242 81.663 50.157}
deselectAll
gui_select -rect {67.197 54.733 4.754 51.928}
deselectAll
gui_select -rect {-14.436 57.242 88.749 54.438}
deselectAll
gui_select -rect {-4.841 33.328 85.353 29.490}
deselectAll
gui_select -rect {64.983 63.590 71.625 70.675}
deselectAll
gui_select -rect {4.164 69.790 11.693 62.261}
gui_select -rect {61.883 4.100 71.330 14.876}
gui_select -rect {4.754 4.100 13.168 15.171}
deselectAll
reportGateCount -level 5 -limit 100 -outfile IIR_FILTER.gateCount
saveNetlist IIR_FILTER.v
all_hold_analysis_views 
all_setup_analysis_views 
write_sdf  -ideal_clock_network IIR_FILTER.sdf
gui_select -rect {-37.465 53.109 102.773 46.614}
gui_select -rect {103.806 53.847 -15.764 45.433}
deselectAll
reset_parasitics
extractRC
rcOut -setload IIR_FILTER.setload -rc_corner my_rc
rcOut -setres IIR_FILTER.setres -rc_corner my_rc
rcOut -spf IIR_FILTER.spf -rc_corner my_rc
rcOut -spef IIR_FILTER.spef -rc_corner my_rc
set_power_analysis_mode -reset
set_power_analysis_mode -method static -corner max -create_binary_db true -write_static_currents true -honor_negative_energy true -ignore_control_signals true
set_power_output_dir -reset
set_power_output_dir ./
set_default_switching_activity -reset
set_default_switching_activity -input_activity 0.2 -period 10.0
read_activity_file -reset
read_activity_file -format VCD -scope /tb_fir/UUT -start {} -end {} -block {} ../vcd/IIR_syn.vcd
set_power -reset
set_powerup_analysis -reset
set_dynamic_power_simulation -reset
report_power -rail_analysis_format VS -outfile .//IIR_FILTER.rpt
report_power -outfile power_report.txt -sort { total }
gui_select -rect {-3.217 47.205 36.345 29.195}
deselectAll
