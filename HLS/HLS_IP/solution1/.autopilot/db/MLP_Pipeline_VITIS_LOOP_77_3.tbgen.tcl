set moduleName MLP_Pipeline_VITIS_LOOP_77_3
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
set C_modelName {MLP_Pipeline_VITIS_LOOP_77_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ hidden_layer_1 float 32 regular {array 24 { 0 3 } 0 1 }  }
	{ input_features_casted_load float 32 regular  }
	{ input_features_casted_load_1 float 32 regular  }
	{ input_features_casted_load_2 float 32 regular  }
	{ input_features_casted_load_3 float 32 regular  }
	{ input_features_casted_load_4 float 32 regular  }
	{ input_features_casted_load_5 float 32 regular  }
	{ input_features_casted_load_6 float 32 regular  }
	{ input_features_casted_load_7 float 32 regular  }
	{ input_features_casted_load_8 float 32 regular  }
	{ input_features_casted_load_9 float 32 regular  }
	{ input_features_casted_load_10 float 32 regular  }
	{ input_features_casted_load_11 float 32 regular  }
	{ input_features_casted_load_12 float 32 regular  }
	{ input_features_casted_load_13 float 32 regular  }
	{ input_features_casted_load_14 float 32 regular  }
	{ input_features_casted_load_15 float 32 regular  }
	{ input_features_casted_load_16 float 32 regular  }
	{ input_features_casted_load_17 float 32 regular  }
	{ input_features_casted_load_18 float 32 regular  }
	{ input_features_casted_load_19 float 32 regular  }
	{ input_features_casted_load_20 float 32 regular  }
	{ input_features_casted_load_21 float 32 regular  }
	{ input_features_casted_load_22 float 32 regular  }
	{ input_features_casted_load_23 float 32 regular  }
	{ input_features_casted_load_24 float 32 regular  }
	{ input_features_casted_load_25 float 32 regular  }
	{ input_features_casted_load_26 float 32 regular  }
	{ input_features_casted_load_27 float 32 regular  }
	{ input_features_casted_load_28 float 32 regular  }
	{ input_features_casted_load_29 float 32 regular  }
	{ input_features_casted_load_30 float 32 regular  }
	{ input_features_casted_load_31 float 32 regular  }
	{ input_features_casted_load_32 float 32 regular  }
	{ input_features_casted_load_33 float 32 regular  }
	{ input_features_casted_load_34 float 32 regular  }
	{ input_features_casted_load_35 float 32 regular  }
	{ input_features_casted_load_36 float 32 regular  }
	{ input_features_casted_load_37 float 32 regular  }
	{ input_features_casted_load_38 float 32 regular  }
	{ input_features_casted_load_39 float 32 regular  }
	{ input_features_casted_load_40 float 32 regular  }
	{ input_features_casted_load_41 float 32 regular  }
	{ input_features_casted_load_42 float 32 regular  }
	{ input_features_casted_load_43 float 32 regular  }
	{ input_features_casted_load_44 float 32 regular  }
	{ input_features_casted_load_45 float 32 regular  }
	{ input_features_casted_load_46 float 32 regular  }
	{ input_features_casted_load_47 float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "hidden_layer_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_features_casted_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_16", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_17", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_18", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_19", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_20", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_21", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_22", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_23", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_24", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_25", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_26", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_27", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_28", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_29", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_30", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_31", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_32", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_33", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_34", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_35", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_36", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_37", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_38", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_39", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_40", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_41", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_42", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_43", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_44", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_45", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_46", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_features_casted_load_47", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 284
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ hidden_layer_1_address0 sc_out sc_lv 5 signal 0 } 
	{ hidden_layer_1_ce0 sc_out sc_logic 1 signal 0 } 
	{ hidden_layer_1_we0 sc_out sc_logic 1 signal 0 } 
	{ hidden_layer_1_d0 sc_out sc_lv 32 signal 0 } 
	{ input_features_casted_load sc_in sc_lv 32 signal 1 } 
	{ input_features_casted_load_1 sc_in sc_lv 32 signal 2 } 
	{ input_features_casted_load_2 sc_in sc_lv 32 signal 3 } 
	{ input_features_casted_load_3 sc_in sc_lv 32 signal 4 } 
	{ input_features_casted_load_4 sc_in sc_lv 32 signal 5 } 
	{ input_features_casted_load_5 sc_in sc_lv 32 signal 6 } 
	{ input_features_casted_load_6 sc_in sc_lv 32 signal 7 } 
	{ input_features_casted_load_7 sc_in sc_lv 32 signal 8 } 
	{ input_features_casted_load_8 sc_in sc_lv 32 signal 9 } 
	{ input_features_casted_load_9 sc_in sc_lv 32 signal 10 } 
	{ input_features_casted_load_10 sc_in sc_lv 32 signal 11 } 
	{ input_features_casted_load_11 sc_in sc_lv 32 signal 12 } 
	{ input_features_casted_load_12 sc_in sc_lv 32 signal 13 } 
	{ input_features_casted_load_13 sc_in sc_lv 32 signal 14 } 
	{ input_features_casted_load_14 sc_in sc_lv 32 signal 15 } 
	{ input_features_casted_load_15 sc_in sc_lv 32 signal 16 } 
	{ input_features_casted_load_16 sc_in sc_lv 32 signal 17 } 
	{ input_features_casted_load_17 sc_in sc_lv 32 signal 18 } 
	{ input_features_casted_load_18 sc_in sc_lv 32 signal 19 } 
	{ input_features_casted_load_19 sc_in sc_lv 32 signal 20 } 
	{ input_features_casted_load_20 sc_in sc_lv 32 signal 21 } 
	{ input_features_casted_load_21 sc_in sc_lv 32 signal 22 } 
	{ input_features_casted_load_22 sc_in sc_lv 32 signal 23 } 
	{ input_features_casted_load_23 sc_in sc_lv 32 signal 24 } 
	{ input_features_casted_load_24 sc_in sc_lv 32 signal 25 } 
	{ input_features_casted_load_25 sc_in sc_lv 32 signal 26 } 
	{ input_features_casted_load_26 sc_in sc_lv 32 signal 27 } 
	{ input_features_casted_load_27 sc_in sc_lv 32 signal 28 } 
	{ input_features_casted_load_28 sc_in sc_lv 32 signal 29 } 
	{ input_features_casted_load_29 sc_in sc_lv 32 signal 30 } 
	{ input_features_casted_load_30 sc_in sc_lv 32 signal 31 } 
	{ input_features_casted_load_31 sc_in sc_lv 32 signal 32 } 
	{ input_features_casted_load_32 sc_in sc_lv 32 signal 33 } 
	{ input_features_casted_load_33 sc_in sc_lv 32 signal 34 } 
	{ input_features_casted_load_34 sc_in sc_lv 32 signal 35 } 
	{ input_features_casted_load_35 sc_in sc_lv 32 signal 36 } 
	{ input_features_casted_load_36 sc_in sc_lv 32 signal 37 } 
	{ input_features_casted_load_37 sc_in sc_lv 32 signal 38 } 
	{ input_features_casted_load_38 sc_in sc_lv 32 signal 39 } 
	{ input_features_casted_load_39 sc_in sc_lv 32 signal 40 } 
	{ input_features_casted_load_40 sc_in sc_lv 32 signal 41 } 
	{ input_features_casted_load_41 sc_in sc_lv 32 signal 42 } 
	{ input_features_casted_load_42 sc_in sc_lv 32 signal 43 } 
	{ input_features_casted_load_43 sc_in sc_lv 32 signal 44 } 
	{ input_features_casted_load_44 sc_in sc_lv 32 signal 45 } 
	{ input_features_casted_load_45 sc_in sc_lv 32 signal 46 } 
	{ input_features_casted_load_46 sc_in sc_lv 32 signal 47 } 
	{ input_features_casted_load_47 sc_in sc_lv 32 signal 48 } 
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
 	{ "name": "hidden_layer_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "hidden_layer_1", "role": "address0" }} , 
 	{ "name": "hidden_layer_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hidden_layer_1", "role": "ce0" }} , 
 	{ "name": "hidden_layer_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hidden_layer_1", "role": "we0" }} , 
 	{ "name": "hidden_layer_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hidden_layer_1", "role": "d0" }} , 
 	{ "name": "input_features_casted_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load", "role": "default" }} , 
 	{ "name": "input_features_casted_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_1", "role": "default" }} , 
 	{ "name": "input_features_casted_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_2", "role": "default" }} , 
 	{ "name": "input_features_casted_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_3", "role": "default" }} , 
 	{ "name": "input_features_casted_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_4", "role": "default" }} , 
 	{ "name": "input_features_casted_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_5", "role": "default" }} , 
 	{ "name": "input_features_casted_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_6", "role": "default" }} , 
 	{ "name": "input_features_casted_load_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_7", "role": "default" }} , 
 	{ "name": "input_features_casted_load_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_8", "role": "default" }} , 
 	{ "name": "input_features_casted_load_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_9", "role": "default" }} , 
 	{ "name": "input_features_casted_load_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_10", "role": "default" }} , 
 	{ "name": "input_features_casted_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_11", "role": "default" }} , 
 	{ "name": "input_features_casted_load_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_12", "role": "default" }} , 
 	{ "name": "input_features_casted_load_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_13", "role": "default" }} , 
 	{ "name": "input_features_casted_load_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_14", "role": "default" }} , 
 	{ "name": "input_features_casted_load_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_15", "role": "default" }} , 
 	{ "name": "input_features_casted_load_16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_16", "role": "default" }} , 
 	{ "name": "input_features_casted_load_17", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_17", "role": "default" }} , 
 	{ "name": "input_features_casted_load_18", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_18", "role": "default" }} , 
 	{ "name": "input_features_casted_load_19", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_19", "role": "default" }} , 
 	{ "name": "input_features_casted_load_20", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_20", "role": "default" }} , 
 	{ "name": "input_features_casted_load_21", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_21", "role": "default" }} , 
 	{ "name": "input_features_casted_load_22", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_22", "role": "default" }} , 
 	{ "name": "input_features_casted_load_23", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_23", "role": "default" }} , 
 	{ "name": "input_features_casted_load_24", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_24", "role": "default" }} , 
 	{ "name": "input_features_casted_load_25", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_25", "role": "default" }} , 
 	{ "name": "input_features_casted_load_26", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_26", "role": "default" }} , 
 	{ "name": "input_features_casted_load_27", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_27", "role": "default" }} , 
 	{ "name": "input_features_casted_load_28", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_28", "role": "default" }} , 
 	{ "name": "input_features_casted_load_29", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_29", "role": "default" }} , 
 	{ "name": "input_features_casted_load_30", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_30", "role": "default" }} , 
 	{ "name": "input_features_casted_load_31", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_31", "role": "default" }} , 
 	{ "name": "input_features_casted_load_32", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_32", "role": "default" }} , 
 	{ "name": "input_features_casted_load_33", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_33", "role": "default" }} , 
 	{ "name": "input_features_casted_load_34", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_34", "role": "default" }} , 
 	{ "name": "input_features_casted_load_35", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_35", "role": "default" }} , 
 	{ "name": "input_features_casted_load_36", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_36", "role": "default" }} , 
 	{ "name": "input_features_casted_load_37", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_37", "role": "default" }} , 
 	{ "name": "input_features_casted_load_38", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_38", "role": "default" }} , 
 	{ "name": "input_features_casted_load_39", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_39", "role": "default" }} , 
 	{ "name": "input_features_casted_load_40", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_40", "role": "default" }} , 
 	{ "name": "input_features_casted_load_41", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_41", "role": "default" }} , 
 	{ "name": "input_features_casted_load_42", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_42", "role": "default" }} , 
 	{ "name": "input_features_casted_load_43", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_43", "role": "default" }} , 
 	{ "name": "input_features_casted_load_44", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_44", "role": "default" }} , 
 	{ "name": "input_features_casted_load_45", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_45", "role": "default" }} , 
 	{ "name": "input_features_casted_load_46", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_46", "role": "default" }} , 
 	{ "name": "input_features_casted_load_47", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_features_casted_load_47", "role": "default" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_16_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_17_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_18_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_19_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_20_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_21_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_22_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_23_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_24_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_25_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_26_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_27_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_28_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_29_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_30_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_31_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_32_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_33_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_34_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_35_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_36_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_37_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_38_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_39_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_40_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_41_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_42_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_43_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_44_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_45_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_46_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_47_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hidden_bias_1_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U53", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U54", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U55", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U56", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U57", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U58", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U59", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U60", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U61", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U62", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U63", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U64", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U65", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U66", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U67", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U68", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U69", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U70", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U71", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U72", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U73", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U74", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U75", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U76", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U101", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U102", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U103", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U104", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U105", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U106", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U107", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U108", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U109", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U110", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U111", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U112", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U113", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U114", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U115", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U116", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U117", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U118", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U119", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U120", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U121", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U122", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U123", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U124", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		hidden_bias_1 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "227", "Max" : "227"}
	, {"Name" : "Interval", "Min" : "227", "Max" : "227"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	hidden_layer_1 { ap_memory {  { hidden_layer_1_address0 mem_address 1 5 }  { hidden_layer_1_ce0 mem_ce 1 1 }  { hidden_layer_1_we0 mem_we 1 1 }  { hidden_layer_1_d0 mem_din 1 32 } } }
	input_features_casted_load { ap_none {  { input_features_casted_load in_data 0 32 } } }
	input_features_casted_load_1 { ap_none {  { input_features_casted_load_1 in_data 0 32 } } }
	input_features_casted_load_2 { ap_none {  { input_features_casted_load_2 in_data 0 32 } } }
	input_features_casted_load_3 { ap_none {  { input_features_casted_load_3 in_data 0 32 } } }
	input_features_casted_load_4 { ap_none {  { input_features_casted_load_4 in_data 0 32 } } }
	input_features_casted_load_5 { ap_none {  { input_features_casted_load_5 in_data 0 32 } } }
	input_features_casted_load_6 { ap_none {  { input_features_casted_load_6 in_data 0 32 } } }
	input_features_casted_load_7 { ap_none {  { input_features_casted_load_7 in_data 0 32 } } }
	input_features_casted_load_8 { ap_none {  { input_features_casted_load_8 in_data 0 32 } } }
	input_features_casted_load_9 { ap_none {  { input_features_casted_load_9 in_data 0 32 } } }
	input_features_casted_load_10 { ap_none {  { input_features_casted_load_10 in_data 0 32 } } }
	input_features_casted_load_11 { ap_none {  { input_features_casted_load_11 in_data 0 32 } } }
	input_features_casted_load_12 { ap_none {  { input_features_casted_load_12 in_data 0 32 } } }
	input_features_casted_load_13 { ap_none {  { input_features_casted_load_13 in_data 0 32 } } }
	input_features_casted_load_14 { ap_none {  { input_features_casted_load_14 in_data 0 32 } } }
	input_features_casted_load_15 { ap_none {  { input_features_casted_load_15 in_data 0 32 } } }
	input_features_casted_load_16 { ap_none {  { input_features_casted_load_16 in_data 0 32 } } }
	input_features_casted_load_17 { ap_none {  { input_features_casted_load_17 in_data 0 32 } } }
	input_features_casted_load_18 { ap_none {  { input_features_casted_load_18 in_data 0 32 } } }
	input_features_casted_load_19 { ap_none {  { input_features_casted_load_19 in_data 0 32 } } }
	input_features_casted_load_20 { ap_none {  { input_features_casted_load_20 in_data 0 32 } } }
	input_features_casted_load_21 { ap_none {  { input_features_casted_load_21 in_data 0 32 } } }
	input_features_casted_load_22 { ap_none {  { input_features_casted_load_22 in_data 0 32 } } }
	input_features_casted_load_23 { ap_none {  { input_features_casted_load_23 in_data 0 32 } } }
	input_features_casted_load_24 { ap_none {  { input_features_casted_load_24 in_data 0 32 } } }
	input_features_casted_load_25 { ap_none {  { input_features_casted_load_25 in_data 0 32 } } }
	input_features_casted_load_26 { ap_none {  { input_features_casted_load_26 in_data 0 32 } } }
	input_features_casted_load_27 { ap_none {  { input_features_casted_load_27 in_data 0 32 } } }
	input_features_casted_load_28 { ap_none {  { input_features_casted_load_28 in_data 0 32 } } }
	input_features_casted_load_29 { ap_none {  { input_features_casted_load_29 in_data 0 32 } } }
	input_features_casted_load_30 { ap_none {  { input_features_casted_load_30 in_data 0 32 } } }
	input_features_casted_load_31 { ap_none {  { input_features_casted_load_31 in_data 0 32 } } }
	input_features_casted_load_32 { ap_none {  { input_features_casted_load_32 in_data 0 32 } } }
	input_features_casted_load_33 { ap_none {  { input_features_casted_load_33 in_data 0 32 } } }
	input_features_casted_load_34 { ap_none {  { input_features_casted_load_34 in_data 0 32 } } }
	input_features_casted_load_35 { ap_none {  { input_features_casted_load_35 in_data 0 32 } } }
	input_features_casted_load_36 { ap_none {  { input_features_casted_load_36 in_data 0 32 } } }
	input_features_casted_load_37 { ap_none {  { input_features_casted_load_37 in_data 0 32 } } }
	input_features_casted_load_38 { ap_none {  { input_features_casted_load_38 in_data 0 32 } } }
	input_features_casted_load_39 { ap_none {  { input_features_casted_load_39 in_data 0 32 } } }
	input_features_casted_load_40 { ap_none {  { input_features_casted_load_40 in_data 0 32 } } }
	input_features_casted_load_41 { ap_none {  { input_features_casted_load_41 in_data 0 32 } } }
	input_features_casted_load_42 { ap_none {  { input_features_casted_load_42 in_data 0 32 } } }
	input_features_casted_load_43 { ap_none {  { input_features_casted_load_43 in_data 0 32 } } }
	input_features_casted_load_44 { ap_none {  { input_features_casted_load_44 in_data 0 32 } } }
	input_features_casted_load_45 { ap_none {  { input_features_casted_load_45 in_data 0 32 } } }
	input_features_casted_load_46 { ap_none {  { input_features_casted_load_46 in_data 0 32 } } }
	input_features_casted_load_47 { ap_none {  { input_features_casted_load_47 in_data 0 32 } } }
}
