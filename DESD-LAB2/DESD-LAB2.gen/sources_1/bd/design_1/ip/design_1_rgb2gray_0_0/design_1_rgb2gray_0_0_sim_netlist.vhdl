-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Apr 17 17:55:13 2025
-- Host        : LAPTOP-N6QBIPS8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/chiar/Desktop/DESD-LAB2-ENCRYPTED.xpr/DESD-LAB2/DESD-LAB2.gen/sources_1/bd/design_1/ip/design_1_rgb2gray_0_0/design_1_rgb2gray_0_0_sim_netlist.vhdl
-- Design      : design_1_rgb2gray_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rgb2gray_0_0_rgb2gray is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    clk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    resetn : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_rgb2gray_0_0_rgb2gray : entity is "rgb2gray";
end design_1_rgb2gray_0_0_rgb2gray;

architecture STRUCTURE of design_1_rgb2gray_0_0_rgb2gray is
  signal A : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal b : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal b_1 : STD_LOGIC;
  signal finito : STD_LOGIC;
  signal finito_i_1_n_0 : STD_LOGIC;
  signal g : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal g_0 : STD_LOGIC;
  signal m_axis_tdata_reg_i_10_n_0 : STD_LOGIC;
  signal m_axis_tdata_reg_i_11_n_0 : STD_LOGIC;
  signal m_axis_tdata_reg_i_12_n_0 : STD_LOGIC;
  signal m_axis_tdata_reg_i_13_n_0 : STD_LOGIC;
  signal m_axis_tdata_reg_i_14_n_0 : STD_LOGIC;
  signal m_axis_tdata_reg_i_15_n_0 : STD_LOGIC;
  signal m_axis_tdata_reg_i_16_n_0 : STD_LOGIC;
  signal m_axis_tdata_reg_i_17_n_0 : STD_LOGIC;
  signal m_axis_tdata_reg_i_18_n_0 : STD_LOGIC;
  signal m_axis_tdata_reg_i_19_n_0 : STD_LOGIC;
  signal m_axis_tdata_reg_i_1_n_0 : STD_LOGIC;
  signal m_axis_tdata_reg_i_20_n_0 : STD_LOGIC;
  signal m_axis_tdata_reg_i_21_n_0 : STD_LOGIC;
  signal m_axis_tdata_reg_i_2_n_0 : STD_LOGIC;
  signal m_axis_tdata_reg_i_4_n_0 : STD_LOGIC;
  signal m_axis_tdata_reg_i_4_n_1 : STD_LOGIC;
  signal m_axis_tdata_reg_i_4_n_2 : STD_LOGIC;
  signal m_axis_tdata_reg_i_4_n_3 : STD_LOGIC;
  signal m_axis_tdata_reg_i_5_n_0 : STD_LOGIC;
  signal m_axis_tdata_reg_i_5_n_1 : STD_LOGIC;
  signal m_axis_tdata_reg_i_5_n_2 : STD_LOGIC;
  signal m_axis_tdata_reg_i_5_n_3 : STD_LOGIC;
  signal m_axis_tdata_reg_i_6_n_0 : STD_LOGIC;
  signal m_axis_tdata_reg_i_7_n_0 : STD_LOGIC;
  signal m_axis_tdata_reg_i_8_n_0 : STD_LOGIC;
  signal m_axis_tdata_reg_i_9_n_0 : STD_LOGIC;
  signal m_axis_tdata_reg_n_100 : STD_LOGIC;
  signal m_axis_tdata_reg_n_101 : STD_LOGIC;
  signal m_axis_tdata_reg_n_102 : STD_LOGIC;
  signal m_axis_tdata_reg_n_103 : STD_LOGIC;
  signal m_axis_tdata_reg_n_104 : STD_LOGIC;
  signal m_axis_tdata_reg_n_105 : STD_LOGIC;
  signal \^m_axis_tlast\ : STD_LOGIC;
  signal m_axis_tlast_i_1_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal r : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r[7]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axis_tready\ : STD_LOGIC;
  signal s_axis_tready_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m_axis_tdata_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_m_axis_tdata_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_m_axis_tdata_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_m_axis_tdata_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_m_axis_tdata_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_m_axis_tdata_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_m_axis_tdata_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_m_axis_tdata_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_m_axis_tdata_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_m_axis_tdata_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 14 );
  signal NLW_m_axis_tdata_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_m_axis_tdata_reg_i_3_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_m_axis_tdata_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "rosso:000,verde:001,blu:010,calcolagrigio:011,mandaregrigio:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "rosso:000,verde:001,blu:010,calcolagrigio:011,mandaregrigio:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "rosso:000,verde:001,blu:010,calcolagrigio:011,mandaregrigio:100,";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of m_axis_tdata_reg : label is "{SYNTH-12 {cell *THIS*}}";
  attribute HLUTNM : string;
  attribute HLUTNM of m_axis_tdata_reg_i_10 : label is "lutpair3";
  attribute HLUTNM of m_axis_tdata_reg_i_12 : label is "lutpair6";
  attribute HLUTNM of m_axis_tdata_reg_i_13 : label is "lutpair5";
  attribute HLUTNM of m_axis_tdata_reg_i_14 : label is "lutpair4";
  attribute HLUTNM of m_axis_tdata_reg_i_15 : label is "lutpair2";
  attribute HLUTNM of m_axis_tdata_reg_i_16 : label is "lutpair1";
  attribute HLUTNM of m_axis_tdata_reg_i_17 : label is "lutpair0";
  attribute HLUTNM of m_axis_tdata_reg_i_18 : label is "lutpair3";
  attribute HLUTNM of m_axis_tdata_reg_i_19 : label is "lutpair2";
  attribute HLUTNM of m_axis_tdata_reg_i_20 : label is "lutpair1";
  attribute HLUTNM of m_axis_tdata_reg_i_21 : label is "lutpair0";
  attribute HLUTNM of m_axis_tdata_reg_i_7 : label is "lutpair6";
  attribute HLUTNM of m_axis_tdata_reg_i_8 : label is "lutpair5";
  attribute HLUTNM of m_axis_tdata_reg_i_9 : label is "lutpair4";
begin
  m_axis_tlast <= \^m_axis_tlast\;
  m_axis_tvalid <= \^m_axis_tvalid\;
  s_axis_tready <= \^s_axis_tready\;
\/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(0),
      I3 => s_axis_tvalid,
      O => g_0
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB44"
    )
        port map (
      I0 => state(2),
      I1 => s_axis_tvalid,
      I2 => state(1),
      I3 => state(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4F0"
    )
        port map (
      I0 => state(2),
      I1 => s_axis_tvalid,
      I2 => state(1),
      I3 => state(0),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCC4"
    )
        port map (
      I0 => m_axis_tready,
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => m_axis_tdata_reg_i_2_n_0
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => m_axis_tdata_reg_i_2_n_0
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => m_axis_tdata_reg_i_2_n_0
    );
\b[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      I3 => s_axis_tvalid,
      O => b_1
    );
\b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => b_1,
      D => s_axis_tdata(0),
      Q => b(0),
      R => m_axis_tdata_reg_i_2_n_0
    );
\b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => b_1,
      D => s_axis_tdata(1),
      Q => b(1),
      R => m_axis_tdata_reg_i_2_n_0
    );
\b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => b_1,
      D => s_axis_tdata(2),
      Q => b(2),
      R => m_axis_tdata_reg_i_2_n_0
    );
\b_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => b_1,
      D => s_axis_tdata(3),
      Q => b(3),
      R => m_axis_tdata_reg_i_2_n_0
    );
\b_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => b_1,
      D => s_axis_tdata(4),
      Q => b(4),
      R => m_axis_tdata_reg_i_2_n_0
    );
\b_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => b_1,
      D => s_axis_tdata(5),
      Q => b(5),
      R => m_axis_tdata_reg_i_2_n_0
    );
\b_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => b_1,
      D => s_axis_tdata(6),
      Q => b(6),
      R => m_axis_tdata_reg_i_2_n_0
    );
\b_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => b_1,
      D => s_axis_tdata(7),
      Q => b(7),
      R => m_axis_tdata_reg_i_2_n_0
    );
finito_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => resetn,
      I2 => b_1,
      I3 => finito,
      O => finito_i_1_n_0
    );
finito_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => finito_i_1_n_0,
      Q => finito,
      R => '0'
    );
\g_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => g_0,
      D => s_axis_tdata(0),
      Q => g(0),
      R => m_axis_tdata_reg_i_2_n_0
    );
\g_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => g_0,
      D => s_axis_tdata(1),
      Q => g(1),
      R => m_axis_tdata_reg_i_2_n_0
    );
\g_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => g_0,
      D => s_axis_tdata(2),
      Q => g(2),
      R => m_axis_tdata_reg_i_2_n_0
    );
\g_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => g_0,
      D => s_axis_tdata(3),
      Q => g(3),
      R => m_axis_tdata_reg_i_2_n_0
    );
\g_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => g_0,
      D => s_axis_tdata(4),
      Q => g(4),
      R => m_axis_tdata_reg_i_2_n_0
    );
\g_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => g_0,
      D => s_axis_tdata(5),
      Q => g(5),
      R => m_axis_tdata_reg_i_2_n_0
    );
\g_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => g_0,
      D => s_axis_tdata(6),
      Q => g(6),
      R => m_axis_tdata_reg_i_2_n_0
    );
\g_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => g_0,
      D => s_axis_tdata(7),
      Q => g(7),
      R => m_axis_tdata_reg_i_2_n_0
    );
m_axis_tdata_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 10) => B"00000000000000000000",
      A(9 downto 0) => A(9 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_m_axis_tdata_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000000010101",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_m_axis_tdata_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_m_axis_tdata_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_m_axis_tdata_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => m_axis_tdata_reg_i_1_n_0,
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_m_axis_tdata_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_m_axis_tdata_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 14) => NLW_m_axis_tdata_reg_P_UNCONNECTED(47 downto 14),
      P(13 downto 6) => m_axis_tdata(7 downto 0),
      P(5) => m_axis_tdata_reg_n_100,
      P(4) => m_axis_tdata_reg_n_101,
      P(3) => m_axis_tdata_reg_n_102,
      P(2) => m_axis_tdata_reg_n_103,
      P(1) => m_axis_tdata_reg_n_104,
      P(0) => m_axis_tdata_reg_n_105,
      PATTERNBDETECT => NLW_m_axis_tdata_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_m_axis_tdata_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_m_axis_tdata_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => m_axis_tdata_reg_i_2_n_0,
      UNDERFLOW => NLW_m_axis_tdata_reg_UNDERFLOW_UNCONNECTED
    );
m_axis_tdata_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      O => m_axis_tdata_reg_i_1_n_0
    );
m_axis_tdata_reg_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g(3),
      I1 => b(3),
      I2 => r(3),
      O => m_axis_tdata_reg_i_10_n_0
    );
m_axis_tdata_reg_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => m_axis_tdata_reg_i_7_n_0,
      I1 => b(7),
      I2 => g(7),
      I3 => r(7),
      O => m_axis_tdata_reg_i_11_n_0
    );
m_axis_tdata_reg_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g(6),
      I1 => b(6),
      I2 => r(6),
      I3 => m_axis_tdata_reg_i_8_n_0,
      O => m_axis_tdata_reg_i_12_n_0
    );
m_axis_tdata_reg_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g(5),
      I1 => b(5),
      I2 => r(5),
      I3 => m_axis_tdata_reg_i_9_n_0,
      O => m_axis_tdata_reg_i_13_n_0
    );
m_axis_tdata_reg_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g(4),
      I1 => b(4),
      I2 => r(4),
      I3 => m_axis_tdata_reg_i_10_n_0,
      O => m_axis_tdata_reg_i_14_n_0
    );
m_axis_tdata_reg_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g(2),
      I1 => b(2),
      I2 => r(2),
      O => m_axis_tdata_reg_i_15_n_0
    );
m_axis_tdata_reg_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g(1),
      I1 => b(1),
      I2 => r(1),
      O => m_axis_tdata_reg_i_16_n_0
    );
m_axis_tdata_reg_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g(0),
      I1 => b(0),
      I2 => r(0),
      O => m_axis_tdata_reg_i_17_n_0
    );
m_axis_tdata_reg_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g(3),
      I1 => b(3),
      I2 => r(3),
      I3 => m_axis_tdata_reg_i_15_n_0,
      O => m_axis_tdata_reg_i_18_n_0
    );
m_axis_tdata_reg_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g(2),
      I1 => b(2),
      I2 => r(2),
      I3 => m_axis_tdata_reg_i_16_n_0,
      O => m_axis_tdata_reg_i_19_n_0
    );
m_axis_tdata_reg_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => m_axis_tdata_reg_i_2_n_0
    );
m_axis_tdata_reg_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g(1),
      I1 => b(1),
      I2 => r(1),
      I3 => m_axis_tdata_reg_i_17_n_0,
      O => m_axis_tdata_reg_i_20_n_0
    );
m_axis_tdata_reg_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => g(0),
      I1 => b(0),
      I2 => r(0),
      O => m_axis_tdata_reg_i_21_n_0
    );
m_axis_tdata_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => m_axis_tdata_reg_i_4_n_0,
      CO(3 downto 2) => NLW_m_axis_tdata_reg_i_3_CO_UNCONNECTED(3 downto 2),
      CO(1) => A(9),
      CO(0) => NLW_m_axis_tdata_reg_i_3_CO_UNCONNECTED(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => NLW_m_axis_tdata_reg_i_3_O_UNCONNECTED(3 downto 1),
      O(0) => A(8),
      S(3 downto 1) => B"001",
      S(0) => m_axis_tdata_reg_i_6_n_0
    );
m_axis_tdata_reg_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => m_axis_tdata_reg_i_5_n_0,
      CO(3) => m_axis_tdata_reg_i_4_n_0,
      CO(2) => m_axis_tdata_reg_i_4_n_1,
      CO(1) => m_axis_tdata_reg_i_4_n_2,
      CO(0) => m_axis_tdata_reg_i_4_n_3,
      CYINIT => '0',
      DI(3) => m_axis_tdata_reg_i_7_n_0,
      DI(2) => m_axis_tdata_reg_i_8_n_0,
      DI(1) => m_axis_tdata_reg_i_9_n_0,
      DI(0) => m_axis_tdata_reg_i_10_n_0,
      O(3 downto 0) => A(7 downto 4),
      S(3) => m_axis_tdata_reg_i_11_n_0,
      S(2) => m_axis_tdata_reg_i_12_n_0,
      S(1) => m_axis_tdata_reg_i_13_n_0,
      S(0) => m_axis_tdata_reg_i_14_n_0
    );
m_axis_tdata_reg_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => m_axis_tdata_reg_i_5_n_0,
      CO(2) => m_axis_tdata_reg_i_5_n_1,
      CO(1) => m_axis_tdata_reg_i_5_n_2,
      CO(0) => m_axis_tdata_reg_i_5_n_3,
      CYINIT => '0',
      DI(3) => m_axis_tdata_reg_i_15_n_0,
      DI(2) => m_axis_tdata_reg_i_16_n_0,
      DI(1) => m_axis_tdata_reg_i_17_n_0,
      DI(0) => '0',
      O(3 downto 0) => A(3 downto 0),
      S(3) => m_axis_tdata_reg_i_18_n_0,
      S(2) => m_axis_tdata_reg_i_19_n_0,
      S(1) => m_axis_tdata_reg_i_20_n_0,
      S(0) => m_axis_tdata_reg_i_21_n_0
    );
m_axis_tdata_reg_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g(7),
      I1 => b(7),
      I2 => r(7),
      O => m_axis_tdata_reg_i_6_n_0
    );
m_axis_tdata_reg_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g(6),
      I1 => b(6),
      I2 => r(6),
      O => m_axis_tdata_reg_i_7_n_0
    );
m_axis_tdata_reg_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g(5),
      I1 => b(5),
      I2 => r(5),
      O => m_axis_tdata_reg_i_8_n_0
    );
m_axis_tdata_reg_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g(4),
      I1 => b(4),
      I2 => r(4),
      O => m_axis_tdata_reg_i_9_n_0
    );
m_axis_tlast_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAA8AAA00000000"
    )
        port map (
      I0 => \^m_axis_tlast\,
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      I4 => finito,
      I5 => resetn,
      O => m_axis_tlast_i_1_n_0
    );
m_axis_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_axis_tlast_i_1_n_0,
      Q => \^m_axis_tlast\,
      R => '0'
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8C0AAC000000000"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      I4 => m_axis_tready,
      I5 => resetn,
      O => m_axis_tvalid_i_1_n_0
    );
m_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_axis_tvalid_i_1_n_0,
      Q => \^m_axis_tvalid\,
      R => '0'
    );
\r[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => s_axis_tvalid,
      I3 => state(1),
      O => \r[7]_i_1_n_0\
    );
\r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r[7]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => r(0),
      R => m_axis_tdata_reg_i_2_n_0
    );
\r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r[7]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => r(1),
      R => m_axis_tdata_reg_i_2_n_0
    );
\r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r[7]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => r(2),
      R => m_axis_tdata_reg_i_2_n_0
    );
\r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r[7]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => r(3),
      R => m_axis_tdata_reg_i_2_n_0
    );
\r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r[7]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => r(4),
      R => m_axis_tdata_reg_i_2_n_0
    );
\r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r[7]_i_1_n_0\,
      D => s_axis_tdata(5),
      Q => r(5),
      R => m_axis_tdata_reg_i_2_n_0
    );
\r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r[7]_i_1_n_0\,
      D => s_axis_tdata(6),
      Q => r(6),
      R => m_axis_tdata_reg_i_2_n_0
    );
\r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r[7]_i_1_n_0\,
      D => s_axis_tdata(7),
      Q => r(7),
      R => m_axis_tdata_reg_i_2_n_0
    );
s_axis_tready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFFFFF00400040"
    )
        port map (
      I0 => state(0),
      I1 => m_axis_tready,
      I2 => state(2),
      I3 => state(1),
      I4 => s_axis_tvalid,
      I5 => \^s_axis_tready\,
      O => s_axis_tready_i_1_n_0
    );
s_axis_tready_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => s_axis_tready_i_1_n_0,
      Q => \^s_axis_tready\,
      S => m_axis_tdata_reg_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rgb2gray_0_0 is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_rgb2gray_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_rgb2gray_0_0 : entity is "design_1_rgb2gray_0_0,rgb2gray,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_rgb2gray_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_rgb2gray_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_rgb2gray_0_0 : entity is "rgb2gray,Vivado 2020.2";
end design_1_rgb2gray_0_0;

architecture STRUCTURE of design_1_rgb2gray_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute x_interface_parameter of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_parameter of s_axis_tvalid : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
U0: entity work.design_1_rgb2gray_0_0_rgb2gray
     port map (
      clk => clk,
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      resetn => resetn,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
