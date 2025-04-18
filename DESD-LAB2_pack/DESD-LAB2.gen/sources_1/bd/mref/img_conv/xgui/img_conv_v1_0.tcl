# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "LOG2_N_COLS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LOG2_N_ROWS" -parent ${Page_0}


}

proc update_PARAM_VALUE.LOG2_N_COLS { PARAM_VALUE.LOG2_N_COLS } {
	# Procedure called to update LOG2_N_COLS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LOG2_N_COLS { PARAM_VALUE.LOG2_N_COLS } {
	# Procedure called to validate LOG2_N_COLS
	return true
}

proc update_PARAM_VALUE.LOG2_N_ROWS { PARAM_VALUE.LOG2_N_ROWS } {
	# Procedure called to update LOG2_N_ROWS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LOG2_N_ROWS { PARAM_VALUE.LOG2_N_ROWS } {
	# Procedure called to validate LOG2_N_ROWS
	return true
}


proc update_MODELPARAM_VALUE.LOG2_N_COLS { MODELPARAM_VALUE.LOG2_N_COLS PARAM_VALUE.LOG2_N_COLS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LOG2_N_COLS}] ${MODELPARAM_VALUE.LOG2_N_COLS}
}

proc update_MODELPARAM_VALUE.LOG2_N_ROWS { MODELPARAM_VALUE.LOG2_N_ROWS PARAM_VALUE.LOG2_N_ROWS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LOG2_N_ROWS}] ${MODELPARAM_VALUE.LOG2_N_ROWS}
}

