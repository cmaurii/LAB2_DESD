// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Mar 21 12:22:07 2025
// Host        : gbonanno-b450gamingx running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/gbonanno/Documents/DIdattica/DESD2025/LAB2/template/DESD-LAB2/DESD-LAB2.gen/sources_1/bd/design_1/ip/design_1_depacketizer_0_0/design_1_depacketizer_0_0_sim_netlist.v
// Design      : design_1_depacketizer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_depacketizer_0_0,depacketizer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "depacketizer,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_depacketizer_0_0
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

  wire \<const0> ;
  wire aresetn;
  wire clk;
  wire [6:0]\^m_axis_tdata ;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [7:7]NLW_U0_m_axis_tdata_UNCONNECTED;

  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6:0] = \^m_axis_tdata [6:0];
  GND GND
       (.G(\<const0> ));
  (* FOOTER = "241" *) 
  (* HEADER = "255" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_depacketizer_0_0_depacketizer U0
       (.aresetn(aresetn),
        .clk(clk),
        .m_axis_tdata({NLW_U0_m_axis_tdata_UNCONNECTED[7],\^m_axis_tdata }),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule
`pragma protect begin_protected
`pragma protect version = 2
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect begin_commonblock
`pragma protect control error_handling = "delegated"
`pragma protect control runtime_visibility = "delegated"
`pragma protect control child_visibility = "delegated"
`pragma protect control decryption = "true"
`pragma protect end_commonblock
`pragma protect begin_toolblock
`pragma protect rights_digest_method="sha256"
`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinxt_2020_08", key_method = "rsa", key_block
n7CNZmaL4L26esHyZoBfVRHACXCpvoi9/hVd9zGmiSe+YOsD9q/io3E34lUlLncL8BsixPgc06Sq
3cAPTtRK9E3XLzhfoMUeoxxFIVjX4j76YmYRFlV7mZjilQe0lS3fsfgHxN2swLd4MadRrhRgivn0
3fX2QhRzBkMeJKd0GRK2Ns1QIrrAW4X8IK3snrXYIGCYrXCpJg15EErZTLTrSrJy4kcYGCNOvASB
6Qm9Mn/yr2+POOyUS4Vo9okLl+yDJDJ893GYl5kg24B1MmxBlJvUw4pbb7jxCHT9gmr6cZNhtRzr
vtD6LOkM37fYXdv2+tMxYXp1Q6xzh5tyG0YxIw==

`pragma protect control xilinx_configuration_visible = "false"
`pragma protect control xilinx_enable_modification = "false"
`pragma protect control xilinx_enable_probing = "false"
`pragma protect control xilinx_enable_netlist_export = "true"
`pragma protect control xilinx_enable_bitstream = "true"
`pragma protect control decryption = "true"
`pragma protect end_toolblock="ZgITgleYLY2Pp5w3ly8gfEqUwk//w770giI/VdFzyVU="
`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6976)
`pragma protect data_block
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
f/CyzImgV/9JHSPXhwrGlxxzBRiwGw==
`pragma protect end_protected
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
