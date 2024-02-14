set moduleName MLP
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {MLP}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_data_V_data_V int 32 regular {axi_s 0 volatile  { in_data Data } }  }
	{ in_data_V_keep_V int 4 regular {axi_s 0 volatile  { in_data Keep } }  }
	{ in_data_V_strb_V int 4 regular {axi_s 0 volatile  { in_data Strb } }  }
	{ in_data_V_user_V int 2 regular {axi_s 0 volatile  { in_data User } }  }
	{ in_data_V_last_V int 1 regular {axi_s 0 volatile  { in_data Last } }  }
	{ in_data_V_id_V int 5 regular {axi_s 0 volatile  { in_data ID } }  }
	{ in_data_V_dest_V int 6 regular {axi_s 0 volatile  { in_data Dest } }  }
	{ out_data_V_data_V int 32 regular {axi_s 1 volatile  { out_data Data } }  }
	{ out_data_V_keep_V int 4 regular {axi_s 1 volatile  { out_data Keep } }  }
	{ out_data_V_strb_V int 4 regular {axi_s 1 volatile  { out_data Strb } }  }
	{ out_data_V_user_V int 2 regular {axi_s 1 volatile  { out_data User } }  }
	{ out_data_V_last_V int 1 regular {axi_s 1 volatile  { out_data Last } }  }
	{ out_data_V_id_V int 5 regular {axi_s 1 volatile  { out_data ID } }  }
	{ out_data_V_dest_V int 6 regular {axi_s 1 volatile  { out_data Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_data_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_data_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_data_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_data_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_data_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "in_data_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "out_data_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_data_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_data_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_data_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_data_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_data_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in_data_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_data_TVALID sc_in sc_logic 1 invld 6 } 
	{ in_data_TREADY sc_out sc_logic 1 inacc 6 } 
	{ in_data_TKEEP sc_in sc_lv 4 signal 1 } 
	{ in_data_TSTRB sc_in sc_lv 4 signal 2 } 
	{ in_data_TUSER sc_in sc_lv 2 signal 3 } 
	{ in_data_TLAST sc_in sc_lv 1 signal 4 } 
	{ in_data_TID sc_in sc_lv 5 signal 5 } 
	{ in_data_TDEST sc_in sc_lv 6 signal 6 } 
	{ out_data_TDATA sc_out sc_lv 32 signal 7 } 
	{ out_data_TVALID sc_out sc_logic 1 outvld 13 } 
	{ out_data_TREADY sc_in sc_logic 1 outacc 13 } 
	{ out_data_TKEEP sc_out sc_lv 4 signal 8 } 
	{ out_data_TSTRB sc_out sc_lv 4 signal 9 } 
	{ out_data_TUSER sc_out sc_lv 2 signal 10 } 
	{ out_data_TLAST sc_out sc_lv 1 signal 11 } 
	{ out_data_TID sc_out sc_lv 5 signal 12 } 
	{ out_data_TDEST sc_out sc_lv 6 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_data_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_data_V_data_V", "role": "default" }} , 
 	{ "name": "in_data_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_data_V_dest_V", "role": "default" }} , 
 	{ "name": "in_data_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_data_V_dest_V", "role": "default" }} , 
 	{ "name": "in_data_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_data_V_keep_V", "role": "default" }} , 
 	{ "name": "in_data_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_data_V_strb_V", "role": "default" }} , 
 	{ "name": "in_data_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_data_V_user_V", "role": "default" }} , 
 	{ "name": "in_data_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_data_V_last_V", "role": "default" }} , 
 	{ "name": "in_data_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in_data_V_id_V", "role": "default" }} , 
 	{ "name": "in_data_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "in_data_V_dest_V", "role": "default" }} , 
 	{ "name": "out_data_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_data_V_data_V", "role": "default" }} , 
 	{ "name": "out_data_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_data_V_dest_V", "role": "default" }} , 
 	{ "name": "out_data_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_data_V_dest_V", "role": "default" }} , 
 	{ "name": "out_data_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_data_V_keep_V", "role": "default" }} , 
 	{ "name": "out_data_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_data_V_strb_V", "role": "default" }} , 
 	{ "name": "out_data_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_data_V_user_V", "role": "default" }} , 
 	{ "name": "out_data_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_V_last_V", "role": "default" }} , 
 	{ "name": "out_data_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_data_V_id_V", "role": "default" }} , 
 	{ "name": "out_data_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "out_data_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "9", "11", "13", "15", "17", "19", "21", "26", "125", "152", "167", "169", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234"],
		"CDFG" : "MLP",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
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
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_58_1_fu_1127", "Port" : "in_data_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "in_data_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_58_1_fu_1127", "Port" : "in_data_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "in_data_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_58_1_fu_1127", "Port" : "in_data_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "in_data_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_58_1_fu_1127", "Port" : "in_data_V_user_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "in_data_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_58_1_fu_1127", "Port" : "in_data_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "in_data_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_58_1_fu_1127", "Port" : "in_data_V_id_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "in_data_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_58_1_fu_1127", "Port" : "in_data_V_dest_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "out_data_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "169", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_128_10_fu_1442", "Port" : "out_data_V_data_V", "Inst_start_state" : "57", "Inst_end_state" : "58"}]},
			{"Name" : "out_data_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "169", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_128_10_fu_1442", "Port" : "out_data_V_keep_V", "Inst_start_state" : "57", "Inst_end_state" : "58"}]},
			{"Name" : "out_data_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "169", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_128_10_fu_1442", "Port" : "out_data_V_strb_V", "Inst_start_state" : "57", "Inst_end_state" : "58"}]},
			{"Name" : "out_data_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "169", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_128_10_fu_1442", "Port" : "out_data_V_user_V", "Inst_start_state" : "57", "Inst_end_state" : "58"}]},
			{"Name" : "out_data_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "169", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_128_10_fu_1442", "Port" : "out_data_V_last_V", "Inst_start_state" : "57", "Inst_end_state" : "58"}]},
			{"Name" : "out_data_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "169", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_128_10_fu_1442", "Port" : "out_data_V_id_V", "Inst_start_state" : "57", "Inst_end_state" : "58"}]},
			{"Name" : "out_data_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "169", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_128_10_fu_1442", "Port" : "out_data_V_dest_V", "Inst_start_state" : "57", "Inst_end_state" : "58"}]},
			{"Name" : "weights_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_0", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_1", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_2", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_3", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_4", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_5", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_6", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_7", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_8", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_9", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_10", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_11", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_12", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_13", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_14", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_15", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_16", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_17", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_18", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_19", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_20", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_21", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_22", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_23", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_24", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_25", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_26", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_27", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_28", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_29", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_30", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_31", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_32", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_33", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_34", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_35", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_36", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_37", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_37", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_38", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_39", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_39", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_40", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_40", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_41", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_42", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_43", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_44", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_45", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_46", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_1_47", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "weights_1_47", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "hidden_bias_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Port" : "hidden_bias_1", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "weights_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Port" : "weights_2_0", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "weights_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Port" : "weights_2_1", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "weights_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Port" : "weights_2_2", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "weights_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Port" : "weights_2_3", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "weights_2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Port" : "weights_2_4", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "weights_2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Port" : "weights_2_5", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "weights_2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Port" : "weights_2_6", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "weights_2_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Port" : "weights_2_7", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "weights_2_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Port" : "weights_2_8", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "weights_2_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Port" : "weights_2_9", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "weights_2_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Port" : "weights_2_10", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "weights_2_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Port" : "weights_2_11", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "weights_2_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Port" : "weights_2_12", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "weights_2_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Port" : "weights_2_13", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "weights_2_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Port" : "weights_2_14", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "weights_2_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Port" : "weights_2_15", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "weights_2_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Port" : "weights_2_16", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "weights_2_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Port" : "weights_2_17", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "weights_2_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Port" : "weights_2_18", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "weights_2_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Port" : "weights_2_19", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "weights_2_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Port" : "weights_2_20", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "weights_2_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Port" : "weights_2_21", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "weights_2_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Port" : "weights_2_22", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "weights_2_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Port" : "weights_2_23", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "hidden_bias_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Port" : "hidden_bias_2", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "output_weights_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391", "Port" : "output_weights_0", "Inst_start_state" : "53", "Inst_end_state" : "54"}]},
			{"Name" : "output_weights_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391", "Port" : "output_weights_1", "Inst_start_state" : "53", "Inst_end_state" : "54"}]},
			{"Name" : "output_weights_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391", "Port" : "output_weights_2", "Inst_start_state" : "53", "Inst_end_state" : "54"}]},
			{"Name" : "output_weights_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391", "Port" : "output_weights_3", "Inst_start_state" : "53", "Inst_end_state" : "54"}]},
			{"Name" : "output_weights_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391", "Port" : "output_weights_4", "Inst_start_state" : "53", "Inst_end_state" : "54"}]},
			{"Name" : "output_weights_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391", "Port" : "output_weights_5", "Inst_start_state" : "53", "Inst_end_state" : "54"}]},
			{"Name" : "output_weights_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391", "Port" : "output_weights_6", "Inst_start_state" : "53", "Inst_end_state" : "54"}]},
			{"Name" : "output_weights_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391", "Port" : "output_weights_7", "Inst_start_state" : "53", "Inst_end_state" : "54"}]},
			{"Name" : "output_weights_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391", "Port" : "output_weights_8", "Inst_start_state" : "53", "Inst_end_state" : "54"}]},
			{"Name" : "output_weights_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391", "Port" : "output_weights_9", "Inst_start_state" : "53", "Inst_end_state" : "54"}]},
			{"Name" : "output_weights_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391", "Port" : "output_weights_10", "Inst_start_state" : "53", "Inst_end_state" : "54"}]},
			{"Name" : "output_weights_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391", "Port" : "output_weights_11", "Inst_start_state" : "53", "Inst_end_state" : "54"}]},
			{"Name" : "output_bias", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391", "Port" : "output_bias", "Inst_start_state" : "53", "Inst_end_state" : "54"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_features_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_features_casted_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hidden_layer_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hidden_layer_2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_layer_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_layer_casted_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_1_fu_1091", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "MLP_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "50",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_features", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_1_fu_1091.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_2_fu_1097", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "MLP_Pipeline_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "50",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_features_casted", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_2_fu_1097.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_3_fu_1103", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "MLP_Pipeline_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "26",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "hidden_layer_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_3_fu_1103.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_4_fu_1109", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "MLP_Pipeline_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "hidden_layer_2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_4_fu_1109.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_5_fu_1115", "Parent" : "0", "Child" : ["16"],
		"CDFG" : "MLP_Pipeline_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "output_layer", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_5_fu_1115.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_6_fu_1121", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "MLP_Pipeline_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "output_layer_casted", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_6_fu_1121.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_58_1_fu_1127", "Parent" : "0", "Child" : ["20"],
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
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_58_1_fu_1127.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_69_2_fu_1151", "Parent" : "0", "Child" : ["22", "23", "24", "25"],
		"CDFG" : "MLP_Pipeline_VITIS_LOOP_69_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "77", "EstimateLatencyMax" : "77",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_features", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_features_casted", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter28", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter28", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_69_2_fu_1151.fptrunc_64ns_32_2_no_dsp_1_U20", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_69_2_fu_1151.ddiv_64ns_64ns_64_22_no_dsp_1_U21", "Parent" : "21"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_69_2_fu_1151.sitodp_32ns_64_4_no_dsp_1_U22", "Parent" : "21"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_69_2_fu_1151.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157", "Parent" : "0", "Child" : ["27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124"],
		"CDFG" : "MLP_Pipeline_VITIS_LOOP_77_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "227", "EstimateLatencyMax" : "227",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "hidden_layer_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_features_casted_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_features_casted_load_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_33", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_34", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_35", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_36", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_37", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_38", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_39", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_40", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_42", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_43", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_44", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_45", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_46", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_47", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "hidden_bias_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_77_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter202", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter202", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_0_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_1_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_2_U", "Parent" : "26"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_3_U", "Parent" : "26"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_4_U", "Parent" : "26"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_5_U", "Parent" : "26"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_6_U", "Parent" : "26"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_7_U", "Parent" : "26"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_8_U", "Parent" : "26"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_9_U", "Parent" : "26"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_10_U", "Parent" : "26"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_11_U", "Parent" : "26"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_12_U", "Parent" : "26"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_13_U", "Parent" : "26"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_14_U", "Parent" : "26"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_15_U", "Parent" : "26"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_16_U", "Parent" : "26"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_17_U", "Parent" : "26"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_18_U", "Parent" : "26"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_19_U", "Parent" : "26"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_20_U", "Parent" : "26"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_21_U", "Parent" : "26"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_22_U", "Parent" : "26"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_23_U", "Parent" : "26"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_24_U", "Parent" : "26"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_25_U", "Parent" : "26"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_26_U", "Parent" : "26"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_27_U", "Parent" : "26"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_28_U", "Parent" : "26"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_29_U", "Parent" : "26"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_30_U", "Parent" : "26"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_31_U", "Parent" : "26"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_32_U", "Parent" : "26"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_33_U", "Parent" : "26"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_34_U", "Parent" : "26"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_35_U", "Parent" : "26"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_36_U", "Parent" : "26"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_37_U", "Parent" : "26"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_38_U", "Parent" : "26"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_39_U", "Parent" : "26"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_40_U", "Parent" : "26"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_41_U", "Parent" : "26"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_42_U", "Parent" : "26"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_43_U", "Parent" : "26"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_44_U", "Parent" : "26"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_45_U", "Parent" : "26"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_46_U", "Parent" : "26"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.weights_1_47_U", "Parent" : "26"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.hidden_bias_1_U", "Parent" : "26"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fadd_32ns_32ns_32_4_full_dsp_1_U53", "Parent" : "26"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fadd_32ns_32ns_32_4_full_dsp_1_U54", "Parent" : "26"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fadd_32ns_32ns_32_4_full_dsp_1_U55", "Parent" : "26"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fadd_32ns_32ns_32_4_full_dsp_1_U56", "Parent" : "26"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fadd_32ns_32ns_32_4_full_dsp_1_U57", "Parent" : "26"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fadd_32ns_32ns_32_4_full_dsp_1_U58", "Parent" : "26"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fadd_32ns_32ns_32_4_full_dsp_1_U59", "Parent" : "26"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fadd_32ns_32ns_32_4_full_dsp_1_U60", "Parent" : "26"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fadd_32ns_32ns_32_4_full_dsp_1_U61", "Parent" : "26"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fadd_32ns_32ns_32_4_full_dsp_1_U62", "Parent" : "26"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fadd_32ns_32ns_32_4_full_dsp_1_U63", "Parent" : "26"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fadd_32ns_32ns_32_4_full_dsp_1_U64", "Parent" : "26"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fadd_32ns_32ns_32_4_full_dsp_1_U65", "Parent" : "26"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fadd_32ns_32ns_32_4_full_dsp_1_U66", "Parent" : "26"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fadd_32ns_32ns_32_4_full_dsp_1_U67", "Parent" : "26"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fadd_32ns_32ns_32_4_full_dsp_1_U68", "Parent" : "26"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fadd_32ns_32ns_32_4_full_dsp_1_U69", "Parent" : "26"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fadd_32ns_32ns_32_4_full_dsp_1_U70", "Parent" : "26"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fadd_32ns_32ns_32_4_full_dsp_1_U71", "Parent" : "26"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fadd_32ns_32ns_32_4_full_dsp_1_U72", "Parent" : "26"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fadd_32ns_32ns_32_4_full_dsp_1_U73", "Parent" : "26"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fadd_32ns_32ns_32_4_full_dsp_1_U74", "Parent" : "26"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fadd_32ns_32ns_32_4_full_dsp_1_U75", "Parent" : "26"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fadd_32ns_32ns_32_4_full_dsp_1_U76", "Parent" : "26"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fmul_32ns_32ns_32_3_max_dsp_1_U101", "Parent" : "26"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fmul_32ns_32ns_32_3_max_dsp_1_U102", "Parent" : "26"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fmul_32ns_32ns_32_3_max_dsp_1_U103", "Parent" : "26"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fmul_32ns_32ns_32_3_max_dsp_1_U104", "Parent" : "26"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fmul_32ns_32ns_32_3_max_dsp_1_U105", "Parent" : "26"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fmul_32ns_32ns_32_3_max_dsp_1_U106", "Parent" : "26"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fmul_32ns_32ns_32_3_max_dsp_1_U107", "Parent" : "26"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fmul_32ns_32ns_32_3_max_dsp_1_U108", "Parent" : "26"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fmul_32ns_32ns_32_3_max_dsp_1_U109", "Parent" : "26"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fmul_32ns_32ns_32_3_max_dsp_1_U110", "Parent" : "26"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fmul_32ns_32ns_32_3_max_dsp_1_U111", "Parent" : "26"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fmul_32ns_32ns_32_3_max_dsp_1_U112", "Parent" : "26"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fmul_32ns_32ns_32_3_max_dsp_1_U113", "Parent" : "26"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fmul_32ns_32ns_32_3_max_dsp_1_U114", "Parent" : "26"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fmul_32ns_32ns_32_3_max_dsp_1_U115", "Parent" : "26"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fmul_32ns_32ns_32_3_max_dsp_1_U116", "Parent" : "26"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fmul_32ns_32ns_32_3_max_dsp_1_U117", "Parent" : "26"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fmul_32ns_32ns_32_3_max_dsp_1_U118", "Parent" : "26"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fmul_32ns_32ns_32_3_max_dsp_1_U119", "Parent" : "26"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fmul_32ns_32ns_32_3_max_dsp_1_U120", "Parent" : "26"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fmul_32ns_32ns_32_3_max_dsp_1_U121", "Parent" : "26"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fmul_32ns_32ns_32_3_max_dsp_1_U122", "Parent" : "26"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fmul_32ns_32ns_32_3_max_dsp_1_U123", "Parent" : "26"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.fmul_32ns_32ns_32_3_max_dsp_1_U124", "Parent" : "26"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_77_3_fu_1157.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310", "Parent" : "0", "Child" : ["126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151"],
		"CDFG" : "MLP_Pipeline_VITIS_LOOP_94_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "119", "EstimateLatencyMax" : "119",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "hidden_layer_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "hidden_layer_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_1_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_1_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_1_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_1_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_1_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_1_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_1_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_1_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_1_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_1_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_1_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_1_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_1_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_1_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_1_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_1_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_1_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_1_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_1_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_1_load_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_1_load_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_1_load_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_1_load_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "hidden_bias_2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_94_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter106", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter106", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.weights_2_0_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.weights_2_1_U", "Parent" : "125"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.weights_2_2_U", "Parent" : "125"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.weights_2_3_U", "Parent" : "125"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.weights_2_4_U", "Parent" : "125"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.weights_2_5_U", "Parent" : "125"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.weights_2_6_U", "Parent" : "125"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.weights_2_7_U", "Parent" : "125"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.weights_2_8_U", "Parent" : "125"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.weights_2_9_U", "Parent" : "125"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.weights_2_10_U", "Parent" : "125"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.weights_2_11_U", "Parent" : "125"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.weights_2_12_U", "Parent" : "125"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.weights_2_13_U", "Parent" : "125"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.weights_2_14_U", "Parent" : "125"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.weights_2_15_U", "Parent" : "125"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.weights_2_16_U", "Parent" : "125"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.weights_2_17_U", "Parent" : "125"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.weights_2_18_U", "Parent" : "125"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.weights_2_19_U", "Parent" : "125"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.weights_2_20_U", "Parent" : "125"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.weights_2_21_U", "Parent" : "125"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.weights_2_22_U", "Parent" : "125"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.weights_2_23_U", "Parent" : "125"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.hidden_bias_2_U", "Parent" : "125"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_94_5_fu_1310.flow_control_loop_pipe_sequential_init_U", "Parent" : "125"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391", "Parent" : "0", "Child" : ["153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166"],
		"CDFG" : "MLP_Pipeline_VITIS_LOOP_111_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "62", "EstimateLatencyMax" : "62",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "output_layer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "hidden_layer_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_2_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_2_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_2_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_2_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_2_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_2_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_2_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_2_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_2_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_2_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_layer_2_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_weights_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_weights_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_weights_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_weights_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_weights_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_weights_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_weights_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_weights_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_weights_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_weights_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_weights_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_weights_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_bias", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_111_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter56", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter56", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391.output_weights_0_U", "Parent" : "152"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391.output_weights_1_U", "Parent" : "152"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391.output_weights_2_U", "Parent" : "152"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391.output_weights_3_U", "Parent" : "152"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391.output_weights_4_U", "Parent" : "152"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391.output_weights_5_U", "Parent" : "152"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391.output_weights_6_U", "Parent" : "152"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391.output_weights_7_U", "Parent" : "152"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391.output_weights_8_U", "Parent" : "152"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391.output_weights_9_U", "Parent" : "152"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391.output_weights_10_U", "Parent" : "152"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391.output_weights_11_U", "Parent" : "152"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391.output_bias_U", "Parent" : "152"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_111_7_fu_1391.flow_control_loop_pipe_sequential_init_U", "Parent" : "152"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_123_9_fu_1436", "Parent" : "0", "Child" : ["168"],
		"CDFG" : "MLP_Pipeline_VITIS_LOOP_123_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "output_layer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_layer_casted", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_123_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_123_9_fu_1436.flow_control_loop_pipe_sequential_init_U", "Parent" : "167"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_128_10_fu_1442", "Parent" : "0", "Child" : ["170"],
		"CDFG" : "MLP_Pipeline_VITIS_LOOP_128_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "output_layer_casted", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_keep_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_strb_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_user_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_id_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_dest_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_data_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_data_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_data_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_data_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_data_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_data_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_data_V_dest_V", "Type" : "Axis", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_10", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_Pipeline_VITIS_LOOP_128_10_fu_1442.flow_control_loop_pipe_sequential_init_U", "Parent" : "169"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U393", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U394", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U395", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U396", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U397", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U398", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U399", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U400", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U401", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U402", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U403", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U404", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U405", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U406", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U407", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U408", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U409", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U410", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U411", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U412", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U413", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U414", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U415", "Parent" : "0"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U416", "Parent" : "0"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U417", "Parent" : "0"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U418", "Parent" : "0"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U419", "Parent" : "0"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U420", "Parent" : "0"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U421", "Parent" : "0"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U422", "Parent" : "0"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U423", "Parent" : "0"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U424", "Parent" : "0"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U425", "Parent" : "0"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U426", "Parent" : "0"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U427", "Parent" : "0"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U428", "Parent" : "0"},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U429", "Parent" : "0"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U430", "Parent" : "0"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U431", "Parent" : "0"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U432", "Parent" : "0"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U433", "Parent" : "0"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U434", "Parent" : "0"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U435", "Parent" : "0"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U436", "Parent" : "0"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U437", "Parent" : "0"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U438", "Parent" : "0"},
	{"ID" : "217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U439", "Parent" : "0"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U440", "Parent" : "0"},
	{"ID" : "219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U441", "Parent" : "0"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U442", "Parent" : "0"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_data_V_data_V_U", "Parent" : "0"},
	{"ID" : "222", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_data_V_keep_V_U", "Parent" : "0"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_data_V_strb_V_U", "Parent" : "0"},
	{"ID" : "224", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_data_V_user_V_U", "Parent" : "0"},
	{"ID" : "225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_data_V_last_V_U", "Parent" : "0"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_data_V_id_V_U", "Parent" : "0"},
	{"ID" : "227", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_data_V_dest_V_U", "Parent" : "0"},
	{"ID" : "228", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_data_V_data_V_U", "Parent" : "0"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_data_V_keep_V_U", "Parent" : "0"},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_data_V_strb_V_U", "Parent" : "0"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_data_V_user_V_U", "Parent" : "0"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_data_V_last_V_U", "Parent" : "0"},
	{"ID" : "233", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_data_V_id_V_U", "Parent" : "0"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_data_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MLP {
		in_data_V_data_V {Type I LastRead 1 FirstWrite -1}
		in_data_V_keep_V {Type I LastRead 1 FirstWrite -1}
		in_data_V_strb_V {Type I LastRead 1 FirstWrite -1}
		in_data_V_user_V {Type I LastRead 1 FirstWrite -1}
		in_data_V_last_V {Type I LastRead 1 FirstWrite -1}
		in_data_V_id_V {Type I LastRead 1 FirstWrite -1}
		in_data_V_dest_V {Type I LastRead 1 FirstWrite -1}
		out_data_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_data_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_data_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_data_V_user_V {Type O LastRead -1 FirstWrite 1}
		out_data_V_last_V {Type O LastRead -1 FirstWrite 1}
		out_data_V_id_V {Type O LastRead -1 FirstWrite 1}
		out_data_V_dest_V {Type O LastRead -1 FirstWrite 1}
		weights_1_0 {Type I LastRead -1 FirstWrite -1}
		weights_1_1 {Type I LastRead -1 FirstWrite -1}
		weights_1_2 {Type I LastRead -1 FirstWrite -1}
		weights_1_3 {Type I LastRead -1 FirstWrite -1}
		weights_1_4 {Type I LastRead -1 FirstWrite -1}
		weights_1_5 {Type I LastRead -1 FirstWrite -1}
		weights_1_6 {Type I LastRead -1 FirstWrite -1}
		weights_1_7 {Type I LastRead -1 FirstWrite -1}
		weights_1_8 {Type I LastRead -1 FirstWrite -1}
		weights_1_9 {Type I LastRead -1 FirstWrite -1}
		weights_1_10 {Type I LastRead -1 FirstWrite -1}
		weights_1_11 {Type I LastRead -1 FirstWrite -1}
		weights_1_12 {Type I LastRead -1 FirstWrite -1}
		weights_1_13 {Type I LastRead -1 FirstWrite -1}
		weights_1_14 {Type I LastRead -1 FirstWrite -1}
		weights_1_15 {Type I LastRead -1 FirstWrite -1}
		weights_1_16 {Type I LastRead -1 FirstWrite -1}
		weights_1_17 {Type I LastRead -1 FirstWrite -1}
		weights_1_18 {Type I LastRead -1 FirstWrite -1}
		weights_1_19 {Type I LastRead -1 FirstWrite -1}
		weights_1_20 {Type I LastRead -1 FirstWrite -1}
		weights_1_21 {Type I LastRead -1 FirstWrite -1}
		weights_1_22 {Type I LastRead -1 FirstWrite -1}
		weights_1_23 {Type I LastRead -1 FirstWrite -1}
		weights_1_24 {Type I LastRead -1 FirstWrite -1}
		weights_1_25 {Type I LastRead -1 FirstWrite -1}
		weights_1_26 {Type I LastRead -1 FirstWrite -1}
		weights_1_27 {Type I LastRead -1 FirstWrite -1}
		weights_1_28 {Type I LastRead -1 FirstWrite -1}
		weights_1_29 {Type I LastRead -1 FirstWrite -1}
		weights_1_30 {Type I LastRead -1 FirstWrite -1}
		weights_1_31 {Type I LastRead -1 FirstWrite -1}
		weights_1_32 {Type I LastRead -1 FirstWrite -1}
		weights_1_33 {Type I LastRead -1 FirstWrite -1}
		weights_1_34 {Type I LastRead -1 FirstWrite -1}
		weights_1_35 {Type I LastRead -1 FirstWrite -1}
		weights_1_36 {Type I LastRead -1 FirstWrite -1}
		weights_1_37 {Type I LastRead -1 FirstWrite -1}
		weights_1_38 {Type I LastRead -1 FirstWrite -1}
		weights_1_39 {Type I LastRead -1 FirstWrite -1}
		weights_1_40 {Type I LastRead -1 FirstWrite -1}
		weights_1_41 {Type I LastRead -1 FirstWrite -1}
		weights_1_42 {Type I LastRead -1 FirstWrite -1}
		weights_1_43 {Type I LastRead -1 FirstWrite -1}
		weights_1_44 {Type I LastRead -1 FirstWrite -1}
		weights_1_45 {Type I LastRead -1 FirstWrite -1}
		weights_1_46 {Type I LastRead -1 FirstWrite -1}
		weights_1_47 {Type I LastRead -1 FirstWrite -1}
		hidden_bias_1 {Type I LastRead -1 FirstWrite -1}
		weights_2_0 {Type I LastRead -1 FirstWrite -1}
		weights_2_1 {Type I LastRead -1 FirstWrite -1}
		weights_2_2 {Type I LastRead -1 FirstWrite -1}
		weights_2_3 {Type I LastRead -1 FirstWrite -1}
		weights_2_4 {Type I LastRead -1 FirstWrite -1}
		weights_2_5 {Type I LastRead -1 FirstWrite -1}
		weights_2_6 {Type I LastRead -1 FirstWrite -1}
		weights_2_7 {Type I LastRead -1 FirstWrite -1}
		weights_2_8 {Type I LastRead -1 FirstWrite -1}
		weights_2_9 {Type I LastRead -1 FirstWrite -1}
		weights_2_10 {Type I LastRead -1 FirstWrite -1}
		weights_2_11 {Type I LastRead -1 FirstWrite -1}
		weights_2_12 {Type I LastRead -1 FirstWrite -1}
		weights_2_13 {Type I LastRead -1 FirstWrite -1}
		weights_2_14 {Type I LastRead -1 FirstWrite -1}
		weights_2_15 {Type I LastRead -1 FirstWrite -1}
		weights_2_16 {Type I LastRead -1 FirstWrite -1}
		weights_2_17 {Type I LastRead -1 FirstWrite -1}
		weights_2_18 {Type I LastRead -1 FirstWrite -1}
		weights_2_19 {Type I LastRead -1 FirstWrite -1}
		weights_2_20 {Type I LastRead -1 FirstWrite -1}
		weights_2_21 {Type I LastRead -1 FirstWrite -1}
		weights_2_22 {Type I LastRead -1 FirstWrite -1}
		weights_2_23 {Type I LastRead -1 FirstWrite -1}
		hidden_bias_2 {Type I LastRead -1 FirstWrite -1}
		output_weights_0 {Type I LastRead -1 FirstWrite -1}
		output_weights_1 {Type I LastRead -1 FirstWrite -1}
		output_weights_2 {Type I LastRead -1 FirstWrite -1}
		output_weights_3 {Type I LastRead -1 FirstWrite -1}
		output_weights_4 {Type I LastRead -1 FirstWrite -1}
		output_weights_5 {Type I LastRead -1 FirstWrite -1}
		output_weights_6 {Type I LastRead -1 FirstWrite -1}
		output_weights_7 {Type I LastRead -1 FirstWrite -1}
		output_weights_8 {Type I LastRead -1 FirstWrite -1}
		output_weights_9 {Type I LastRead -1 FirstWrite -1}
		output_weights_10 {Type I LastRead -1 FirstWrite -1}
		output_weights_11 {Type I LastRead -1 FirstWrite -1}
		output_bias {Type I LastRead -1 FirstWrite -1}}
	MLP_Pipeline_1 {
		input_features {Type O LastRead -1 FirstWrite 0}}
	MLP_Pipeline_2 {
		input_features_casted {Type O LastRead -1 FirstWrite 0}}
	MLP_Pipeline_3 {
		hidden_layer_1 {Type O LastRead -1 FirstWrite 0}}
	MLP_Pipeline_4 {
		hidden_layer_2 {Type O LastRead -1 FirstWrite 0}}
	MLP_Pipeline_5 {
		output_layer {Type O LastRead -1 FirstWrite 0}}
	MLP_Pipeline_6 {
		output_layer_casted {Type O LastRead -1 FirstWrite 0}}
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
		tmp_dest_V_out {Type O LastRead -1 FirstWrite 1}}
	MLP_Pipeline_VITIS_LOOP_69_2 {
		input_features {Type I LastRead 0 FirstWrite -1}
		input_features_casted {Type O LastRead -1 FirstWrite 28}}
	MLP_Pipeline_VITIS_LOOP_77_3 {
		hidden_layer_1 {Type O LastRead -1 FirstWrite 202}
		input_features_casted_load {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_1 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_2 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_3 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_4 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_5 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_6 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_7 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_8 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_9 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_10 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_11 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_12 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_13 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_14 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_15 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_16 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_17 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_18 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_19 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_20 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_21 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_22 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_23 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_24 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_25 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_26 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_27 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_28 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_29 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_30 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_31 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_32 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_33 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_34 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_35 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_36 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_37 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_38 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_39 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_40 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_41 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_42 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_43 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_44 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_45 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_46 {Type I LastRead 0 FirstWrite -1}
		input_features_casted_load_47 {Type I LastRead 0 FirstWrite -1}
		weights_1_0 {Type I LastRead -1 FirstWrite -1}
		weights_1_1 {Type I LastRead -1 FirstWrite -1}
		weights_1_2 {Type I LastRead -1 FirstWrite -1}
		weights_1_3 {Type I LastRead -1 FirstWrite -1}
		weights_1_4 {Type I LastRead -1 FirstWrite -1}
		weights_1_5 {Type I LastRead -1 FirstWrite -1}
		weights_1_6 {Type I LastRead -1 FirstWrite -1}
		weights_1_7 {Type I LastRead -1 FirstWrite -1}
		weights_1_8 {Type I LastRead -1 FirstWrite -1}
		weights_1_9 {Type I LastRead -1 FirstWrite -1}
		weights_1_10 {Type I LastRead -1 FirstWrite -1}
		weights_1_11 {Type I LastRead -1 FirstWrite -1}
		weights_1_12 {Type I LastRead -1 FirstWrite -1}
		weights_1_13 {Type I LastRead -1 FirstWrite -1}
		weights_1_14 {Type I LastRead -1 FirstWrite -1}
		weights_1_15 {Type I LastRead -1 FirstWrite -1}
		weights_1_16 {Type I LastRead -1 FirstWrite -1}
		weights_1_17 {Type I LastRead -1 FirstWrite -1}
		weights_1_18 {Type I LastRead -1 FirstWrite -1}
		weights_1_19 {Type I LastRead -1 FirstWrite -1}
		weights_1_20 {Type I LastRead -1 FirstWrite -1}
		weights_1_21 {Type I LastRead -1 FirstWrite -1}
		weights_1_22 {Type I LastRead -1 FirstWrite -1}
		weights_1_23 {Type I LastRead -1 FirstWrite -1}
		weights_1_24 {Type I LastRead -1 FirstWrite -1}
		weights_1_25 {Type I LastRead -1 FirstWrite -1}
		weights_1_26 {Type I LastRead -1 FirstWrite -1}
		weights_1_27 {Type I LastRead -1 FirstWrite -1}
		weights_1_28 {Type I LastRead -1 FirstWrite -1}
		weights_1_29 {Type I LastRead -1 FirstWrite -1}
		weights_1_30 {Type I LastRead -1 FirstWrite -1}
		weights_1_31 {Type I LastRead -1 FirstWrite -1}
		weights_1_32 {Type I LastRead -1 FirstWrite -1}
		weights_1_33 {Type I LastRead -1 FirstWrite -1}
		weights_1_34 {Type I LastRead -1 FirstWrite -1}
		weights_1_35 {Type I LastRead -1 FirstWrite -1}
		weights_1_36 {Type I LastRead -1 FirstWrite -1}
		weights_1_37 {Type I LastRead -1 FirstWrite -1}
		weights_1_38 {Type I LastRead -1 FirstWrite -1}
		weights_1_39 {Type I LastRead -1 FirstWrite -1}
		weights_1_40 {Type I LastRead -1 FirstWrite -1}
		weights_1_41 {Type I LastRead -1 FirstWrite -1}
		weights_1_42 {Type I LastRead -1 FirstWrite -1}
		weights_1_43 {Type I LastRead -1 FirstWrite -1}
		weights_1_44 {Type I LastRead -1 FirstWrite -1}
		weights_1_45 {Type I LastRead -1 FirstWrite -1}
		weights_1_46 {Type I LastRead -1 FirstWrite -1}
		weights_1_47 {Type I LastRead -1 FirstWrite -1}
		hidden_bias_1 {Type I LastRead -1 FirstWrite -1}}
	MLP_Pipeline_VITIS_LOOP_94_5 {
		hidden_layer_2 {Type O LastRead -1 FirstWrite 106}
		hidden_layer_1_load {Type I LastRead 0 FirstWrite -1}
		hidden_layer_1_load_1 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_1_load_2 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_1_load_3 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_1_load_4 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_1_load_5 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_1_load_6 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_1_load_7 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_1_load_8 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_1_load_9 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_1_load_10 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_1_load_11 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_1_load_12 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_1_load_13 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_1_load_14 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_1_load_15 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_1_load_16 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_1_load_17 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_1_load_18 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_1_load_19 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_1_load_20 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_1_load_21 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_1_load_22 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_1_load_23 {Type I LastRead 0 FirstWrite -1}
		weights_2_0 {Type I LastRead -1 FirstWrite -1}
		weights_2_1 {Type I LastRead -1 FirstWrite -1}
		weights_2_2 {Type I LastRead -1 FirstWrite -1}
		weights_2_3 {Type I LastRead -1 FirstWrite -1}
		weights_2_4 {Type I LastRead -1 FirstWrite -1}
		weights_2_5 {Type I LastRead -1 FirstWrite -1}
		weights_2_6 {Type I LastRead -1 FirstWrite -1}
		weights_2_7 {Type I LastRead -1 FirstWrite -1}
		weights_2_8 {Type I LastRead -1 FirstWrite -1}
		weights_2_9 {Type I LastRead -1 FirstWrite -1}
		weights_2_10 {Type I LastRead -1 FirstWrite -1}
		weights_2_11 {Type I LastRead -1 FirstWrite -1}
		weights_2_12 {Type I LastRead -1 FirstWrite -1}
		weights_2_13 {Type I LastRead -1 FirstWrite -1}
		weights_2_14 {Type I LastRead -1 FirstWrite -1}
		weights_2_15 {Type I LastRead -1 FirstWrite -1}
		weights_2_16 {Type I LastRead -1 FirstWrite -1}
		weights_2_17 {Type I LastRead -1 FirstWrite -1}
		weights_2_18 {Type I LastRead -1 FirstWrite -1}
		weights_2_19 {Type I LastRead -1 FirstWrite -1}
		weights_2_20 {Type I LastRead -1 FirstWrite -1}
		weights_2_21 {Type I LastRead -1 FirstWrite -1}
		weights_2_22 {Type I LastRead -1 FirstWrite -1}
		weights_2_23 {Type I LastRead -1 FirstWrite -1}
		hidden_bias_2 {Type I LastRead -1 FirstWrite -1}}
	MLP_Pipeline_VITIS_LOOP_111_7 {
		output_layer {Type O LastRead -1 FirstWrite 56}
		hidden_layer_2_load {Type I LastRead 0 FirstWrite -1}
		hidden_layer_2_load_1 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_2_load_2 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_2_load_3 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_2_load_4 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_2_load_5 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_2_load_6 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_2_load_7 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_2_load_8 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_2_load_9 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_2_load_10 {Type I LastRead 0 FirstWrite -1}
		hidden_layer_2_load_11 {Type I LastRead 0 FirstWrite -1}
		output_weights_0 {Type I LastRead -1 FirstWrite -1}
		output_weights_1 {Type I LastRead -1 FirstWrite -1}
		output_weights_2 {Type I LastRead -1 FirstWrite -1}
		output_weights_3 {Type I LastRead -1 FirstWrite -1}
		output_weights_4 {Type I LastRead -1 FirstWrite -1}
		output_weights_5 {Type I LastRead -1 FirstWrite -1}
		output_weights_6 {Type I LastRead -1 FirstWrite -1}
		output_weights_7 {Type I LastRead -1 FirstWrite -1}
		output_weights_8 {Type I LastRead -1 FirstWrite -1}
		output_weights_9 {Type I LastRead -1 FirstWrite -1}
		output_weights_10 {Type I LastRead -1 FirstWrite -1}
		output_weights_11 {Type I LastRead -1 FirstWrite -1}
		output_bias {Type I LastRead -1 FirstWrite -1}}
	MLP_Pipeline_VITIS_LOOP_123_9 {
		output_layer {Type I LastRead 0 FirstWrite -1}
		output_layer_casted {Type O LastRead -1 FirstWrite 5}}
	MLP_Pipeline_VITIS_LOOP_128_10 {
		output_layer_casted {Type I LastRead 0 FirstWrite -1}
		tmp_keep_V_reload {Type I LastRead 0 FirstWrite -1}
		tmp_strb_V_reload {Type I LastRead 0 FirstWrite -1}
		tmp_user_V_reload {Type I LastRead 0 FirstWrite -1}
		tmp_id_V_reload {Type I LastRead 0 FirstWrite -1}
		tmp_dest_V_reload {Type I LastRead 0 FirstWrite -1}
		out_data_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_data_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_data_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_data_V_user_V {Type O LastRead -1 FirstWrite 1}
		out_data_V_last_V {Type O LastRead -1 FirstWrite 1}
		out_data_V_id_V {Type O LastRead -1 FirstWrite 1}
		out_data_V_dest_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_data_V_data_V { axis {  { in_data_TDATA in_data 0 32 } } }
	in_data_V_keep_V { axis {  { in_data_TKEEP in_data 0 4 } } }
	in_data_V_strb_V { axis {  { in_data_TSTRB in_data 0 4 } } }
	in_data_V_user_V { axis {  { in_data_TUSER in_data 0 2 } } }
	in_data_V_last_V { axis {  { in_data_TLAST in_data 0 1 } } }
	in_data_V_id_V { axis {  { in_data_TID in_data 0 5 } } }
	in_data_V_dest_V { axis {  { in_data_TVALID in_vld 0 1 }  { in_data_TREADY in_acc 1 1 }  { in_data_TDEST in_data 0 6 } } }
	out_data_V_data_V { axis {  { out_data_TDATA out_data 1 32 } } }
	out_data_V_keep_V { axis {  { out_data_TKEEP out_data 1 4 } } }
	out_data_V_strb_V { axis {  { out_data_TSTRB out_data 1 4 } } }
	out_data_V_user_V { axis {  { out_data_TUSER out_data 1 2 } } }
	out_data_V_last_V { axis {  { out_data_TLAST out_data 1 1 } } }
	out_data_V_id_V { axis {  { out_data_TID out_data 1 5 } } }
	out_data_V_dest_V { axis {  { out_data_TVALID out_vld 1 1 }  { out_data_TREADY out_acc 0 1 }  { out_data_TDEST out_data 1 6 } } }
}

set maxi_interface_dict [dict create]

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
