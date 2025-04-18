#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Fri Mar 21 12:19:57 CET 2025
# SW Build 3064766 on Wed Nov 18 09:12:47 MST 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim img_conv_tb_behav -key {Behavioral:sim_1:Functional:img_conv_tb} -tclbatch img_conv_tb.tcl -protoinst "protoinst_files/bd_f60c.protoinst" -log simulate.log"
xsim img_conv_tb_behav -key {Behavioral:sim_1:Functional:img_conv_tb} -tclbatch img_conv_tb.tcl -protoinst "protoinst_files/bd_f60c.protoinst" -log simulate.log

