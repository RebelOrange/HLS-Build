############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project blind-axi-split
set_top blind_axi_split_module
add_files blind-axi-split.h
add_files blind-axi-split.cpp
add_files -tb dummy_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg484-3}
create_clock -period 10ns -name default
source "./blind-axi-split/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
