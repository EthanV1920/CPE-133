@echo off
REM ****************************************************************************
REM Vivado (TM) v2023.1.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Tue Sep 26 16:56:51 -0700 2023
REM SW Build 3900603 on Fri Jun 16 19:31:24 MDT 2023
REM
REM IP Build 3900379 on Sat Jun 17 05:28:05 MDT 2023
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim FLC_TB_behav -key {Behavioral:sim_1:Functional:FLC_TB} -tclbatch FLC_TB.tcl -view Z:/Documents/git/CPE-133/Test Project/Test Project/FLC_TB_behav.wcfg -log simulate.log"
call xsim  FLC_TB_behav -key {Behavioral:sim_1:Functional:FLC_TB} -tclbatch FLC_TB.tcl -view Z:/Documents/git/CPE-133/Test Project/Test Project/FLC_TB_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
