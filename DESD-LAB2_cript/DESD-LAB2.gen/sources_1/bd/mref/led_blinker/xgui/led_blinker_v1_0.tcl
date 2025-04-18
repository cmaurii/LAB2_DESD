# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BLINK_PERIOD_MS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CLK_PERIOD_NS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "N_BLINKS" -parent ${Page_0}


}

proc update_PARAM_VALUE.BLINK_PERIOD_MS { PARAM_VALUE.BLINK_PERIOD_MS } {
	# Procedure called to update BLINK_PERIOD_MS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BLINK_PERIOD_MS { PARAM_VALUE.BLINK_PERIOD_MS } {
	# Procedure called to validate BLINK_PERIOD_MS
	return true
}

proc update_PARAM_VALUE.CLK_PERIOD_NS { PARAM_VALUE.CLK_PERIOD_NS } {
	# Procedure called to update CLK_PERIOD_NS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLK_PERIOD_NS { PARAM_VALUE.CLK_PERIOD_NS } {
	# Procedure called to validate CLK_PERIOD_NS
	return true
}

proc update_PARAM_VALUE.N_BLINKS { PARAM_VALUE.N_BLINKS } {
	# Procedure called to update N_BLINKS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.N_BLINKS { PARAM_VALUE.N_BLINKS } {
	# Procedure called to validate N_BLINKS
	return true
}


proc update_MODELPARAM_VALUE.CLK_PERIOD_NS { MODELPARAM_VALUE.CLK_PERIOD_NS PARAM_VALUE.CLK_PERIOD_NS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLK_PERIOD_NS}] ${MODELPARAM_VALUE.CLK_PERIOD_NS}
}

proc update_MODELPARAM_VALUE.BLINK_PERIOD_MS { MODELPARAM_VALUE.BLINK_PERIOD_MS PARAM_VALUE.BLINK_PERIOD_MS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BLINK_PERIOD_MS}] ${MODELPARAM_VALUE.BLINK_PERIOD_MS}
}

proc update_MODELPARAM_VALUE.N_BLINKS { MODELPARAM_VALUE.N_BLINKS PARAM_VALUE.N_BLINKS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.N_BLINKS}] ${MODELPARAM_VALUE.N_BLINKS}
}

