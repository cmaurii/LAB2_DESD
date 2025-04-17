// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 17 17:55:15 2025
// Host        : LAPTOP-N6QBIPS8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_bram_writer_0_0_stub.v
// Design      : design_1_bram_writer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "bram_writer,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, aresetn, s_axis_tdata, s_axis_tvalid, 
  s_axis_tready, s_axis_tlast, conv_addr, conv_data, start_conv, done_conv, write_ok, overflow, 
  underflow)
/* synthesis syn_black_box black_box_pad_pin="clk,aresetn,s_axis_tdata[7:0],s_axis_tvalid,s_axis_tready,s_axis_tlast,conv_addr[15:0],conv_data[6:0],start_conv,done_conv,write_ok,overflow,underflow" */;
  input clk;
  input aresetn;
  input [7:0]s_axis_tdata;
  input s_axis_tvalid;
  output s_axis_tready;
  input s_axis_tlast;
  input [15:0]conv_addr;
  output [6:0]conv_data;
  output start_conv;
  input done_conv;
  output write_ok;
  output overflow;
  output underflow;
endmodule
