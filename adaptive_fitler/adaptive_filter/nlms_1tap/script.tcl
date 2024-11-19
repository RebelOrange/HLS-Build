############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project adaptive_filter
set_top nlms_module_3tap
add_files nlms.cpp
add_files fir_filter.h
add_files adaptive_filter.h
add_files -tb adaptive_filter_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "nlms_1tap" -flow_target vivado
set_part {xc7z020-clg484-3}
create_clock -period 5ns -name default
set_clock_uncertainty 0.05
#source "./adaptive_filter/nlms_1tap/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
