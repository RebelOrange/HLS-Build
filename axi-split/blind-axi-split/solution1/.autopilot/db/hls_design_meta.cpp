#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("in0_TDATA", 32, hls_in, 0, "axis", "in_data", 1),
	Port_Property("in0_TVALID", 1, hls_in, 3, "axis", "in_vld", 1),
	Port_Property("in0_TREADY", 1, hls_out, 3, "axis", "in_acc", 1),
	Port_Property("in0_TKEEP", 4, hls_in, 1, "axis", "in_data", 1),
	Port_Property("in0_TSTRB", 4, hls_in, 2, "axis", "in_data", 1),
	Port_Property("in0_TLAST", 1, hls_in, 3, "axis", "in_data", 1),
	Port_Property("out0_TDATA", 32, hls_out, 4, "axis", "out_data", 1),
	Port_Property("out0_TVALID", 1, hls_out, 7, "axis", "out_vld", 1),
	Port_Property("out0_TREADY", 1, hls_in, 7, "axis", "out_acc", 1),
	Port_Property("out0_TKEEP", 4, hls_out, 5, "axis", "out_data", 1),
	Port_Property("out0_TSTRB", 4, hls_out, 6, "axis", "out_data", 1),
	Port_Property("out0_TLAST", 1, hls_out, 7, "axis", "out_data", 1),
	Port_Property("out1_TDATA", 32, hls_out, 8, "axis", "out_data", 1),
	Port_Property("out1_TVALID", 1, hls_out, 11, "axis", "out_vld", 1),
	Port_Property("out1_TREADY", 1, hls_in, 11, "axis", "out_acc", 1),
	Port_Property("out1_TKEEP", 4, hls_out, 9, "axis", "out_data", 1),
	Port_Property("out1_TSTRB", 4, hls_out, 10, "axis", "out_data", 1),
	Port_Property("out1_TLAST", 1, hls_out, 11, "axis", "out_data", 1),
};
const char* HLS_Design_Meta::dut_name = "blind_axi_split_module";
