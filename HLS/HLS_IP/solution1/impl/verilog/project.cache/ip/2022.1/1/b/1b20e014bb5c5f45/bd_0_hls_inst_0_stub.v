// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Feb 14 00:40:21 2024
// Host        : DESKTOP-7J5H59V running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "MLP,Vivado 2022.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst_n, in_data_TVALID, 
  in_data_TREADY, in_data_TDATA, in_data_TDEST, in_data_TKEEP, in_data_TSTRB, in_data_TUSER, 
  in_data_TLAST, in_data_TID, out_data_TVALID, out_data_TREADY, out_data_TDATA, 
  out_data_TDEST, out_data_TKEEP, out_data_TSTRB, out_data_TUSER, out_data_TLAST, 
  out_data_TID)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,in_data_TVALID,in_data_TREADY,in_data_TDATA[31:0],in_data_TDEST[5:0],in_data_TKEEP[3:0],in_data_TSTRB[3:0],in_data_TUSER[1:0],in_data_TLAST[0:0],in_data_TID[4:0],out_data_TVALID,out_data_TREADY,out_data_TDATA[31:0],out_data_TDEST[5:0],out_data_TKEEP[3:0],out_data_TSTRB[3:0],out_data_TUSER[1:0],out_data_TLAST[0:0],out_data_TID[4:0]" */;
  input ap_clk;
  input ap_rst_n;
  input in_data_TVALID;
  output in_data_TREADY;
  input [31:0]in_data_TDATA;
  input [5:0]in_data_TDEST;
  input [3:0]in_data_TKEEP;
  input [3:0]in_data_TSTRB;
  input [1:0]in_data_TUSER;
  input [0:0]in_data_TLAST;
  input [4:0]in_data_TID;
  output out_data_TVALID;
  input out_data_TREADY;
  output [31:0]out_data_TDATA;
  output [5:0]out_data_TDEST;
  output [3:0]out_data_TKEEP;
  output [3:0]out_data_TSTRB;
  output [1:0]out_data_TUSER;
  output [0:0]out_data_TLAST;
  output [4:0]out_data_TID;
endmodule
