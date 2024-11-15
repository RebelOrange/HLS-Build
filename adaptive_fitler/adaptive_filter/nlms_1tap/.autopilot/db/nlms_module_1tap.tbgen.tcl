set moduleName nlms_module_1tap
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
set C_modelName {nlms_module_1tap}
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34"],
		"CDFG" : "nlms_module_1tap",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "86",
		"VariableLatency" : "0", "ExactLatency" : "86", "EstimateLatencyMin" : "86", "EstimateLatencyMax" : "86",
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
			{"Name" : "lms_weights_real", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_weights_imag_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lms_aux_reg_M_real_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lms_aux_reg_M_imag_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lms_aux_reg_M_real_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lms_aux_reg_M_imag_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U1", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U2", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_79_3_1_U3", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U4", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_65s_64ns_64_69_1_U5", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U6", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U7", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U8", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_16s_80_3_1_U9", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_63ns_32ns_95_3_1_U10", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_95ns_81s_175_3_1_U11", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_95ns_80s_175_3_1_U12", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_175s_175ns_175_2_1_U13", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_175s_175ns_175_2_1_U14", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U15", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U16", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_32_4_1_U17", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_32_4_1_U18", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32ns_32_4_1_U19", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32ns_32_4_1_U20", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_main_in_V_data_V_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_main_in_V_keep_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_main_in_V_strb_V_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_main_in_V_last_V_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_aux_in_V_data_V_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_aux_in_V_keep_V_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_aux_in_V_strb_V_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_aux_in_V_last_V_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_output_V_data_V_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_output_V_keep_V_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_output_V_strb_V_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_output_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	nlms_module_1tap {
		main_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		main_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		main_in_V_strb_V {Type I LastRead 0 FirstWrite -1}
		main_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		aux_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		aux_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		aux_in_V_strb_V {Type I LastRead 0 FirstWrite -1}
		aux_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		output_V_data_V {Type O LastRead -1 FirstWrite 9}
		output_V_keep_V {Type O LastRead -1 FirstWrite 9}
		output_V_strb_V {Type O LastRead -1 FirstWrite 9}
		output_V_last_V {Type O LastRead -1 FirstWrite 9}
		mu {Type I LastRead 77 FirstWrite -1}
		lms_weights_real {Type IO LastRead -1 FirstWrite -1}
		lms_weights_imag_V_0 {Type IO LastRead -1 FirstWrite -1}
		lms_aux_reg_M_real_V {Type IO LastRead -1 FirstWrite -1}
		lms_aux_reg_M_imag_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "86", "Max" : "86"}
	, {"Name" : "Interval", "Min" : "86", "Max" : "86"}
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
