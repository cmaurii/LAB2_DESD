-makelib ies_lib/xpm -sv \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ipshared/8f9c/hdl/AXI4Stream_UART_v1_0_M00_AXIS_RX.vhd" \
  "../../../bd/design_1/ipshared/8f9c/hdl/AXI4Stream_UART_v1_0_S00_AXIS_TX.vhd" \
  "../../../bd/design_1/ipshared/8f9c/hdl/UART_Engine.vhd" \
  "../../../bd/design_1/ipshared/8f9c/hdl/UART_Manager.vhd" \
  "../../../bd/design_1/ipshared/8f9c/hdl/AXI4Stream_UART_v1_0.vhd" \
  "../../../bd/design_1/ip/design_1_AXI4Stream_UART_0_0/sim/design_1_AXI4Stream_UART_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/sim/bd_f60c.vhd" \
  "../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_0/sim/bd_f60c_ila_lib_0.vhd" \
-endlib
-makelib ies_lib/gigantic_mux \
  "../../../../DESD-LAB2.gen/sources_1/bd/design_1/ipshared/d322/hdl/gigantic_mux_v1_0_cntr.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_1/bd_f60c_g_inst_0_gigantic_mux.v" \
  "../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_1/sim/bd_f60c_g_inst_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
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
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

