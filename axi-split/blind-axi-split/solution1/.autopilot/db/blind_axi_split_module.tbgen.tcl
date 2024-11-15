set moduleName blind_axi_split_module
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {blind_axi_split_module}
set C_modelType { void 0 }
set C_modelArgList {
	{ in0_V_data_V int 32 regular {axi_s 0 volatile  { in0 Data } }  }
	{ in0_V_keep_V int 4 regular {axi_s 0 volatile  { in0 Keep } }  }
	{ in0_V_strb_V int 4 regular {axi_s 0 volatile  { in0 Strb } }  }
	{ in0_V_last_V int 1 regular {axi_s 0 volatile  { in0 Last } }  }
	{ out0_V_data_V int 32 regular {axi_s 1 volatile  { out0 Data } }  }
	{ out0_V_keep_V int 4 regular {axi_s 1 volatile  { out0 Keep } }  }
	{ out0_V_strb_V int 4 regular {axi_s 1 volatile  { out0 Strb } }  }
	{ out0_V_last_V int 1 regular {axi_s 1 volatile  { out0 Last } }  }
	{ out1_V_data_V int 32 regular {axi_s 1 volatile  { out1 Data } }  }
	{ out1_V_keep_V int 4 regular {axi_s 1 volatile  { out1 Keep } }  }
	{ out1_V_strb_V int 4 regular {axi_s 1 volatile  { out1 Strb } }  }
	{ out1_V_last_V int 1 regular {axi_s 1 volatile  { out1 Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in0_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in0_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in0_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "out0_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out0_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out0_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out1_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out1_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out1_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in0_TDATA sc_in sc_lv 32 signal 0 } 
	{ in0_TVALID sc_in sc_logic 1 invld 3 } 
	{ in0_TREADY sc_out sc_logic 1 inacc 3 } 
	{ in0_TKEEP sc_in sc_lv 4 signal 1 } 
	{ in0_TSTRB sc_in sc_lv 4 signal 2 } 
	{ in0_TLAST sc_in sc_lv 1 signal 3 } 
	{ out0_TDATA sc_out sc_lv 32 signal 4 } 
	{ out0_TVALID sc_out sc_logic 1 outvld 7 } 
	{ out0_TREADY sc_in sc_logic 1 outacc 7 } 
	{ out0_TKEEP sc_out sc_lv 4 signal 5 } 
	{ out0_TSTRB sc_out sc_lv 4 signal 6 } 
	{ out0_TLAST sc_out sc_lv 1 signal 7 } 
	{ out1_TDATA sc_out sc_lv 32 signal 8 } 
	{ out1_TVALID sc_out sc_logic 1 outvld 11 } 
	{ out1_TREADY sc_in sc_logic 1 outacc 11 } 
	{ out1_TKEEP sc_out sc_lv 4 signal 9 } 
	{ out1_TSTRB sc_out sc_lv 4 signal 10 } 
	{ out1_TLAST sc_out sc_lv 1 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in0_V_data_V", "role": "default" }} , 
 	{ "name": "in0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in0_V_last_V", "role": "default" }} , 
 	{ "name": "in0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in0_V_last_V", "role": "default" }} , 
 	{ "name": "in0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in0_V_keep_V", "role": "default" }} , 
 	{ "name": "in0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in0_V_strb_V", "role": "default" }} , 
 	{ "name": "in0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in0_V_last_V", "role": "default" }} , 
 	{ "name": "out0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out0_V_data_V", "role": "default" }} , 
 	{ "name": "out0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out0_V_last_V", "role": "default" }} , 
 	{ "name": "out0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out0_V_last_V", "role": "default" }} , 
 	{ "name": "out0_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out0_V_keep_V", "role": "default" }} , 
 	{ "name": "out0_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out0_V_strb_V", "role": "default" }} , 
 	{ "name": "out0_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out0_V_last_V", "role": "default" }} , 
 	{ "name": "out1_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out1_V_data_V", "role": "default" }} , 
 	{ "name": "out1_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out1_V_last_V", "role": "default" }} , 
 	{ "name": "out1_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out1_V_last_V", "role": "default" }} , 
 	{ "name": "out1_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out1_V_keep_V", "role": "default" }} , 
 	{ "name": "out1_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out1_V_strb_V", "role": "default" }} , 
 	{ "name": "out1_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out1_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
		"CDFG" : "blind_axi_split_module",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in0_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in0_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in0_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in0_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "out0_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out0_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out0_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out0_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out1_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out1_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out1_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out1_V_last_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in0_V_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in0_V_keep_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in0_V_strb_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in0_V_last_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out0_V_data_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out0_V_keep_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out0_V_strb_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out0_V_last_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out1_V_data_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out1_V_keep_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out1_V_strb_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out1_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	blind_axi_split_module {
		in0_V_data_V {Type I LastRead 0 FirstWrite -1}
		in0_V_keep_V {Type I LastRead 0 FirstWrite -1}
		in0_V_strb_V {Type I LastRead 0 FirstWrite -1}
		in0_V_last_V {Type I LastRead 0 FirstWrite -1}
		out0_V_data_V {Type O LastRead -1 FirstWrite 0}
		out0_V_keep_V {Type O LastRead -1 FirstWrite 0}
		out0_V_strb_V {Type O LastRead -1 FirstWrite 0}
		out0_V_last_V {Type O LastRead -1 FirstWrite 0}
		out1_V_data_V {Type O LastRead -1 FirstWrite 0}
		out1_V_keep_V {Type O LastRead -1 FirstWrite 0}
		out1_V_strb_V {Type O LastRead -1 FirstWrite 0}
		out1_V_last_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in0_V_data_V { axis {  { in0_TDATA in_data 0 32 } } }
	in0_V_keep_V { axis {  { in0_TKEEP in_data 0 4 } } }
	in0_V_strb_V { axis {  { in0_TSTRB in_data 0 4 } } }
	in0_V_last_V { axis {  { in0_TVALID in_vld 0 1 }  { in0_TREADY in_acc 1 1 }  { in0_TLAST in_data 0 1 } } }
	out0_V_data_V { axis {  { out0_TDATA out_data 1 32 } } }
	out0_V_keep_V { axis {  { out0_TKEEP out_data 1 4 } } }
	out0_V_strb_V { axis {  { out0_TSTRB out_data 1 4 } } }
	out0_V_last_V { axis {  { out0_TVALID out_vld 1 1 }  { out0_TREADY out_acc 0 1 }  { out0_TLAST out_data 1 1 } } }
	out1_V_data_V { axis {  { out1_TDATA out_data 1 32 } } }
	out1_V_keep_V { axis {  { out1_TKEEP out_data 1 4 } } }
	out1_V_strb_V { axis {  { out1_TSTRB out_data 1 4 } } }
	out1_V_last_V { axis {  { out1_TVALID out_vld 1 1 }  { out1_TREADY out_acc 0 1 }  { out1_TLAST out_data 1 1 } } }
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
