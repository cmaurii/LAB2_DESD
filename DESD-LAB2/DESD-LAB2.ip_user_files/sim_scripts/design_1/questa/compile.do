vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/gigantic_mux

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap gigantic_mux questa_lib/msim/gigantic_mux

vlog -work xpm  -sv "+incdir+../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ipshared/8f9c/hdl/AXI4Stream_UART_v1_0_M00_AXIS_RX.vhd" \
"../../../bd/design_1/ipshared/8f9c/hdl/AXI4Stream_UART_v1_0_S00_AXIS_TX.vhd" \
"../../../bd/design_1/ipshared/8f9c/hdl/UART_Engine.vhd" \
"../../../bd/design_1/ipshared/8f9c/hdl/UART_Manager.vhd" \
"../../../bd/design_1/ipshared/8f9c/hdl/AXI4Stream_UART_v1_0.vhd" \
"../../../bd/design_1/ip/design_1_AXI4Stream_UART_0_0/sim/design_1_AXI4Stream_UART_0_0.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/sim/bd_f60c.vhd" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_0/sim/bd_f60c_ila_lib_0.vhd" \

vlog -work gigantic_mux  "+incdir+../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" \
"../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/d322/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  "+incdir+../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_1/bd_f60c_g_inst_0_gigantic_mux.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_1/sim/bd_f60c_g_inst_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_system_ila_0_0/sim/design_1_system_ila_0_0.vhd" \
"../../../bd/design_1/ip/design_1_led_blinker_0_0/sim/design_1_led_blinker_0_0.vhd" \
"../../../bd/design_1/ip/design_1_packetizer_0_1/sim/design_1_packetizer_0_1.vhd" \
"../../../bd/design_1/ip/design_1_depacketizer_0_0/sim/design_1_depacketizer_0_0.vhd" \
"../../../bd/design_1/ip/design_1_img_conv_0_0/sim/design_1_img_conv_0_0.vhd" \
"../../../bd/design_1/ip/design_1_rgb2gray_0_0/sim/design_1_rgb2gray_0_0.vhd" \
"../../../bd/design_1/ip/design_1_bram_writer_0_0/sim/design_1_bram_writer_0_0.vhd" \
"../../../bd/design_1/ip/design_1_led_blinker_0_1/sim/design_1_led_blinker_0_1.vhd" \
"../../../bd/design_1/ip/design_1_led_blinker_0_2/sim/design_1_led_blinker_0_2.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

