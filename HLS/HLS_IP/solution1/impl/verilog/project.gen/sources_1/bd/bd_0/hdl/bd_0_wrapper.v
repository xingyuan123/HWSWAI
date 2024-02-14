//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Wed Feb 14 00:30:35 2024
//Host        : DESKTOP-7J5H59V running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (ap_clk,
    ap_rst_n,
    in_data_tdata,
    in_data_tdest,
    in_data_tid,
    in_data_tkeep,
    in_data_tlast,
    in_data_tready,
    in_data_tstrb,
    in_data_tuser,
    in_data_tvalid,
    out_data_tdata,
    out_data_tdest,
    out_data_tid,
    out_data_tkeep,
    out_data_tlast,
    out_data_tready,
    out_data_tstrb,
    out_data_tuser,
    out_data_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [31:0]in_data_tdata;
  input [5:0]in_data_tdest;
  input [4:0]in_data_tid;
  input [3:0]in_data_tkeep;
  input [0:0]in_data_tlast;
  output in_data_tready;
  input [3:0]in_data_tstrb;
  input [1:0]in_data_tuser;
  input in_data_tvalid;
  output [31:0]out_data_tdata;
  output [5:0]out_data_tdest;
  output [4:0]out_data_tid;
  output [3:0]out_data_tkeep;
  output [0:0]out_data_tlast;
  input out_data_tready;
  output [3:0]out_data_tstrb;
  output [1:0]out_data_tuser;
  output out_data_tvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire [31:0]in_data_tdata;
  wire [5:0]in_data_tdest;
  wire [4:0]in_data_tid;
  wire [3:0]in_data_tkeep;
  wire [0:0]in_data_tlast;
  wire in_data_tready;
  wire [3:0]in_data_tstrb;
  wire [1:0]in_data_tuser;
  wire in_data_tvalid;
  wire [31:0]out_data_tdata;
  wire [5:0]out_data_tdest;
  wire [4:0]out_data_tid;
  wire [3:0]out_data_tkeep;
  wire [0:0]out_data_tlast;
  wire out_data_tready;
  wire [3:0]out_data_tstrb;
  wire [1:0]out_data_tuser;
  wire out_data_tvalid;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in_data_tdata(in_data_tdata),
        .in_data_tdest(in_data_tdest),
        .in_data_tid(in_data_tid),
        .in_data_tkeep(in_data_tkeep),
        .in_data_tlast(in_data_tlast),
        .in_data_tready(in_data_tready),
        .in_data_tstrb(in_data_tstrb),
        .in_data_tuser(in_data_tuser),
        .in_data_tvalid(in_data_tvalid),
        .out_data_tdata(out_data_tdata),
        .out_data_tdest(out_data_tdest),
        .out_data_tid(out_data_tid),
        .out_data_tkeep(out_data_tkeep),
        .out_data_tlast(out_data_tlast),
        .out_data_tready(out_data_tready),
        .out_data_tstrb(out_data_tstrb),
        .out_data_tuser(out_data_tuser),
        .out_data_tvalid(out_data_tvalid));
endmodule
