############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project testHLS2
set_top MLP
add_files ../../../../HWSWAI/HLS/SampleDatasetMLP.cpp
add_files -tb ../../../../HWSWAI/HLS/SampleDatasetMLPTest.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu3eg-sbva484-2-i}
create_clock -period 10 -name default
config_export -format ip_catalog -output C:/Users/xingy/HWSWAI/HLS -rtl verilog -vivado_clock 10
source "./testHLS2/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow impl -rtl verilog -format ip_catalog -output C:/Users/xingy/HWSWAI/HLS
