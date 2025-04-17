-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Fri Mar 21 12:22:08 2025
-- Host        : gbonanno-b450gamingx running 64-bit Ubuntu 24.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/gbonanno/Documents/DIdattica/DESD2025/LAB2/template/DESD-LAB2/DESD-LAB2.gen/sources_1/bd/design_1/ip/design_1_img_conv_0_0/design_1_img_conv_0_0_stub.vhdl
-- Design      : design_1_img_conv_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_img_conv_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    conv_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    conv_data : in STD_LOGIC_VECTOR ( 6 downto 0 );
    start_conv : in STD_LOGIC;
    done_conv : out STD_LOGIC
  );

end design_1_img_conv_0_0;

architecture stub of design_1_img_conv_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,aresetn,m_axis_tdata[7:0],m_axis_tvalid,m_axis_tready,m_axis_tlast,conv_addr[15:0],conv_data[6:0],start_conv,done_conv";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "img_conv,Vivado 2020.2";
begin
end;
