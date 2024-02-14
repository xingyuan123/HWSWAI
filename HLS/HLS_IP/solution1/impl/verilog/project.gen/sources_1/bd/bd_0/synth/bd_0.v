//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Wed Feb 14 00:30:35 2024
//Host        : DESKTOP-7J5H59V running 64-bit major release  (build 9200)
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF in_data:out_data, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2" *) input [31:0]in_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data " *) input [5:0]in_data_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data " *) input [4:0]in_data_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data " *) input [3:0]in_data_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data " *) input [0:0]in_data_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data " *) output in_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data " *) input [3:0]in_data_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data " *) input [1:0]in_data_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data " *) input in_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2" *) output [31:0]out_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data " *) output [5:0]out_data_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data " *) output [4:0]out_data_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data " *) output [3:0]out_data_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data " *) output [0:0]out_data_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data " *) input out_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data " *) output [3:0]out_data_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data " *) output [1:0]out_data_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data " *) output out_data_tvalid;

  wire ap_clk_0_1;
  wire ap_rst_n_0_1;
  wire [31:0]hls_inst_out_data_TDATA;
  wire [5:0]hls_inst_out_data_TDEST;
  wire [4:0]hls_inst_out_data_TID;
  wire [3:0]hls_inst_out_data_TKEEP;
  wire [0:0]hls_inst_out_data_TLAST;
  wire hls_inst_out_data_TREADY;
  wire [3:0]hls_inst_out_data_TSTRB;
  wire [1:0]hls_inst_out_data_TUSER;
  wire hls_inst_out_data_TVALID;
  wire [31:0]in_data_0_1_TDATA;
  wire [5:0]in_data_0_1_TDEST;
  wire [4:0]in_data_0_1_TID;
  wire [3:0]in_data_0_1_TKEEP;
  wire [0:0]in_data_0_1_TLAST;
  wire in_data_0_1_TREADY;
  wire [3:0]in_data_0_1_TSTRB;
  wire [1:0]in_data_0_1_TUSER;
  wire in_data_0_1_TVALID;

  assign ap_clk_0_1 = ap_clk;
  assign ap_rst_n_0_1 = ap_rst_n;
  assign hls_inst_out_data_TREADY = out_data_tready;
  assign in_data_0_1_TDATA = in_data_tdata[31:0];
  assign in_data_0_1_TDEST = in_data_tdest[5:0];
  assign in_data_0_1_TID = in_data_tid[4:0];
  assign in_data_0_1_TKEEP = in_data_tkeep[3:0];
  assign in_data_0_1_TLAST = in_data_tlast[0];
  assign in_data_0_1_TSTRB = in_data_tstrb[3:0];
  assign in_data_0_1_TUSER = in_data_tuser[1:0];
  assign in_data_0_1_TVALID = in_data_tvalid;
  assign in_data_tready = in_data_0_1_TREADY;
  assign out_data_tdata[31:0] = hls_inst_out_data_TDATA;
  assign out_data_tdest[5:0] = hls_inst_out_data_TDEST;
  assign out_data_tid[4:0] = hls_inst_out_data_TID;
  assign out_data_tkeep[3:0] = hls_inst_out_data_TKEEP;
  assign out_data_tlast[0] = hls_inst_out_data_TLAST;
  assign out_data_tstrb[3:0] = hls_inst_out_data_TSTRB;
  assign out_data_tuser[1:0] = hls_inst_out_data_TUSER;
  assign out_data_tvalid = hls_inst_out_data_TVALID;
  bd_0_hls_inst_0 hls_inst
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in_data_TDATA(in_data_0_1_TDATA),
        .in_data_TDEST(in_data_0_1_TDEST),
        .in_data_TID(in_data_0_1_TID),
        .in_data_TKEEP(in_data_0_1_TKEEP),
        .in_data_TLAST(in_data_0_1_TLAST),
        .in_data_TREADY(in_data_0_1_TREADY),
        .in_data_TSTRB(in_data_0_1_TSTRB),
        .in_data_TUSER(in_data_0_1_TUSER),
        .in_data_TVALID(in_data_0_1_TVALID),
        .out_data_TDATA(hls_inst_out_data_TDATA),
        .out_data_TDEST(hls_inst_out_data_TDEST),
        .out_data_TID(hls_inst_out_data_TID),
        .out_data_TKEEP(hls_inst_out_data_TKEEP),
        .out_data_TLAST(hls_inst_out_data_TLAST),
        .out_data_TREADY(hls_inst_out_data_TREADY),
        .out_data_TSTRB(hls_inst_out_data_TSTRB),
        .out_data_TUSER(hls_inst_out_data_TUSER),
        .out_data_TVALID(hls_inst_out_data_TVALID));
endmodule
