// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 17 17:50:44 2025
// Host        : LAPTOP-N6QBIPS8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_depacketizer_0_0_sim_netlist.v
// Design      : design_1_depacketizer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_depacketizer
   (s_axis_tready,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tlast,
    m_axis_tready,
    aresetn,
    s_axis_tvalid,
    clk,
    s_axis_tdata);
  output s_axis_tready;
  output [7:0]m_axis_tdata;
  output m_axis_tvalid;
  output m_axis_tlast;
  input m_axis_tready;
  input aresetn;
  input s_axis_tvalid;
  input clk;
  input [7:0]s_axis_tdata;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire aresetn;
  wire clk;
  wire [7:0]data_buffer;
  wire data_buffer_0;
  wire [7:0]m_axis_tdata;
  wire \m_axis_tdata[7]_i_1_n_0 ;
  wire m_axis_tlast;
  wire m_axis_tlast_i_1_n_0;
  wire m_axis_tlast_i_2_n_0;
  wire m_axis_tlast_i_4_n_0;
  wire m_axis_tlast_i_5_n_0;
  wire m_axis_tlast_i_6_n_0;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire m_axis_tvalid_int;
  wire m_axis_tvalid_int_i_1_n_0;
  wire m_axis_tvalid_int_i_2_n_0;
  wire m_axis_tvalid_int_i_3_n_0;
  wire next_image;
  wire next_image_i_1_n_0;
  wire next_image_i_2_n_0;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tready_int;
  wire s_axis_tready_int_i_2_n_0;
  wire s_axis_tvalid;
  wire [1:0]state;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hB4B0)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[1]),
        .I1(s_axis_tvalid),
        .I2(state[0]),
        .I3(m_axis_tready),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEC00ECCC)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state[1]),
        .I2(s_axis_tvalid),
        .I3(state[0]),
        .I4(m_axis_tready),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFDFFFF)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(m_axis_tlast_i_6_n_0),
        .I1(s_axis_tdata[2]),
        .I2(s_axis_tdata[3]),
        .I3(s_axis_tdata[1]),
        .I4(s_axis_tdata[0]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "receive_data:01,send_data:10,idle:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(s_axis_tready_int_i_2_n_0),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "receive_data:01,send_data:10,idle:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(s_axis_tready_int_i_2_n_0),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  LUT4 #(
    .INIT(16'h0800)) 
    \data_buffer[7]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(s_axis_tvalid),
        .I2(state[1]),
        .I3(state[0]),
        .O(data_buffer_0));
  FDCE \data_buffer_reg[0] 
       (.C(clk),
        .CE(data_buffer_0),
        .CLR(s_axis_tready_int_i_2_n_0),
        .D(s_axis_tdata[0]),
        .Q(data_buffer[0]));
  FDCE \data_buffer_reg[1] 
       (.C(clk),
        .CE(data_buffer_0),
        .CLR(s_axis_tready_int_i_2_n_0),
        .D(s_axis_tdata[1]),
        .Q(data_buffer[1]));
  FDCE \data_buffer_reg[2] 
       (.C(clk),
        .CE(data_buffer_0),
        .CLR(s_axis_tready_int_i_2_n_0),
        .D(s_axis_tdata[2]),
        .Q(data_buffer[2]));
  FDCE \data_buffer_reg[3] 
       (.C(clk),
        .CE(data_buffer_0),
        .CLR(s_axis_tready_int_i_2_n_0),
        .D(s_axis_tdata[3]),
        .Q(data_buffer[3]));
  FDCE \data_buffer_reg[4] 
       (.C(clk),
        .CE(data_buffer_0),
        .CLR(s_axis_tready_int_i_2_n_0),
        .D(s_axis_tdata[4]),
        .Q(data_buffer[4]));
  FDCE \data_buffer_reg[5] 
       (.C(clk),
        .CE(data_buffer_0),
        .CLR(s_axis_tready_int_i_2_n_0),
        .D(s_axis_tdata[5]),
        .Q(data_buffer[5]));
  FDCE \data_buffer_reg[6] 
       (.C(clk),
        .CE(data_buffer_0),
        .CLR(s_axis_tready_int_i_2_n_0),
        .D(s_axis_tdata[6]),
        .Q(data_buffer[6]));
  FDCE \data_buffer_reg[7] 
       (.C(clk),
        .CE(data_buffer_0),
        .CLR(s_axis_tready_int_i_2_n_0),
        .D(s_axis_tdata[7]),
        .Q(data_buffer[7]));
  LUT4 #(
    .INIT(16'h4000)) 
    \m_axis_tdata[7]_i_1 
       (.I0(state[0]),
        .I1(m_axis_tready),
        .I2(state[1]),
        .I3(aresetn),
        .O(\m_axis_tdata[7]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(data_buffer[0]),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[1] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(data_buffer[1]),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[2] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(data_buffer[2]),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[3] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(data_buffer[3]),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[4] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(data_buffer[4]),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[5] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(data_buffer[5]),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[6] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(data_buffer[6]),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(data_buffer[7]),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0FDF0FDD00D000DD)) 
    m_axis_tlast_i_1
       (.I0(state[1]),
        .I1(m_axis_tlast_i_2_n_0),
        .I2(m_axis_tvalid_int),
        .I3(m_axis_tlast_i_4_n_0),
        .I4(m_axis_tlast_i_5_n_0),
        .I5(m_axis_tlast),
        .O(m_axis_tlast_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    m_axis_tlast_i_2
       (.I0(s_axis_tdata[2]),
        .I1(s_axis_tdata[3]),
        .I2(s_axis_tdata[1]),
        .I3(s_axis_tdata[0]),
        .I4(m_axis_tlast_i_6_n_0),
        .I5(state[0]),
        .O(m_axis_tlast_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    m_axis_tlast_i_3
       (.I0(state[1]),
        .I1(m_axis_tready),
        .I2(state[0]),
        .O(m_axis_tvalid_int));
  LUT6 #(
    .INIT(64'h5554555555555555)) 
    m_axis_tlast_i_4
       (.I0(next_image),
        .I1(s_axis_tdata[2]),
        .I2(s_axis_tdata[3]),
        .I3(s_axis_tdata[1]),
        .I4(s_axis_tdata[0]),
        .I5(m_axis_tlast_i_6_n_0),
        .O(m_axis_tlast_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    m_axis_tlast_i_5
       (.I0(state[0]),
        .I1(state[1]),
        .I2(s_axis_tvalid),
        .O(m_axis_tlast_i_5_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    m_axis_tlast_i_6
       (.I0(s_axis_tdata[5]),
        .I1(s_axis_tdata[4]),
        .I2(s_axis_tdata[6]),
        .I3(s_axis_tdata[7]),
        .O(m_axis_tlast_i_6_n_0));
  FDCE m_axis_tlast_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(s_axis_tready_int_i_2_n_0),
        .D(m_axis_tlast_i_1_n_0),
        .Q(m_axis_tlast));
  LUT6 #(
    .INIT(64'hBFBBB0B00F000000)) 
    m_axis_tvalid_int_i_1
       (.I0(m_axis_tvalid_int_i_2_n_0),
        .I1(m_axis_tvalid_int_i_3_n_0),
        .I2(state[0]),
        .I3(m_axis_tready),
        .I4(state[1]),
        .I5(m_axis_tvalid),
        .O(m_axis_tvalid_int_i_1_n_0));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    m_axis_tvalid_int_i_2
       (.I0(s_axis_tvalid),
        .I1(state[1]),
        .I2(s_axis_tdata[7]),
        .I3(s_axis_tdata[6]),
        .I4(s_axis_tdata[4]),
        .I5(s_axis_tdata[5]),
        .O(m_axis_tvalid_int_i_2_n_0));
  LUT4 #(
    .INIT(16'h8002)) 
    m_axis_tvalid_int_i_3
       (.I0(s_axis_tdata[0]),
        .I1(s_axis_tdata[1]),
        .I2(s_axis_tdata[3]),
        .I3(s_axis_tdata[2]),
        .O(m_axis_tvalid_int_i_3_n_0));
  FDCE m_axis_tvalid_int_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(s_axis_tready_int_i_2_n_0),
        .D(m_axis_tvalid_int_i_1_n_0),
        .Q(m_axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    next_image_i_1
       (.I0(next_image_i_2_n_0),
        .I1(state[1]),
        .I2(m_axis_tready),
        .I3(state[0]),
        .I4(next_image),
        .O(next_image_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    next_image_i_2
       (.I0(m_axis_tlast_i_6_n_0),
        .I1(s_axis_tdata[0]),
        .I2(s_axis_tdata[1]),
        .I3(s_axis_tdata[3]),
        .I4(s_axis_tdata[2]),
        .O(next_image_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    next_image_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(s_axis_tready_int_i_2_n_0),
        .D(next_image_i_1_n_0),
        .Q(next_image));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axis_tready_int_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .O(s_axis_tready_int));
  LUT1 #(
    .INIT(2'h1)) 
    s_axis_tready_int_i_2
       (.I0(aresetn),
        .O(s_axis_tready_int_i_2_n_0));
  FDCE s_axis_tready_int_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(s_axis_tready_int_i_2_n_0),
        .D(s_axis_tready_int),
        .Q(s_axis_tready));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_depacketizer_0_0,depacketizer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "depacketizer,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    aresetn,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [7:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [7:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;

  wire aresetn;
  wire clk;
  wire [7:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_depacketizer U0
       (.aresetn(aresetn),
        .clk(clk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
