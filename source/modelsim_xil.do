# $Id: modelsim_xil.do,v 1.1.1.1 2005-01-04 02:05:58 arif_endro Exp $
# Modelsim do file
destroy .wave;
destroy .list;
vlib work;
vcom fm_timesim.vhd bench_xil.vhdl input_fm_xil.vhdl;
vsim -t 1ps bench;
add wave /bench/clock;
add wave /bench/reset;
add wave -height 80 -scale .1 -format Analog-Step /bench/myfm/fmin
add wave -height 80 -scale 2. -format Analog-Step /bench/myfm/dmout 
# force -freeze sim:/bench/clock 1 0, 0 {50 ns} -r 100
# force -freeze sim:/bench/reset 0 0
# run -all
# run 102400ns
