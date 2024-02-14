set moduleName MLP_Pipeline_VITIS_LOOP_58_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {MLP_Pipeline_VITIS_LOOP_58_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_data_V_data_V int 32 regular {axi_s 0 volatile  { in_data Data } }  }
	{ in_data_V_keep_V int 4 regular {axi_s 0 volatile  { in_data Keep } }  }
	{ in_data_V_strb_V int 4 regular {axi_s 0 volatile  { in_data Strb } }  }
	{ in_data_V_user_V int 2 regular {axi_s 0 volatile  { in_data User } }  }
	{ in_data_V_last_V int 1 regular {axi_s 0 volatile  { in_data Last } }  }
	{ in_data_V_id_V int 5 regular {axi_s 0 volatile  { in_data ID } }  }
	{ in_data_V_dest_V int 6 regular {axi_s 0 volatile  { in_data Dest } }  }
	{ input_features int 32 regular {array 48 { 0 3 } 0 1 }  }
	{ tmp_keep_V_out int 4 regular {pointer 1}  }
	{ tmp_strb_V_out int 4 regular {pointer 1}  }
	{ tmp_user_V_out int 2 regular {pointer 1}  }
	{ tmp_id_V_out int 5 regular {pointer 1}  }
	{ tmp_dest_V_out int 6 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_data_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_data_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_data_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_data_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_data_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "in_data_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "input_features", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp_keep_V_out", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp_strb_V_out", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp_user_V_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp_id_V_out", "interface" : "wire", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp_dest_V_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_data_TVALID sc_in sc_logic 1 invld 0 } 
	{ in_data_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_data_TREADY sc_out sc_logic 1 inacc 6 } 
	{ in_data_TKEEP sc_in sc_lv 4 signal 1 } 
	{ in_data_TSTRB sc_in sc_lv 4 signal 2 } 
	{ in_data_TUSER sc_in sc_lv 2 signal 3 } 
	{ in_data_TLAST sc_in sc_lv 1 signal 4 } 
	{ in_data_TID sc_in sc_lv 5 signal 5 } 
	{ in_data_TDEST sc_in sc_lv 6 signal 6 } 
	{ input_features_address0 sc_out sc_lv 6 signal 7 } 
	{ input_features_ce0 sc_out sc_logic 1 signal 7 } 
	{ input_features_we0 sc_out sc_logic 1 signal 7 } 
	{ input_features_d0 sc_out sc_lv 32 signal 7 } 
	{ tmp_keep_V_out sc_out sc_lv 4 signal 8 } 
	{ tmp_keep_V_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ tmp_strb_V_out sc_out sc_lv 4 signal 9 } 
	{ tmp_strb_V_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ tmp_user_V_out sc_out sc_lv 2 signal 10 } 
	{ tmp_user_V_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ tmp_id_V_out sc_out sc_lv 5 signal 11 } 
	{ tmp_id_V_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ tmp_dest_V_out sc_out sc_lv 6 signal 12 } 
	{ tmp_dest_V_out_ap_vld sc_out sc_logic 1 outvld 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_data_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_data_V_data_V", "role": "default" }} , 
 	{ "name": "in_data_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_data_V_data_V", "role": "default" }} , 
 	{ "name": "in_data_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_data_V_dest_V", "role": "default" }} , 
 	{ "name": "in_data_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_data_V_keep_V", "role": "default" }} , 
 	{ "name": "in_data_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_data_V_strb_V", "role": "default" }} , 
 	{ "name": "in_data_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_data_V_user_V", "role": "default" }} , 
 	{ "name": "in_data_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_data_V_last_V", "role": "default" }} , 
 	{ "name": "in_data_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in_data_V_id_V", "role": "default" }} , 
 	{ "name": "in_data_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "in_data_V_dest_V", "role": "default" }} , 
 	{ "name": "input_features_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_features", "role": "address0" }} , 
 	{ "name": "input_features_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_features", "role": "ce0" }} , 
 	{ "name": "input_features_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_features", "role": "we0" }} , 
 	{ "name": "input_features_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features", "role": "d0" }} , 
 	{ "name": "tmp_keep_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tmp_keep_V_out", "role": "default" }} , 
 	{ "name": "tmp_keep_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp_keep_V_out", "role": "ap_vld" }} , 
 	{ "name": "tmp_strb_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tmp_strb_V_out", "role": "default" }} , 
 	{ "name": "tmp_strb_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp_strb_V_out", "role": "ap_vld" }} , 
 	{ "name": "tmp_user_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tmp_user_V_out", "role": "default" }} , 
 	{ "name": "tmp_user_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp_user_V_out", "role": "ap_vld" }} , 
 	{ "name": "tmp_id_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "tmp_id_V_out", "role": "default" }} , 
 	{ "name": "tmp_id_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp_id_V_out", "role": "ap_vld" }} , 
 	{ "name": "tmp_dest_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tmp_dest_V_out", "role": "default" }} , 
 	{ "name": "tmp_dest_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp_dest_V_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "MLP_Pipeline_VITIS_LOOP_58_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_data_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_data_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_data_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_data_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_data_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_data_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_data_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_data_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_features", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tmp_keep_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_strb_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_user_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_id_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_dest_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_58_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MLP_Pipeline_VITIS_LOOP_58_1 {
		in_data_V_data_V {Type I LastRead 1 FirstWrite -1}
		in_data_V_keep_V {Type I LastRead 1 FirstWrite -1}
		in_data_V_strb_V {Type I LastRead 1 FirstWrite -1}
		in_data_V_user_V {Type I LastRead 1 FirstWrite -1}
		in_data_V_last_V {Type I LastRead 1 FirstWrite -1}
		in_data_V_id_V {Type I LastRead 1 FirstWrite -1}
		in_data_V_dest_V {Type I LastRead 1 FirstWrite -1}
		input_features {Type O LastRead -1 FirstWrite 1}
		tmp_keep_V_out {Type O LastRead -1 FirstWrite 1}
		tmp_strb_V_out {Type O LastRead -1 FirstWrite 1}
		tmp_user_V_out {Type O LastRead -1 FirstWrite 1}
		tmp_id_V_out {Type O LastRead -1 FirstWrite 1}
		tmp_dest_V_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in_data_V_data_V { axis {  { in_data_TVALID in_vld 0 1 }  { in_data_TDATA in_data 0 32 } } }
	in_data_V_keep_V { axis {  { in_data_TKEEP in_data 0 4 } } }
	in_data_V_strb_V { axis {  { in_data_TSTRB in_data 0 4 } } }
	in_data_V_user_V { axis {  { in_data_TUSER in_data 0 2 } } }
	in_data_V_last_V { axis {  { in_data_TLAST in_data 0 1 } } }
	in_data_V_id_V { axis {  { in_data_TID in_data 0 5 } } }
	in_data_V_dest_V { axis {  { in_data_TREADY in_acc 1 1 }  { in_data_TDEST in_data 0 6 } } }
	input_features { ap_memory {  { input_features_address0 mem_address 1 6 }  { input_features_ce0 mem_ce 1 1 }  { input_features_we0 mem_we 1 1 }  { input_features_d0 mem_din 1 32 } } }
	tmp_keep_V_out { ap_vld {  { tmp_keep_V_out out_data 1 4 }  { tmp_keep_V_out_ap_vld out_vld 1 1 } } }
	tmp_strb_V_out { ap_vld {  { tmp_strb_V_out out_data 1 4 }  { tmp_strb_V_out_ap_vld out_vld 1 1 } } }
	tmp_user_V_out { ap_vld {  { tmp_user_V_out out_data 1 2 }  { tmp_user_V_out_ap_vld out_vld 1 1 } } }
	tmp_id_V_out { ap_vld {  { tmp_id_V_out out_data 1 5 }  { tmp_id_V_out_ap_vld out_vld 1 1 } } }
	tmp_dest_V_out { ap_vld {  { tmp_dest_V_out out_data 1 6 }  { tmp_dest_V_out_ap_vld out_vld 1 1 } } }
}
