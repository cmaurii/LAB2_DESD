-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Apr 17 17:50:44 2025
-- Host        : LAPTOP-N6QBIPS8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_depacketizer_0_0_sim_netlist.vhdl
-- Design      : design_1_depacketizer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_depacketizer is
  port (
    s_axis_tready : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    clk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_depacketizer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_depacketizer is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal data_buffer : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_buffer_0 : STD_LOGIC;
  signal \m_axis_tdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tlast\ : STD_LOGIC;
  signal m_axis_tlast_i_1_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_2_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_4_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_5_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_6_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal m_axis_tvalid_int : STD_LOGIC;
  signal m_axis_tvalid_int_i_1_n_0 : STD_LOGIC;
  signal m_axis_tvalid_int_i_2_n_0 : STD_LOGIC;
  signal m_axis_tvalid_int_i_3_n_0 : STD_LOGIC;
  signal next_image : STD_LOGIC;
  signal next_image_i_1_n_0 : STD_LOGIC;
  signal next_image_i_2_n_0 : STD_LOGIC;
  signal s_axis_tready_int : STD_LOGIC;
  signal s_axis_tready_int_i_2_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "receive_data:01,send_data:10,idle:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "receive_data:01,send_data:10,idle:00";
  attribute SOFT_HLUTNM of m_axis_tlast_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of m_axis_tlast_i_5 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of next_image_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of next_image_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of s_axis_tready_int_i_1 : label is "soft_lutpair3";
begin
  m_axis_tlast <= \^m_axis_tlast\;
  m_axis_tvalid <= \^m_axis_tvalid\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B4B0"
    )
        port map (
      I0 => state(1),
      I1 => s_axis_tvalid,
      I2 => state(0),
      I3 => m_axis_tready,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EC00ECCC"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => state(1),
      I2 => s_axis_tvalid,
      I3 => state(0),
      I4 => m_axis_tready,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFDFFFF"
    )
        port map (
      I0 => m_axis_tlast_i_6_n_0,
      I1 => s_axis_tdata(2),
      I2 => s_axis_tdata(3),
      I3 => s_axis_tdata(1),
      I4 => s_axis_tdata(0),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => s_axis_tready_int_i_2_n_0,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => s_axis_tready_int_i_2_n_0,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1)
    );
\data_buffer[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => s_axis_tvalid,
      I2 => state(1),
      I3 => state(0),
      O => data_buffer_0
    );
\data_buffer_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_buffer_0,
      CLR => s_axis_tready_int_i_2_n_0,
      D => s_axis_tdata(0),
      Q => data_buffer(0)
    );
\data_buffer_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_buffer_0,
      CLR => s_axis_tready_int_i_2_n_0,
      D => s_axis_tdata(1),
      Q => data_buffer(1)
    );
\data_buffer_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_buffer_0,
      CLR => s_axis_tready_int_i_2_n_0,
      D => s_axis_tdata(2),
      Q => data_buffer(2)
    );
\data_buffer_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_buffer_0,
      CLR => s_axis_tready_int_i_2_n_0,
      D => s_axis_tdata(3),
      Q => data_buffer(3)
    );
\data_buffer_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_buffer_0,
      CLR => s_axis_tready_int_i_2_n_0,
      D => s_axis_tdata(4),
      Q => data_buffer(4)
    );
\data_buffer_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_buffer_0,
      CLR => s_axis_tready_int_i_2_n_0,
      D => s_axis_tdata(5),
      Q => data_buffer(5)
    );
\data_buffer_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_buffer_0,
      CLR => s_axis_tready_int_i_2_n_0,
      D => s_axis_tdata(6),
      Q => data_buffer(6)
    );
\data_buffer_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_buffer_0,
      CLR => s_axis_tready_int_i_2_n_0,
      D => s_axis_tdata(7),
      Q => data_buffer(7)
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => state(0),
      I1 => m_axis_tready,
      I2 => state(1),
      I3 => aresetn,
      O => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      D => data_buffer(0),
      Q => m_axis_tdata(0),
      R => '0'
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      D => data_buffer(1),
      Q => m_axis_tdata(1),
      R => '0'
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      D => data_buffer(2),
      Q => m_axis_tdata(2),
      R => '0'
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      D => data_buffer(3),
      Q => m_axis_tdata(3),
      R => '0'
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      D => data_buffer(4),
      Q => m_axis_tdata(4),
      R => '0'
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      D => data_buffer(5),
      Q => m_axis_tdata(5),
      R => '0'
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      D => data_buffer(6),
      Q => m_axis_tdata(6),
      R => '0'
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      D => data_buffer(7),
      Q => m_axis_tdata(7),
      R => '0'
    );
m_axis_tlast_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FDF0FDD00D000DD"
    )
        port map (
      I0 => state(1),
      I1 => m_axis_tlast_i_2_n_0,
      I2 => m_axis_tvalid_int,
      I3 => m_axis_tlast_i_4_n_0,
      I4 => m_axis_tlast_i_5_n_0,
      I5 => \^m_axis_tlast\,
      O => m_axis_tlast_i_1_n_0
    );
m_axis_tlast_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => s_axis_tdata(2),
      I1 => s_axis_tdata(3),
      I2 => s_axis_tdata(1),
      I3 => s_axis_tdata(0),
      I4 => m_axis_tlast_i_6_n_0,
      I5 => state(0),
      O => m_axis_tlast_i_2_n_0
    );
m_axis_tlast_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => state(1),
      I1 => m_axis_tready,
      I2 => state(0),
      O => m_axis_tvalid_int
    );
m_axis_tlast_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554555555555555"
    )
        port map (
      I0 => next_image,
      I1 => s_axis_tdata(2),
      I2 => s_axis_tdata(3),
      I3 => s_axis_tdata(1),
      I4 => s_axis_tdata(0),
      I5 => m_axis_tlast_i_6_n_0,
      O => m_axis_tlast_i_4_n_0
    );
m_axis_tlast_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => s_axis_tvalid,
      O => m_axis_tlast_i_5_n_0
    );
m_axis_tlast_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => s_axis_tdata(4),
      I2 => s_axis_tdata(6),
      I3 => s_axis_tdata(7),
      O => m_axis_tlast_i_6_n_0
    );
m_axis_tlast_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_axis_tready_int_i_2_n_0,
      D => m_axis_tlast_i_1_n_0,
      Q => \^m_axis_tlast\
    );
m_axis_tvalid_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBBB0B00F000000"
    )
        port map (
      I0 => m_axis_tvalid_int_i_2_n_0,
      I1 => m_axis_tvalid_int_i_3_n_0,
      I2 => state(0),
      I3 => m_axis_tready,
      I4 => state(1),
      I5 => \^m_axis_tvalid\,
      O => m_axis_tvalid_int_i_1_n_0
    );
m_axis_tvalid_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => state(1),
      I2 => s_axis_tdata(7),
      I3 => s_axis_tdata(6),
      I4 => s_axis_tdata(4),
      I5 => s_axis_tdata(5),
      O => m_axis_tvalid_int_i_2_n_0
    );
m_axis_tvalid_int_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8002"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => s_axis_tdata(1),
      I2 => s_axis_tdata(3),
      I3 => s_axis_tdata(2),
      O => m_axis_tvalid_int_i_3_n_0
    );
m_axis_tvalid_int_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_axis_tready_int_i_2_n_0,
      D => m_axis_tvalid_int_i_1_n_0,
      Q => \^m_axis_tvalid\
    );
next_image_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => next_image_i_2_n_0,
      I1 => state(1),
      I2 => m_axis_tready,
      I3 => state(0),
      I4 => next_image,
      O => next_image_i_1_n_0
    );
next_image_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => m_axis_tlast_i_6_n_0,
      I1 => s_axis_tdata(0),
      I2 => s_axis_tdata(1),
      I3 => s_axis_tdata(3),
      I4 => s_axis_tdata(2),
      O => next_image_i_2_n_0
    );
next_image_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => s_axis_tready_int_i_2_n_0,
      D => next_image_i_1_n_0,
      Q => next_image
    );
s_axis_tready_int_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => s_axis_tready_int
    );
s_axis_tready_int_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => s_axis_tready_int_i_2_n_0
    );
s_axis_tready_int_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_axis_tready_int_i_2_n_0,
      D => s_axis_tready_int,
      Q => s_axis_tready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_depacketizer_0_0,depacketizer,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "depacketizer,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_parameter of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute x_interface_parameter of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_depacketizer
     port map (
      aresetn => aresetn,
      clk => clk,
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
