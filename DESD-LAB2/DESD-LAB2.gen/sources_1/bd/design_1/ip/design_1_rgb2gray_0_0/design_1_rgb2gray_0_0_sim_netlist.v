// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 17 17:55:13 2025
// Host        : LAPTOP-N6QBIPS8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/chiar/Desktop/DESD-LAB2-ENCRYPTED.xpr/DESD-LAB2/DESD-LAB2.gen/sources_1/bd/design_1/ip/design_1_rgb2gray_0_0/design_1_rgb2gray_0_0_sim_netlist.v
// Design      : design_1_rgb2gray_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_rgb2gray_0_0,rgb2gray,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "rgb2gray,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_rgb2gray_0_0
   (clk,
    resetn,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tready,
    m_axis_tlast,
    s_axis_tvalid,
    s_axis_tdata,
    s_axis_tready,
    s_axis_tlast);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 resetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [7:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [7:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;

  wire clk;
  wire [7:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire resetn;
  wire [7:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;

  design_1_rgb2gray_0_0_rgb2gray U0
       (.clk(clk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .resetn(resetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "rgb2gray" *) 
module design_1_rgb2gray_0_0_rgb2gray
   (m_axis_tdata,
    m_axis_tvalid,
    m_axis_tlast,
    s_axis_tready,
    s_axis_tvalid,
    m_axis_tready,
    clk,
    s_axis_tdata,
    resetn,
    s_axis_tlast);
  output [7:0]m_axis_tdata;
  output m_axis_tvalid;
  output m_axis_tlast;
  output s_axis_tready;
  input s_axis_tvalid;
  input m_axis_tready;
  input clk;
  input [7:0]s_axis_tdata;
  input resetn;
  input s_axis_tlast;

  wire [9:0]A;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire [7:0]b;
  wire b_1;
  wire clk;
  wire finito;
  wire finito_i_1_n_0;
  wire [7:0]g;
  wire g_0;
  wire [7:0]m_axis_tdata;
  wire m_axis_tdata_reg_i_10_n_0;
  wire m_axis_tdata_reg_i_11_n_0;
  wire m_axis_tdata_reg_i_12_n_0;
  wire m_axis_tdata_reg_i_13_n_0;
  wire m_axis_tdata_reg_i_14_n_0;
  wire m_axis_tdata_reg_i_15_n_0;
  wire m_axis_tdata_reg_i_16_n_0;
  wire m_axis_tdata_reg_i_17_n_0;
  wire m_axis_tdata_reg_i_18_n_0;
  wire m_axis_tdata_reg_i_19_n_0;
  wire m_axis_tdata_reg_i_1_n_0;
  wire m_axis_tdata_reg_i_20_n_0;
  wire m_axis_tdata_reg_i_21_n_0;
  wire m_axis_tdata_reg_i_2_n_0;
  wire m_axis_tdata_reg_i_4_n_0;
  wire m_axis_tdata_reg_i_4_n_1;
  wire m_axis_tdata_reg_i_4_n_2;
  wire m_axis_tdata_reg_i_4_n_3;
  wire m_axis_tdata_reg_i_5_n_0;
  wire m_axis_tdata_reg_i_5_n_1;
  wire m_axis_tdata_reg_i_5_n_2;
  wire m_axis_tdata_reg_i_5_n_3;
  wire m_axis_tdata_reg_i_6_n_0;
  wire m_axis_tdata_reg_i_7_n_0;
  wire m_axis_tdata_reg_i_8_n_0;
  wire m_axis_tdata_reg_i_9_n_0;
  wire m_axis_tdata_reg_n_100;
  wire m_axis_tdata_reg_n_101;
  wire m_axis_tdata_reg_n_102;
  wire m_axis_tdata_reg_n_103;
  wire m_axis_tdata_reg_n_104;
  wire m_axis_tdata_reg_n_105;
  wire m_axis_tlast;
  wire m_axis_tlast_i_1_n_0;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire m_axis_tvalid_i_1_n_0;
  wire [7:0]r;
  wire \r[7]_i_1_n_0 ;
  wire resetn;
  wire [7:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tready_i_1_n_0;
  wire s_axis_tvalid;
  wire [2:0]state;
  wire NLW_m_axis_tdata_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_m_axis_tdata_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_m_axis_tdata_reg_OVERFLOW_UNCONNECTED;
  wire NLW_m_axis_tdata_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_m_axis_tdata_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_m_axis_tdata_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_m_axis_tdata_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_m_axis_tdata_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_m_axis_tdata_reg_CARRYOUT_UNCONNECTED;
  wire [47:14]NLW_m_axis_tdata_reg_P_UNCONNECTED;
  wire [47:0]NLW_m_axis_tdata_reg_PCOUT_UNCONNECTED;
  wire [3:0]NLW_m_axis_tdata_reg_i_3_CO_UNCONNECTED;
  wire [3:1]NLW_m_axis_tdata_reg_i_3_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h1000)) 
    \/i_ 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(s_axis_tvalid),
        .O(g_0));
  LUT4 #(
    .INIT(16'hAB44)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[2]),
        .I1(s_axis_tvalid),
        .I2(state[1]),
        .I3(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA4F0)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[2]),
        .I1(s_axis_tvalid),
        .I2(state[1]),
        .I3(state[0]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFCC4)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(m_axis_tready),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "rosso:000,verde:001,blu:010,calcolagrigio:011,mandaregrigio:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(m_axis_tdata_reg_i_2_n_0));
  (* FSM_ENCODED_STATES = "rosso:000,verde:001,blu:010,calcolagrigio:011,mandaregrigio:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(m_axis_tdata_reg_i_2_n_0));
  (* FSM_ENCODED_STATES = "rosso:000,verde:001,blu:010,calcolagrigio:011,mandaregrigio:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(m_axis_tdata_reg_i_2_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    \b[7]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(s_axis_tvalid),
        .O(b_1));
  FDRE \b_reg[0] 
       (.C(clk),
        .CE(b_1),
        .D(s_axis_tdata[0]),
        .Q(b[0]),
        .R(m_axis_tdata_reg_i_2_n_0));
  FDRE \b_reg[1] 
       (.C(clk),
        .CE(b_1),
        .D(s_axis_tdata[1]),
        .Q(b[1]),
        .R(m_axis_tdata_reg_i_2_n_0));
  FDRE \b_reg[2] 
       (.C(clk),
        .CE(b_1),
        .D(s_axis_tdata[2]),
        .Q(b[2]),
        .R(m_axis_tdata_reg_i_2_n_0));
  FDRE \b_reg[3] 
       (.C(clk),
        .CE(b_1),
        .D(s_axis_tdata[3]),
        .Q(b[3]),
        .R(m_axis_tdata_reg_i_2_n_0));
  FDRE \b_reg[4] 
       (.C(clk),
        .CE(b_1),
        .D(s_axis_tdata[4]),
        .Q(b[4]),
        .R(m_axis_tdata_reg_i_2_n_0));
  FDRE \b_reg[5] 
       (.C(clk),
        .CE(b_1),
        .D(s_axis_tdata[5]),
        .Q(b[5]),
        .R(m_axis_tdata_reg_i_2_n_0));
  FDRE \b_reg[6] 
       (.C(clk),
        .CE(b_1),
        .D(s_axis_tdata[6]),
        .Q(b[6]),
        .R(m_axis_tdata_reg_i_2_n_0));
  FDRE \b_reg[7] 
       (.C(clk),
        .CE(b_1),
        .D(s_axis_tdata[7]),
        .Q(b[7]),
        .R(m_axis_tdata_reg_i_2_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    finito_i_1
       (.I0(s_axis_tlast),
        .I1(resetn),
        .I2(b_1),
        .I3(finito),
        .O(finito_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    finito_reg
       (.C(clk),
        .CE(1'b1),
        .D(finito_i_1_n_0),
        .Q(finito),
        .R(1'b0));
  FDRE \g_reg[0] 
       (.C(clk),
        .CE(g_0),
        .D(s_axis_tdata[0]),
        .Q(g[0]),
        .R(m_axis_tdata_reg_i_2_n_0));
  FDRE \g_reg[1] 
       (.C(clk),
        .CE(g_0),
        .D(s_axis_tdata[1]),
        .Q(g[1]),
        .R(m_axis_tdata_reg_i_2_n_0));
  FDRE \g_reg[2] 
       (.C(clk),
        .CE(g_0),
        .D(s_axis_tdata[2]),
        .Q(g[2]),
        .R(m_axis_tdata_reg_i_2_n_0));
  FDRE \g_reg[3] 
       (.C(clk),
        .CE(g_0),
        .D(s_axis_tdata[3]),
        .Q(g[3]),
        .R(m_axis_tdata_reg_i_2_n_0));
  FDRE \g_reg[4] 
       (.C(clk),
        .CE(g_0),
        .D(s_axis_tdata[4]),
        .Q(g[4]),
        .R(m_axis_tdata_reg_i_2_n_0));
  FDRE \g_reg[5] 
       (.C(clk),
        .CE(g_0),
        .D(s_axis_tdata[5]),
        .Q(g[5]),
        .R(m_axis_tdata_reg_i_2_n_0));
  FDRE \g_reg[6] 
       (.C(clk),
        .CE(g_0),
        .D(s_axis_tdata[6]),
        .Q(g[6]),
        .R(m_axis_tdata_reg_i_2_n_0));
  FDRE \g_reg[7] 
       (.C(clk),
        .CE(g_0),
        .D(s_axis_tdata[7]),
        .Q(g[7]),
        .R(m_axis_tdata_reg_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    m_axis_tdata_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_m_axis_tdata_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_m_axis_tdata_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_m_axis_tdata_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_m_axis_tdata_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(m_axis_tdata_reg_i_1_n_0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_m_axis_tdata_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_m_axis_tdata_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_m_axis_tdata_reg_P_UNCONNECTED[47:14],m_axis_tdata,m_axis_tdata_reg_n_100,m_axis_tdata_reg_n_101,m_axis_tdata_reg_n_102,m_axis_tdata_reg_n_103,m_axis_tdata_reg_n_104,m_axis_tdata_reg_n_105}),
        .PATTERNBDETECT(NLW_m_axis_tdata_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_m_axis_tdata_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_m_axis_tdata_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(m_axis_tdata_reg_i_2_n_0),
        .UNDERFLOW(NLW_m_axis_tdata_reg_UNDERFLOW_UNCONNECTED));
  LUT3 #(
    .INIT(8'h08)) 
    m_axis_tdata_reg_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(m_axis_tdata_reg_i_1_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    m_axis_tdata_reg_i_10
       (.I0(g[3]),
        .I1(b[3]),
        .I2(r[3]),
        .O(m_axis_tdata_reg_i_10_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    m_axis_tdata_reg_i_11
       (.I0(m_axis_tdata_reg_i_7_n_0),
        .I1(b[7]),
        .I2(g[7]),
        .I3(r[7]),
        .O(m_axis_tdata_reg_i_11_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    m_axis_tdata_reg_i_12
       (.I0(g[6]),
        .I1(b[6]),
        .I2(r[6]),
        .I3(m_axis_tdata_reg_i_8_n_0),
        .O(m_axis_tdata_reg_i_12_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    m_axis_tdata_reg_i_13
       (.I0(g[5]),
        .I1(b[5]),
        .I2(r[5]),
        .I3(m_axis_tdata_reg_i_9_n_0),
        .O(m_axis_tdata_reg_i_13_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    m_axis_tdata_reg_i_14
       (.I0(g[4]),
        .I1(b[4]),
        .I2(r[4]),
        .I3(m_axis_tdata_reg_i_10_n_0),
        .O(m_axis_tdata_reg_i_14_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    m_axis_tdata_reg_i_15
       (.I0(g[2]),
        .I1(b[2]),
        .I2(r[2]),
        .O(m_axis_tdata_reg_i_15_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    m_axis_tdata_reg_i_16
       (.I0(g[1]),
        .I1(b[1]),
        .I2(r[1]),
        .O(m_axis_tdata_reg_i_16_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    m_axis_tdata_reg_i_17
       (.I0(g[0]),
        .I1(b[0]),
        .I2(r[0]),
        .O(m_axis_tdata_reg_i_17_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    m_axis_tdata_reg_i_18
       (.I0(g[3]),
        .I1(b[3]),
        .I2(r[3]),
        .I3(m_axis_tdata_reg_i_15_n_0),
        .O(m_axis_tdata_reg_i_18_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    m_axis_tdata_reg_i_19
       (.I0(g[2]),
        .I1(b[2]),
        .I2(r[2]),
        .I3(m_axis_tdata_reg_i_16_n_0),
        .O(m_axis_tdata_reg_i_19_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tdata_reg_i_2
       (.I0(resetn),
        .O(m_axis_tdata_reg_i_2_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    m_axis_tdata_reg_i_20
       (.I0(g[1]),
        .I1(b[1]),
        .I2(r[1]),
        .I3(m_axis_tdata_reg_i_17_n_0),
        .O(m_axis_tdata_reg_i_20_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    m_axis_tdata_reg_i_21
       (.I0(g[0]),
        .I1(b[0]),
        .I2(r[0]),
        .O(m_axis_tdata_reg_i_21_n_0));
  CARRY4 m_axis_tdata_reg_i_3
       (.CI(m_axis_tdata_reg_i_4_n_0),
        .CO({NLW_m_axis_tdata_reg_i_3_CO_UNCONNECTED[3:2],A[9],NLW_m_axis_tdata_reg_i_3_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_m_axis_tdata_reg_i_3_O_UNCONNECTED[3:1],A[8]}),
        .S({1'b0,1'b0,1'b1,m_axis_tdata_reg_i_6_n_0}));
  CARRY4 m_axis_tdata_reg_i_4
       (.CI(m_axis_tdata_reg_i_5_n_0),
        .CO({m_axis_tdata_reg_i_4_n_0,m_axis_tdata_reg_i_4_n_1,m_axis_tdata_reg_i_4_n_2,m_axis_tdata_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({m_axis_tdata_reg_i_7_n_0,m_axis_tdata_reg_i_8_n_0,m_axis_tdata_reg_i_9_n_0,m_axis_tdata_reg_i_10_n_0}),
        .O(A[7:4]),
        .S({m_axis_tdata_reg_i_11_n_0,m_axis_tdata_reg_i_12_n_0,m_axis_tdata_reg_i_13_n_0,m_axis_tdata_reg_i_14_n_0}));
  CARRY4 m_axis_tdata_reg_i_5
       (.CI(1'b0),
        .CO({m_axis_tdata_reg_i_5_n_0,m_axis_tdata_reg_i_5_n_1,m_axis_tdata_reg_i_5_n_2,m_axis_tdata_reg_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({m_axis_tdata_reg_i_15_n_0,m_axis_tdata_reg_i_16_n_0,m_axis_tdata_reg_i_17_n_0,1'b0}),
        .O(A[3:0]),
        .S({m_axis_tdata_reg_i_18_n_0,m_axis_tdata_reg_i_19_n_0,m_axis_tdata_reg_i_20_n_0,m_axis_tdata_reg_i_21_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    m_axis_tdata_reg_i_6
       (.I0(g[7]),
        .I1(b[7]),
        .I2(r[7]),
        .O(m_axis_tdata_reg_i_6_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    m_axis_tdata_reg_i_7
       (.I0(g[6]),
        .I1(b[6]),
        .I2(r[6]),
        .O(m_axis_tdata_reg_i_7_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    m_axis_tdata_reg_i_8
       (.I0(g[5]),
        .I1(b[5]),
        .I2(r[5]),
        .O(m_axis_tdata_reg_i_8_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    m_axis_tdata_reg_i_9
       (.I0(g[4]),
        .I1(b[4]),
        .I2(r[4]),
        .O(m_axis_tdata_reg_i_9_n_0));
  LUT6 #(
    .INIT(64'hBAAA8AAA00000000)) 
    m_axis_tlast_i_1
       (.I0(m_axis_tlast),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(finito),
        .I5(resetn),
        .O(m_axis_tlast_i_1_n_0));
  FDRE m_axis_tlast_reg
       (.C(clk),
        .CE(1'b1),
        .D(m_axis_tlast_i_1_n_0),
        .Q(m_axis_tlast),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA8C0AAC000000000)) 
    m_axis_tvalid_i_1
       (.I0(m_axis_tvalid),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(m_axis_tready),
        .I5(resetn),
        .O(m_axis_tvalid_i_1_n_0));
  FDRE m_axis_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(m_axis_tvalid_i_1_n_0),
        .Q(m_axis_tvalid),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0010)) 
    \r[7]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(s_axis_tvalid),
        .I3(state[1]),
        .O(\r[7]_i_1_n_0 ));
  FDRE \r_reg[0] 
       (.C(clk),
        .CE(\r[7]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(r[0]),
        .R(m_axis_tdata_reg_i_2_n_0));
  FDRE \r_reg[1] 
       (.C(clk),
        .CE(\r[7]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(r[1]),
        .R(m_axis_tdata_reg_i_2_n_0));
  FDRE \r_reg[2] 
       (.C(clk),
        .CE(\r[7]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(r[2]),
        .R(m_axis_tdata_reg_i_2_n_0));
  FDRE \r_reg[3] 
       (.C(clk),
        .CE(\r[7]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(r[3]),
        .R(m_axis_tdata_reg_i_2_n_0));
  FDRE \r_reg[4] 
       (.C(clk),
        .CE(\r[7]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(r[4]),
        .R(m_axis_tdata_reg_i_2_n_0));
  FDRE \r_reg[5] 
       (.C(clk),
        .CE(\r[7]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(r[5]),
        .R(m_axis_tdata_reg_i_2_n_0));
  FDRE \r_reg[6] 
       (.C(clk),
        .CE(\r[7]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(r[6]),
        .R(m_axis_tdata_reg_i_2_n_0));
  FDRE \r_reg[7] 
       (.C(clk),
        .CE(\r[7]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(r[7]),
        .R(m_axis_tdata_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'hFAFFFFFF00400040)) 
    s_axis_tready_i_1
       (.I0(state[0]),
        .I1(m_axis_tready),
        .I2(state[2]),
        .I3(state[1]),
        .I4(s_axis_tvalid),
        .I5(s_axis_tready),
        .O(s_axis_tready_i_1_n_0));
  FDSE s_axis_tready_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axis_tready_i_1_n_0),
        .Q(s_axis_tready),
        .S(m_axis_tdata_reg_i_2_n_0));
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
