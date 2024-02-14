set moduleName MLP_Pipeline_VITIS_LOOP_111_7
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
set C_modelName {MLP_Pipeline_VITIS_LOOP_111_7}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_layer float 32 regular {array 5 { 0 3 } 0 1 }  }
	{ hidden_layer_2_load float 32 regular  }
	{ hidden_layer_2_load_1 float 32 regular  }
	{ hidden_layer_2_load_2 float 32 regular  }
	{ hidden_layer_2_load_3 float 32 regular  }
	{ hidden_layer_2_load_4 float 32 regular  }
	{ hidden_layer_2_load_5 float 32 regular  }
	{ hidden_layer_2_load_6 float 32 regular  }
	{ hidden_layer_2_load_7 float 32 regular  }
	{ hidden_layer_2_load_8 float 32 regular  }
	{ hidden_layer_2_load_9 float 32 regular  }
	{ hidden_layer_2_load_10 float 32 regular  }
	{ hidden_layer_2_load_11 float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_layer", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_layer_2_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_2_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_2_load_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_2_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_2_load_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_2_load_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_2_load_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_2_load_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_2_load_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_2_load_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_2_load_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_2_load_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 135
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_layer_address0 sc_out sc_lv 3 signal 0 } 
	{ output_layer_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_layer_we0 sc_out sc_logic 1 signal 0 } 
	{ output_layer_d0 sc_out sc_lv 32 signal 0 } 
	{ hidden_layer_2_load sc_in sc_lv 32 signal 1 } 
	{ hidden_layer_2_load_1 sc_in sc_lv 32 signal 2 } 
	{ hidden_layer_2_load_2 sc_in sc_lv 32 signal 3 } 
	{ hidden_layer_2_load_3 sc_in sc_lv 32 signal 4 } 
	{ hidden_layer_2_load_4 sc_in sc_lv 32 signal 5 } 
	{ hidden_layer_2_load_5 sc_in sc_lv 32 signal 6 } 
	{ hidden_layer_2_load_6 sc_in sc_lv 32 signal 7 } 
	{ hidden_layer_2_load_7 sc_in sc_lv 32 signal 8 } 
	{ hidden_layer_2_load_8 sc_in sc_lv 32 signal 9 } 
	{ hidden_layer_2_load_9 sc_in sc_lv 32 signal 10 } 
	{ hidden_layer_2_load_10 sc_in sc_lv 32 signal 11 } 
	{ hidden_layer_2_load_11 sc_in sc_lv 32 signal 12 } 
	{ grp_fu_2371_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2371_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2371_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2371_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2371_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2375_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2375_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2375_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2375_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2375_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2379_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2379_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2379_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2379_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2379_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2383_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2383_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2383_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2383_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2383_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2387_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2387_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2387_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2387_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2387_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2391_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2391_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2391_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2391_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2391_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2395_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2395_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2395_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2395_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2395_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2399_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2399_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2399_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2399_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2399_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2403_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2403_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2403_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2403_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2403_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2407_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2407_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2407_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2407_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2407_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2411_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2411_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2411_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2411_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2411_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2415_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2415_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2415_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2415_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2415_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2419_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2419_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2419_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2419_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2419_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2471_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2471_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2471_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2471_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2475_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2475_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2475_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2475_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2479_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2479_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2479_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2479_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2483_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2483_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2483_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2483_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2487_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2487_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2487_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2487_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2491_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2491_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2491_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2491_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2495_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2495_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2495_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2495_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2499_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2499_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2499_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2499_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2503_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2503_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2503_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2503_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2507_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2507_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2507_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2507_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2511_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2511_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2511_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2511_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2515_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2515_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2515_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2515_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_layer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "output_layer", "role": "address0" }} , 
 	{ "name": "output_layer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_layer", "role": "ce0" }} , 
 	{ "name": "output_layer_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_layer", "role": "we0" }} , 
 	{ "name": "output_layer_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_layer", "role": "d0" }} , 
 	{ "name": "hidden_layer_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_2_load", "role": "default" }} , 
 	{ "name": "hidden_layer_2_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_2_load_1", "role": "default" }} , 
 	{ "name": "hidden_layer_2_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_2_load_2", "role": "default" }} , 
 	{ "name": "hidden_layer_2_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_2_load_3", "role": "default" }} , 
 	{ "name": "hidden_layer_2_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_2_load_4", "role": "default" }} , 
 	{ "name": "hidden_layer_2_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_2_load_5", "role": "default" }} , 
 	{ "name": "hidden_layer_2_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_2_load_6", "role": "default" }} , 
 	{ "name": "hidden_layer_2_load_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_2_load_7", "role": "default" }} , 
 	{ "name": "hidden_layer_2_load_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_2_load_8", "role": "default" }} , 
 	{ "name": "hidden_layer_2_load_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_2_load_9", "role": "default" }} , 
 	{ "name": "hidden_layer_2_load_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_2_load_10", "role": "default" }} , 
 	{ "name": "hidden_layer_2_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_2_load_11", "role": "default" }} , 
 	{ "name": "grp_fu_2371_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2371_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2371_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2371_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2371_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2371_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2371_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2371_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2371_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2371_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2375_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2375_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2375_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2375_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2375_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2375_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2375_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2375_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2375_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2375_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2379_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2379_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2379_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2379_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2379_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2379_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2379_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2379_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2379_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2379_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2383_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2383_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2383_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2383_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2383_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2383_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2383_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2383_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2383_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2383_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2387_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2387_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2387_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2387_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2387_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2387_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2387_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2387_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2387_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2387_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2391_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2391_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2391_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2391_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2391_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2391_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2391_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2391_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2391_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2391_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2395_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2395_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2395_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2395_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2395_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2395_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2395_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2395_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2395_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2395_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2399_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2399_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2399_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2399_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2399_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2399_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2399_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2399_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2399_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2399_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2403_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2403_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2403_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2403_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2403_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2403_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2403_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2403_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2403_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2403_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2407_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2407_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2407_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2407_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2407_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2407_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2407_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2407_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2407_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2407_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2411_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2411_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2411_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2411_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2411_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2411_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2411_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2411_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2411_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2411_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2415_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2415_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2415_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2415_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2415_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2415_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2415_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2415_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2415_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2415_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2419_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2419_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2419_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2419_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2419_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2419_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2419_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2419_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2419_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2419_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2471_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2471_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2471_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2471_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2471_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2471_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2471_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2471_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2475_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2475_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2475_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2475_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2475_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2475_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2475_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2475_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2479_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2479_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2479_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2479_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2479_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2479_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2479_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2479_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2483_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2483_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2483_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2483_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2483_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2483_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2483_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2483_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2487_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2487_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2487_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2487_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2487_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2487_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2487_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2487_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2491_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2491_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2491_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2491_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2491_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2491_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2491_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2491_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2495_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2495_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2495_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2495_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2495_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2495_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2495_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2495_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2499_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2499_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2499_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2499_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2499_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2499_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2499_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2499_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2503_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2503_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2503_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2503_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2503_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2503_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2503_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2503_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2507_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2507_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2507_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2507_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2507_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2507_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2507_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2507_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2511_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2511_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2511_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2511_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2511_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2511_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2511_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2511_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2515_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2515_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2515_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2515_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2515_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2515_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2515_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2515_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_weights_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_weights_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_weights_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_weights_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_weights_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_weights_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_weights_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_weights_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_weights_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_weights_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_weights_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_weights_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_bias_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		output_bias {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "62", "Max" : "62"}
	, {"Name" : "Interval", "Min" : "62", "Max" : "62"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	output_layer { ap_memory {  { output_layer_address0 mem_address 1 3 }  { output_layer_ce0 mem_ce 1 1 }  { output_layer_we0 mem_we 1 1 }  { output_layer_d0 mem_din 1 32 } } }
	hidden_layer_2_load { ap_none {  { hidden_layer_2_load in_data 0 32 } } }
	hidden_layer_2_load_1 { ap_none {  { hidden_layer_2_load_1 in_data 0 32 } } }
	hidden_layer_2_load_2 { ap_none {  { hidden_layer_2_load_2 in_data 0 32 } } }
	hidden_layer_2_load_3 { ap_none {  { hidden_layer_2_load_3 in_data 0 32 } } }
	hidden_layer_2_load_4 { ap_none {  { hidden_layer_2_load_4 in_data 0 32 } } }
	hidden_layer_2_load_5 { ap_none {  { hidden_layer_2_load_5 in_data 0 32 } } }
	hidden_layer_2_load_6 { ap_none {  { hidden_layer_2_load_6 in_data 0 32 } } }
	hidden_layer_2_load_7 { ap_none {  { hidden_layer_2_load_7 in_data 0 32 } } }
	hidden_layer_2_load_8 { ap_none {  { hidden_layer_2_load_8 in_data 0 32 } } }
	hidden_layer_2_load_9 { ap_none {  { hidden_layer_2_load_9 in_data 0 32 } } }
	hidden_layer_2_load_10 { ap_none {  { hidden_layer_2_load_10 in_data 0 32 } } }
	hidden_layer_2_load_11 { ap_none {  { hidden_layer_2_load_11 in_data 0 32 } } }
}
