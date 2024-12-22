set moduleName nlms_module_3tap
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {nlms_module_3tap}
set C_modelType { void 0 }
set C_modelArgList {
	{ main_in_V_data_V int 32 regular {axi_s 0 volatile  { main_in Data } }  }
	{ main_in_V_keep_V int 4 regular {axi_s 0 volatile  { main_in Keep } }  }
	{ main_in_V_strb_V int 4 regular {axi_s 0 volatile  { main_in Strb } }  }
	{ main_in_V_last_V int 1 regular {axi_s 0 volatile  { main_in Last } }  }
	{ aux_in_V_data_V int 32 regular {axi_s 0 volatile  { aux_in Data } }  }
	{ aux_in_V_keep_V int 4 regular {axi_s 0 volatile  { aux_in Keep } }  }
	{ aux_in_V_strb_V int 4 regular {axi_s 0 volatile  { aux_in Strb } }  }
	{ aux_in_V_last_V int 1 regular {axi_s 0 volatile  { aux_in Last } }  }
	{ output_V_data_V int 32 regular {axi_s 1 volatile  { output_r Data } }  }
	{ output_V_keep_V int 4 regular {axi_s 1 volatile  { output_r Keep } }  }
	{ output_V_strb_V int 4 regular {axi_s 1 volatile  { output_r Strb } }  }
	{ output_V_last_V int 1 regular {axi_s 1 volatile  { output_r Last } }  }
	{ mu int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "main_in_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "main_in_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "main_in_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "main_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "aux_in_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aux_in_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "aux_in_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "aux_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "output_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mu", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ main_in_TDATA sc_in sc_lv 32 signal 0 } 
	{ main_in_TVALID sc_in sc_logic 1 invld 3 } 
	{ main_in_TREADY sc_out sc_logic 1 inacc 3 } 
	{ main_in_TKEEP sc_in sc_lv 4 signal 1 } 
	{ main_in_TSTRB sc_in sc_lv 4 signal 2 } 
	{ main_in_TLAST sc_in sc_lv 1 signal 3 } 
	{ aux_in_TDATA sc_in sc_lv 32 signal 4 } 
	{ aux_in_TVALID sc_in sc_logic 1 invld 7 } 
	{ aux_in_TREADY sc_out sc_logic 1 inacc 7 } 
	{ aux_in_TKEEP sc_in sc_lv 4 signal 5 } 
	{ aux_in_TSTRB sc_in sc_lv 4 signal 6 } 
	{ aux_in_TLAST sc_in sc_lv 1 signal 7 } 
	{ output_r_TDATA sc_out sc_lv 32 signal 8 } 
	{ output_r_TVALID sc_out sc_logic 1 outvld 11 } 
	{ output_r_TREADY sc_in sc_logic 1 outacc 11 } 
	{ output_r_TKEEP sc_out sc_lv 4 signal 9 } 
	{ output_r_TSTRB sc_out sc_lv 4 signal 10 } 
	{ output_r_TLAST sc_out sc_lv 1 signal 11 } 
	{ mu sc_in sc_lv 32 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "main_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "main_in_V_data_V", "role": "default" }} , 
 	{ "name": "main_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "main_in_V_last_V", "role": "default" }} , 
 	{ "name": "main_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "main_in_V_last_V", "role": "default" }} , 
 	{ "name": "main_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "main_in_V_keep_V", "role": "default" }} , 
 	{ "name": "main_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "main_in_V_strb_V", "role": "default" }} , 
 	{ "name": "main_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "main_in_V_last_V", "role": "default" }} , 
 	{ "name": "aux_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aux_in_V_data_V", "role": "default" }} , 
 	{ "name": "aux_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "aux_in_V_last_V", "role": "default" }} , 
 	{ "name": "aux_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "aux_in_V_last_V", "role": "default" }} , 
 	{ "name": "aux_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aux_in_V_keep_V", "role": "default" }} , 
 	{ "name": "aux_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aux_in_V_strb_V", "role": "default" }} , 
 	{ "name": "aux_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aux_in_V_last_V", "role": "default" }} , 
 	{ "name": "output_r_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_V_data_V", "role": "default" }} , 
 	{ "name": "output_r_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_V_last_V", "role": "default" }} , 
 	{ "name": "output_r_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_V_last_V", "role": "default" }} , 
 	{ "name": "output_r_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_V_keep_V", "role": "default" }} , 
 	{ "name": "output_r_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_V_strb_V", "role": "default" }} , 
 	{ "name": "output_r_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_last_V", "role": "default" }} , 
 	{ "name": "mu", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mu", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158"],
		"CDFG" : "nlms_module_3tap",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "37",
		"VariableLatency" : "0", "ExactLatency" : "102", "EstimateLatencyMin" : "102", "EstimateLatencyMax" : "102",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "main_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "main_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "main_in_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "main_in_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "main_in_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "aux_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aux_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aux_in_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "aux_in_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "aux_in_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "output_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "mu", "Type" : "None", "Direction" : "I"},
			{"Name" : "lms_aux_reg_M_real_V_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_aux_reg_M_imag_V_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_weights_real_V_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_weights_imag_V_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_aux_reg_M_real_V_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_aux_reg_M_imag_V_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_weights_real_V_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_weights_imag_V_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_aux_reg_M_real_V_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_aux_reg_M_imag_V_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_weights_real_V_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_weights_imag_V_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_aux_reg_M_real_V_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_aux_reg_M_imag_V_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_weights_real_V_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_weights_imag_V_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_aux_reg_M_real_V_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_aux_reg_M_imag_V_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_weights_real_V_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_weights_imag_V_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_aux_reg_M_real_V_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_aux_reg_M_imag_V_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_weights_real_V_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_weights_imag_V_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_aux_reg_M_real_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_aux_reg_M_imag_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_weights_real_V_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_weights_imag_V_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_aux_reg_M_real_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_aux_reg_M_imag_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_weights_real_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_weights_imag_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_aux_reg_M_real_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_aux_reg_M_imag_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_weights_real_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_weights_imag_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_aux_reg_M_real_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_aux_reg_M_imag_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_weights_real_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_weights_imag_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_weights_real_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_weights_imag_V_0", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_79_3_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_65s_64ns_64_69_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_79_3_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_79_3_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_79_3_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_79_3_1_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U20", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U21", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U22", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_79_3_1_U23", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U24", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U25", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U26", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_79_3_1_U27", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U28", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U29", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U30", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_79_3_1_U31", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U32", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U33", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U34", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_79_3_1_U35", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U36", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U37", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U38", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_79_3_1_U39", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U40", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U41", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U42", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_79_3_1_U43", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U44", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U45", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U46", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U47", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U48", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U49", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U50", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U51", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U52", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U53", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U54", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U55", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U56", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U57", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U58", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U59", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U60", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U61", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U62", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U63", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U64", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U65", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U66", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U67", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U68", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U69", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U70", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U71", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U72", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U73", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U74", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U75", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U76", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U77", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U78", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U79", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U80", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U81", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U82", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U83", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U84", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U85", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_63ns_32ns_95_3_1_U86", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_95ns_81s_175_3_1_U87", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_95ns_80s_175_3_1_U88", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_95ns_81s_175_3_1_U89", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_95ns_80s_175_3_1_U90", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_95ns_81s_175_3_1_U91", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_95ns_80s_175_3_1_U92", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_95ns_81s_175_3_1_U93", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_95ns_80s_175_3_1_U94", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_95ns_81s_175_3_1_U95", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_95ns_80s_175_3_1_U96", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_95ns_81s_175_3_1_U97", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_95ns_80s_175_3_1_U98", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_95ns_81s_175_3_1_U99", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_95ns_80s_175_3_1_U100", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_95ns_81s_175_3_1_U101", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_95ns_80s_175_3_1_U102", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_95ns_81s_175_3_1_U103", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_95ns_80s_175_3_1_U104", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_95ns_81s_175_3_1_U105", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_95ns_80s_175_3_1_U106", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_175s_175ns_175_2_1_U107", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_175s_175ns_175_2_1_U108", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_175s_175ns_175_2_1_U109", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_175s_175ns_175_2_1_U110", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_175s_175ns_175_2_1_U111", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_175s_175ns_175_2_1_U112", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_175s_175ns_175_2_1_U113", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_175s_175ns_175_2_1_U114", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_175s_175ns_175_2_1_U115", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_175s_175ns_175_2_1_U116", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_175s_175ns_175_2_1_U117", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_175s_175ns_175_2_1_U118", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_175s_175ns_175_2_1_U119", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_175s_175ns_175_2_1_U120", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_175s_175ns_175_2_1_U121", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_175s_175ns_175_2_1_U122", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_175s_175ns_175_2_1_U123", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_175s_175ns_175_2_1_U124", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_175s_175ns_175_2_1_U125", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_175s_175ns_175_2_1_U126", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U127", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U128", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U129", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U130", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U131", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U132", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U133", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_32_4_1_U134", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_32_4_1_U135", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U136", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_32_4_1_U137", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_32_4_1_U138", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_32_4_1_U139", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32ns_32_4_1_U140", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_32_4_1_U141", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_32_4_1_U142", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_32_4_1_U143", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32ns_32_4_1_U144", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32ns_32_4_1_U145", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32ns_32_4_1_U146", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_main_in_V_data_V_U", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_main_in_V_keep_V_U", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_main_in_V_strb_V_U", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_main_in_V_last_V_U", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_aux_in_V_data_V_U", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_aux_in_V_keep_V_U", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_aux_in_V_strb_V_U", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_aux_in_V_last_V_U", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_output_V_data_V_U", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_output_V_keep_V_U", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_output_V_strb_V_U", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_output_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	nlms_module_3tap {
		main_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		main_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		main_in_V_strb_V {Type I LastRead 0 FirstWrite -1}
		main_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		aux_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		aux_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		aux_in_V_strb_V {Type I LastRead 0 FirstWrite -1}
		aux_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		output_V_data_V {Type O LastRead -1 FirstWrite 92}
		output_V_keep_V {Type O LastRead -1 FirstWrite 92}
		output_V_strb_V {Type O LastRead -1 FirstWrite 92}
		output_V_last_V {Type O LastRead -1 FirstWrite 92}
		mu {Type I LastRead 36 FirstWrite -1}
		lms_aux_reg_M_real_V_9 {Type IO LastRead -1 FirstWrite -1}
		lms_aux_reg_M_imag_V_9 {Type IO LastRead -1 FirstWrite -1}
		lms_weights_real_V_10 {Type IO LastRead -1 FirstWrite -1}
		lms_weights_imag_V_10 {Type IO LastRead -1 FirstWrite -1}
		lms_aux_reg_M_real_V_8 {Type IO LastRead -1 FirstWrite -1}
		lms_aux_reg_M_imag_V_8 {Type IO LastRead -1 FirstWrite -1}
		lms_weights_real_V_9 {Type IO LastRead -1 FirstWrite -1}
		lms_weights_imag_V_9 {Type IO LastRead -1 FirstWrite -1}
		lms_aux_reg_M_real_V_7 {Type IO LastRead -1 FirstWrite -1}
		lms_aux_reg_M_imag_V_7 {Type IO LastRead -1 FirstWrite -1}
		lms_weights_real_V_8 {Type IO LastRead -1 FirstWrite -1}
		lms_weights_imag_V_8 {Type IO LastRead -1 FirstWrite -1}
		lms_aux_reg_M_real_V_6 {Type IO LastRead -1 FirstWrite -1}
		lms_aux_reg_M_imag_V_6 {Type IO LastRead -1 FirstWrite -1}
		lms_weights_real_V_7 {Type IO LastRead -1 FirstWrite -1}
		lms_weights_imag_V_7 {Type IO LastRead -1 FirstWrite -1}
		lms_aux_reg_M_real_V_5 {Type IO LastRead -1 FirstWrite -1}
		lms_aux_reg_M_imag_V_5 {Type IO LastRead -1 FirstWrite -1}
		lms_weights_real_V_6 {Type IO LastRead -1 FirstWrite -1}
		lms_weights_imag_V_6 {Type IO LastRead -1 FirstWrite -1}
		lms_aux_reg_M_real_V_4 {Type IO LastRead -1 FirstWrite -1}
		lms_aux_reg_M_imag_V_4 {Type IO LastRead -1 FirstWrite -1}
		lms_weights_real_V_5 {Type IO LastRead -1 FirstWrite -1}
		lms_weights_imag_V_5 {Type IO LastRead -1 FirstWrite -1}
		lms_aux_reg_M_real_V_3 {Type IO LastRead -1 FirstWrite -1}
		lms_aux_reg_M_imag_V_3 {Type IO LastRead -1 FirstWrite -1}
		lms_weights_real_V_4 {Type IO LastRead -1 FirstWrite -1}
		lms_weights_imag_V_4 {Type IO LastRead -1 FirstWrite -1}
		lms_aux_reg_M_real_V_2 {Type IO LastRead -1 FirstWrite -1}
		lms_aux_reg_M_imag_V_2 {Type IO LastRead -1 FirstWrite -1}
		lms_weights_real_V_3 {Type IO LastRead -1 FirstWrite -1}
		lms_weights_imag_V_3 {Type IO LastRead -1 FirstWrite -1}
		lms_aux_reg_M_real_V_1 {Type IO LastRead -1 FirstWrite -1}
		lms_aux_reg_M_imag_V_1 {Type IO LastRead -1 FirstWrite -1}
		lms_weights_real_V_2 {Type IO LastRead -1 FirstWrite -1}
		lms_weights_imag_V_2 {Type IO LastRead -1 FirstWrite -1}
		lms_aux_reg_M_real_V_0 {Type IO LastRead -1 FirstWrite -1}
		lms_aux_reg_M_imag_V_0 {Type IO LastRead -1 FirstWrite -1}
		lms_weights_real_V_1 {Type IO LastRead -1 FirstWrite -1}
		lms_weights_imag_V_1 {Type IO LastRead -1 FirstWrite -1}
		lms_weights_real_V_0 {Type IO LastRead -1 FirstWrite -1}
		lms_weights_imag_V_0 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "102", "Max" : "102"}
	, {"Name" : "Interval", "Min" : "37", "Max" : "37"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	main_in_V_data_V { axis {  { main_in_TDATA in_data 0 32 } } }
	main_in_V_keep_V { axis {  { main_in_TKEEP in_data 0 4 } } }
	main_in_V_strb_V { axis {  { main_in_TSTRB in_data 0 4 } } }
	main_in_V_last_V { axis {  { main_in_TVALID in_vld 0 1 }  { main_in_TREADY in_acc 1 1 }  { main_in_TLAST in_data 0 1 } } }
	aux_in_V_data_V { axis {  { aux_in_TDATA in_data 0 32 } } }
	aux_in_V_keep_V { axis {  { aux_in_TKEEP in_data 0 4 } } }
	aux_in_V_strb_V { axis {  { aux_in_TSTRB in_data 0 4 } } }
	aux_in_V_last_V { axis {  { aux_in_TVALID in_vld 0 1 }  { aux_in_TREADY in_acc 1 1 }  { aux_in_TLAST in_data 0 1 } } }
	output_V_data_V { axis {  { output_r_TDATA out_data 1 32 } } }
	output_V_keep_V { axis {  { output_r_TKEEP out_data 1 4 } } }
	output_V_strb_V { axis {  { output_r_TSTRB out_data 1 4 } } }
	output_V_last_V { axis {  { output_r_TVALID out_vld 1 1 }  { output_r_TREADY out_acc 0 1 }  { output_r_TLAST out_data 1 1 } } }
	mu { ap_none {  { mu in_data 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
