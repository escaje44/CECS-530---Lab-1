@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim mux_tb_behav -key {Behavioral:sim_1:Functional:mux_tb} -tclbatch mux_tb.tcl -view C:/Users/mrjdo/Documents/School Files/Fall 2021/CECS 530/Labs/Vivado - Lab Files/Lab 1 - Mux/lab1 - mux/mux_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
