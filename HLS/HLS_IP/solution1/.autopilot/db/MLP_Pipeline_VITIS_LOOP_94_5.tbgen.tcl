set moduleName MLP_Pipeline_VITIS_LOOP_94_5
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
set C_modelName {MLP_Pipeline_VITIS_LOOP_94_5}
set C_modelType { void 0 }
set C_modelArgList {
	{ hidden_layer_2 float 32 regular {array 12 { 0 3 } 0 1 }  }
	{ hidden_layer_1_load float 32 regular  }
	{ hidden_layer_1_load_1 float 32 regular  }
	{ hidden_layer_1_load_2 float 32 regular  }
	{ hidden_layer_1_load_3 float 32 regular  }
	{ hidden_layer_1_load_4 float 32 regular  }
	{ hidden_layer_1_load_5 float 32 regular  }
	{ hidden_layer_1_load_6 float 32 regular  }
	{ hidden_layer_1_load_7 float 32 regular  }
	{ hidden_layer_1_load_8 float 32 regular  }
	{ hidden_layer_1_load_9 float 32 regular  }
	{ hidden_layer_1_load_10 float 32 regular  }
	{ hidden_layer_1_load_11 float 32 regular  }
	{ hidden_layer_1_load_12 float 32 regular  }
	{ hidden_layer_1_load_13 float 32 regular  }
	{ hidden_layer_1_load_14 float 32 regular  }
	{ hidden_layer_1_load_15 float 32 regular  }
	{ hidden_layer_1_load_16 float 32 regular  }
	{ hidden_layer_1_load_17 float 32 regular  }
	{ hidden_layer_1_load_18 float 32 regular  }
	{ hidden_layer_1_load_19 float 32 regular  }
	{ hidden_layer_1_load_20 float 32 regular  }
	{ hidden_layer_1_load_21 float 32 regular  }
	{ hidden_layer_1_load_22 float 32 regular  }
	{ hidden_layer_1_load_23 float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "hidden_layer_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_layer_1_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_1_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_1_load_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_1_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_1_load_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_1_load_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_1_load_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_1_load_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_1_load_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_1_load_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_1_load_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_1_load_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_1_load_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_1_load_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_1_load_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_1_load_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_1_load_16", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_1_load_17", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_1_load_18", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_1_load_19", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_1_load_20", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_1_load_21", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_1_load_22", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_layer_1_load_23", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 260
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ hidden_layer_2_address0 sc_out sc_lv 4 signal 0 } 
	{ hidden_layer_2_ce0 sc_out sc_logic 1 signal 0 } 
	{ hidden_layer_2_we0 sc_out sc_logic 1 signal 0 } 
	{ hidden_layer_2_d0 sc_out sc_lv 32 signal 0 } 
	{ hidden_layer_1_load sc_in sc_lv 32 signal 1 } 
	{ hidden_layer_1_load_1 sc_in sc_lv 32 signal 2 } 
	{ hidden_layer_1_load_2 sc_in sc_lv 32 signal 3 } 
	{ hidden_layer_1_load_3 sc_in sc_lv 32 signal 4 } 
	{ hidden_layer_1_load_4 sc_in sc_lv 32 signal 5 } 
	{ hidden_layer_1_load_5 sc_in sc_lv 32 signal 6 } 
	{ hidden_layer_1_load_6 sc_in sc_lv 32 signal 7 } 
	{ hidden_layer_1_load_7 sc_in sc_lv 32 signal 8 } 
	{ hidden_layer_1_load_8 sc_in sc_lv 32 signal 9 } 
	{ hidden_layer_1_load_9 sc_in sc_lv 32 signal 10 } 
	{ hidden_layer_1_load_10 sc_in sc_lv 32 signal 11 } 
	{ hidden_layer_1_load_11 sc_in sc_lv 32 signal 12 } 
	{ hidden_layer_1_load_12 sc_in sc_lv 32 signal 13 } 
	{ hidden_layer_1_load_13 sc_in sc_lv 32 signal 14 } 
	{ hidden_layer_1_load_14 sc_in sc_lv 32 signal 15 } 
	{ hidden_layer_1_load_15 sc_in sc_lv 32 signal 16 } 
	{ hidden_layer_1_load_16 sc_in sc_lv 32 signal 17 } 
	{ hidden_layer_1_load_17 sc_in sc_lv 32 signal 18 } 
	{ hidden_layer_1_load_18 sc_in sc_lv 32 signal 19 } 
	{ hidden_layer_1_load_19 sc_in sc_lv 32 signal 20 } 
	{ hidden_layer_1_load_20 sc_in sc_lv 32 signal 21 } 
	{ hidden_layer_1_load_21 sc_in sc_lv 32 signal 22 } 
	{ hidden_layer_1_load_22 sc_in sc_lv 32 signal 23 } 
	{ hidden_layer_1_load_23 sc_in sc_lv 32 signal 24 } 
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
	{ grp_fu_2423_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2423_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2423_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2423_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2423_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2427_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2427_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2427_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2427_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2427_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2431_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2431_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2431_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2431_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2431_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2435_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2435_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2435_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2435_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2435_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2439_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2439_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2439_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2439_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2439_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2443_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2443_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2443_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2443_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2443_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2447_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2447_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2447_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2447_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2447_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2451_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2451_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2451_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2451_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2451_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2455_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2455_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2455_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2455_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2455_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2459_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2459_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2459_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2459_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2459_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2463_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2463_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2463_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2463_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2463_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2467_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2467_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2467_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2467_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2467_p_ce sc_out sc_logic 1 signal -1 } 
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
	{ grp_fu_2519_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2519_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2519_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2519_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2523_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2523_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2523_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2523_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2527_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2527_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2527_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2527_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2531_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2531_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2531_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2531_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2535_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2535_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2535_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2535_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2539_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2539_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2539_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2539_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2543_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2543_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2543_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2543_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2547_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2547_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2547_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2547_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2551_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2551_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2551_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2551_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2555_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2555_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2555_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2555_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2559_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2559_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2559_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2559_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2563_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2563_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2563_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2563_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2567_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2567_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2567_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_2567_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_2567_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "hidden_layer_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hidden_layer_2", "role": "address0" }} , 
 	{ "name": "hidden_layer_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hidden_layer_2", "role": "ce0" }} , 
 	{ "name": "hidden_layer_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hidden_layer_2", "role": "we0" }} , 
 	{ "name": "hidden_layer_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_2", "role": "d0" }} , 
 	{ "name": "hidden_layer_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_1_load", "role": "default" }} , 
 	{ "name": "hidden_layer_1_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_1_load_1", "role": "default" }} , 
 	{ "name": "hidden_layer_1_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_1_load_2", "role": "default" }} , 
 	{ "name": "hidden_layer_1_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_1_load_3", "role": "default" }} , 
 	{ "name": "hidden_layer_1_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_1_load_4", "role": "default" }} , 
 	{ "name": "hidden_layer_1_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_1_load_5", "role": "default" }} , 
 	{ "name": "hidden_layer_1_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_1_load_6", "role": "default" }} , 
 	{ "name": "hidden_layer_1_load_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_1_load_7", "role": "default" }} , 
 	{ "name": "hidden_layer_1_load_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_1_load_8", "role": "default" }} , 
 	{ "name": "hidden_layer_1_load_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_1_load_9", "role": "default" }} , 
 	{ "name": "hidden_layer_1_load_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_1_load_10", "role": "default" }} , 
 	{ "name": "hidden_layer_1_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_1_load_11", "role": "default" }} , 
 	{ "name": "hidden_layer_1_load_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_1_load_12", "role": "default" }} , 
 	{ "name": "hidden_layer_1_load_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_1_load_13", "role": "default" }} , 
 	{ "name": "hidden_layer_1_load_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_1_load_14", "role": "default" }} , 
 	{ "name": "hidden_layer_1_load_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_1_load_15", "role": "default" }} , 
 	{ "name": "hidden_layer_1_load_16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_1_load_16", "role": "default" }} , 
 	{ "name": "hidden_layer_1_load_17", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_1_load_17", "role": "default" }} , 
 	{ "name": "hidden_layer_1_load_18", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_1_load_18", "role": "default" }} , 
 	{ "name": "hidden_layer_1_load_19", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_1_load_19", "role": "default" }} , 
 	{ "name": "hidden_layer_1_load_20", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_1_load_20", "role": "default" }} , 
 	{ "name": "hidden_layer_1_load_21", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_1_load_21", "role": "default" }} , 
 	{ "name": "hidden_layer_1_load_22", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_1_load_22", "role": "default" }} , 
 	{ "name": "hidden_layer_1_load_23", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_1_load_23", "role": "default" }} , 
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
 	{ "name": "grp_fu_2423_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2423_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2423_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2423_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2423_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2423_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2423_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2423_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2423_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2423_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2427_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2427_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2427_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2427_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2427_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2427_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2427_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2427_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2427_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2427_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2431_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2431_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2431_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2431_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2431_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2431_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2431_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2431_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2431_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2431_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2435_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2435_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2435_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2435_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2435_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2435_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2435_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2435_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2435_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2435_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2439_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2439_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2439_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2439_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2439_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2439_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2439_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2439_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2439_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2439_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2443_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2443_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2443_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2443_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2443_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2443_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2443_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2443_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2443_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2443_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2447_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2447_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2447_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2447_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2447_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2447_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2447_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2447_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2447_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2447_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2451_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2451_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2451_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2451_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2451_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2451_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2451_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2451_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2451_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2451_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2455_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2455_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2455_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2455_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2455_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2455_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2455_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2455_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2455_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2455_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2459_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2459_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2459_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2459_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2459_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2459_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2459_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2459_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2459_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2459_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2463_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2463_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2463_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2463_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2463_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2463_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2463_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2463_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2463_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2463_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2467_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2467_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2467_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2467_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2467_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2467_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2467_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2467_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2467_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2467_p_ce", "role": "default" }} , 
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
 	{ "name": "grp_fu_2515_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2515_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2519_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2519_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2519_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2519_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2519_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2519_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2519_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2519_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2523_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2523_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2523_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2523_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2523_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2523_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2523_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2523_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2527_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2527_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2527_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2527_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2527_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2527_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2527_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2527_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2531_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2531_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2531_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2531_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2531_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2531_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2531_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2531_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2535_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2535_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2535_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2535_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2535_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2535_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2535_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2535_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2539_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2539_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2539_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2539_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2539_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2539_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2539_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2539_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2543_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2543_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2543_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2543_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2543_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2543_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2543_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2543_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2547_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2547_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2547_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2547_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2547_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2547_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2547_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2547_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2551_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2551_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2551_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2551_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2551_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2551_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2551_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2551_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2555_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2555_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2555_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2555_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2555_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2555_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2555_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2555_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2559_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2559_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2559_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2559_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2559_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2559_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2559_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2559_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2563_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2563_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2563_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2563_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2563_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2563_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2563_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2563_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2567_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2567_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2567_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2567_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2567_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_2567_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2567_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2567_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2567_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2567_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_16_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_17_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_18_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_19_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_20_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_21_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_22_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_23_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hidden_bias_2_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		hidden_bias_2 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "119", "Max" : "119"}
	, {"Name" : "Interval", "Min" : "119", "Max" : "119"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	hidden_layer_2 { ap_memory {  { hidden_layer_2_address0 mem_address 1 4 }  { hidden_layer_2_ce0 mem_ce 1 1 }  { hidden_layer_2_we0 mem_we 1 1 }  { hidden_layer_2_d0 mem_din 1 32 } } }
	hidden_layer_1_load { ap_none {  { hidden_layer_1_load in_data 0 32 } } }
	hidden_layer_1_load_1 { ap_none {  { hidden_layer_1_load_1 in_data 0 32 } } }
	hidden_layer_1_load_2 { ap_none {  { hidden_layer_1_load_2 in_data 0 32 } } }
	hidden_layer_1_load_3 { ap_none {  { hidden_layer_1_load_3 in_data 0 32 } } }
	hidden_layer_1_load_4 { ap_none {  { hidden_layer_1_load_4 in_data 0 32 } } }
	hidden_layer_1_load_5 { ap_none {  { hidden_layer_1_load_5 in_data 0 32 } } }
	hidden_layer_1_load_6 { ap_none {  { hidden_layer_1_load_6 in_data 0 32 } } }
	hidden_layer_1_load_7 { ap_none {  { hidden_layer_1_load_7 in_data 0 32 } } }
	hidden_layer_1_load_8 { ap_none {  { hidden_layer_1_load_8 in_data 0 32 } } }
	hidden_layer_1_load_9 { ap_none {  { hidden_layer_1_load_9 in_data 0 32 } } }
	hidden_layer_1_load_10 { ap_none {  { hidden_layer_1_load_10 in_data 0 32 } } }
	hidden_layer_1_load_11 { ap_none {  { hidden_layer_1_load_11 in_data 0 32 } } }
	hidden_layer_1_load_12 { ap_none {  { hidden_layer_1_load_12 in_data 0 32 } } }
	hidden_layer_1_load_13 { ap_none {  { hidden_layer_1_load_13 in_data 0 32 } } }
	hidden_layer_1_load_14 { ap_none {  { hidden_layer_1_load_14 in_data 0 32 } } }
	hidden_layer_1_load_15 { ap_none {  { hidden_layer_1_load_15 in_data 0 32 } } }
	hidden_layer_1_load_16 { ap_none {  { hidden_layer_1_load_16 in_data 0 32 } } }
	hidden_layer_1_load_17 { ap_none {  { hidden_layer_1_load_17 in_data 0 32 } } }
	hidden_layer_1_load_18 { ap_none {  { hidden_layer_1_load_18 in_data 0 32 } } }
	hidden_layer_1_load_19 { ap_none {  { hidden_layer_1_load_19 in_data 0 32 } } }
	hidden_layer_1_load_20 { ap_none {  { hidden_layer_1_load_20 in_data 0 32 } } }
	hidden_layer_1_load_21 { ap_none {  { hidden_layer_1_load_21 in_data 0 32 } } }
	hidden_layer_1_load_22 { ap_none {  { hidden_layer_1_load_22 in_data 0 32 } } }
	hidden_layer_1_load_23 { ap_none {  { hidden_layer_1_load_23 in_data 0 32 } } }
}
