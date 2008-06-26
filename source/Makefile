# $Id: Makefile,v 1.2 2008-06-26 06:17:45 arif_endro Exp $
# 
#
# Author  : "Arif E. Nugroho" <arif_endro@yahoo.com>
#
# Copyright (c) 2005,2008 Arif E. Nugroho

VASYFLAGS = -V -H -B -I vhdl -a -p -o
BOOMFLAGS = -VP
BOOGFLAGS = 
LOONFLAGS = 
OCPFLAGS  = -v
NEROFLAGS = -V -6 -p
DRUCFLAGS = 
S2RFLAGS  = -v

all: s2r

done.vasy: fm.vhdl
	@vasy $(VASYFLAGS) $<
	@touch done.vasy

done.boom: done.vasy
	@boom $(BOOMFLAGS) fulladder			fulladder_o
	@boom $(BOOMFLAGS) adder_09bit_model		adder_09bit_model_o
	@boom $(BOOMFLAGS) adder_10bit_model		adder_10bit_model_o
	@boom $(BOOMFLAGS) adder_11bit_model		adder_11bit_model_o
	@boom $(BOOMFLAGS) adder_12bit_model		adder_12bit_model_o
	@boom $(BOOMFLAGS) adder_13bit_model		adder_13bit_model_o
	@boom $(BOOMFLAGS) adder_14bit_model		adder_14bit_model_o
	@boom $(BOOMFLAGS) adder_15bit_model		adder_15bit_model_o
	@boom $(BOOMFLAGS) adder_16bit_model		adder_16bit_model_o
	@boom $(BOOMFLAGS) adder_16bit_u_model		adder_16bit_u_model_o
	@boom $(BOOMFLAGS) adder_18bit_model		adder_18bit_model_o
	@boom $(BOOMFLAGS) sub_12bit_model		sub_12bit_model_o
	@boom $(BOOMFLAGS) mult_8bit_model		mult_8bit_model_o
	@boom $(BOOMFLAGS) addacc_model			addacc_model_o
	@boom $(BOOMFLAGS) rom				rom_o
	@boom $(BOOMFLAGS) nco_model			nco_model_o
	@boom $(BOOMFLAGS) phase_detector_model		phase_detector_model_o
	@boom $(BOOMFLAGS) fir_model			fir_model_o
	@boom $(BOOMFLAGS) loop_filter_model		loop_filter_model_o
	@boom $(BOOMFLAGS) fm_model			fm_model_o
	@touch done.boom

done.boog: done.boom
	@boog $(BOOGFLAGS) fulladder_o
	@boog $(BOOGFLAGS) adder_09bit_model_o
	@boog $(BOOGFLAGS) adder_10bit_model_o
	@boog $(BOOGFLAGS) adder_11bit_model_o
	@boog $(BOOGFLAGS) adder_12bit_model_o
	@boog $(BOOGFLAGS) adder_13bit_model_o
	@boog $(BOOGFLAGS) adder_14bit_model_o
	@boog $(BOOGFLAGS) adder_15bit_model_o
	@boog $(BOOGFLAGS) adder_16bit_model_o
	@boog $(BOOGFLAGS) adder_16bit_u_model_o
	@boog $(BOOGFLAGS) adder_18bit_model_o
	@boog $(BOOGFLAGS) sub_12bit_model_o
	@boog $(BOOGFLAGS) mult_8bit_model_o
	@boog $(BOOGFLAGS) addacc_model_o
	@boog $(BOOGFLAGS) rom_o
	@boog $(BOOGFLAGS) nco_model_o
	@boog $(BOOGFLAGS) phase_detector_model_o
	@boog $(BOOGFLAGS) fir_model_o
	@boog $(BOOGFLAGS) loop_filter_model_o
	@boog $(BOOGFLAGS) fm_model_o
	@touch done.boog

done.loon: done.boog
	@loon $(LOONFLAGS) fulladder_o			fulladder 
	@loon $(LOONFLAGS) adder_09bit_model_o		adder_09bit_model
	@loon $(LOONFLAGS) adder_10bit_model_o		adder_10bit_model
	@loon $(LOONFLAGS) adder_11bit_model_o		adder_11bit_model
	@loon $(LOONFLAGS) adder_12bit_model_o		adder_12bit_model
	@loon $(LOONFLAGS) adder_13bit_model_o		adder_13bit_model
	@loon $(LOONFLAGS) adder_14bit_model_o		adder_14bit_model
	@loon $(LOONFLAGS) adder_15bit_model_o		adder_15bit_model
	@loon $(LOONFLAGS) adder_16bit_model_o		adder_16bit_model
	@loon $(LOONFLAGS) adder_16bit_u_model_o	adder_16bit_u_model
	@loon $(LOONFLAGS) adder_18bit_model_o		adder_18bit_model
	@loon $(LOONFLAGS) sub_12bit_model_o		sub_12bit_model
	@loon $(LOONFLAGS) mult_8bit_model_o		mult_8bit_model
	@loon $(LOONFLAGS) addacc_model_o		addacc_model
	@loon $(LOONFLAGS) rom_o			rom
	@loon $(LOONFLAGS) nco_model_o			nco_model
	@loon $(LOONFLAGS) phase_detector_model_o	phase_detector_model
	@loon $(LOONFLAGS) fir_model_o			fir_model
	@loon $(LOONFLAGS) loop_filter_model_o		loop_filter_model
	@loon $(LOONFLAGS) fm_model_o			fm_model
	@touch done.loon

vasy: done.vasy
boom: done.boom
boog: done.boog
loon: done.loon
ocp:  done.ocp
nero: done.nero
s2r:  done.s2r

# done.fulladder:
# 	@boom $(BOOMFLAGS) fulladder			fulladder_o
# 	@boog $(BOOGFLAGS) fulladder_o
# 	@loon $(LOONFLAGS) fulladder_o			fulladder 
# 	@touch done.fulladder
# 
# done.rom:
# 	@boom $(BOOMFLAGS) rom				rom_o
# 	@boog $(BOOGFLAGS) rom_o
# 	@loon $(LOONFLAGS) rom_o			rom
# 	@boog $(BOOGFLAGS) fulladder_o
# 	@touch done.rom
# 
# done.adder_18bit: done.fulladder
# 	@boom $(BOOMFLAGS) adder_18bit_model		adder_18bit_model_o
# 	@boog $(BOOGFLAGS) adder_18bit_model_o
# 	@loon $(LOONFLAGS) adder_18bit_model_o		adder_18bit_model
# 	@touch done.adder_18bit
# 
# done.addacc: done.adder_18bit
# 	@boom $(BOOMFLAGS) addacc_model			addacc_model_o
# 	@boog $(BOOGFLAGS) addacc_model_o
# 	@loon $(LOONFLAGS) addacc_model_o		addacc_model
# 	@touch done.addacc
# 
# done.loop_filter:
# 	@boom $(BOOMFLAGS) loop_filter_model		loop_filter_model_o
# 	@boog $(BOOGFLAGS) loop_filter_model_o
# 	@loon $(LOONFLAGS) loop_filter_model_o		loop_filter_model
# 	@touch done.loop_filter
# 
# done.fir:
# 	@boom $(BOOMFLAGS) fir_model			fir_model_o
# 	@boog $(BOOGFLAGS) fir_model_o
# 	@loon $(LOONFLAGS) fir_model_o			fir_model
# 	@touch done.fir
# 
# done.phase_detector:
# 	@boom $(BOOMFLAGS) phase_detector_model		phase_detector_model_o
# 	@boog $(BOOGFLAGS) phase_detector_model_o
# 	@loon $(LOONFLAGS) phase_detector_model_o	phase_detector_model
# 	@touch done.phase_detector
# 
# done.nco: done.addacc done.rom
# 	@boom $(BOOMFLAGS) nco_model			nco_model_o
# 	@boog $(BOOGFLAGS) nco_model_o
# 	@loon $(LOONFLAGS) nco_model_o			nco_model
# 	@touch done.nco
# 
# done.fm: done.vasy done.nco done.phase_detector done.fir done.loop_filter
# 	@boom $(BOOMFLAGS) fm_model			fm_model_o
# 	@boog $(BOOGFLAGS) fm_model_o
# 	@loon $(LOONFLAGS) fm_model_o			fm_model
# 	@touch done.fm

done.ocp: done.vasy done.boom done.boog done.loon
	@ocp $(OCPFLAGS) -ioc fm -gnuplot fm fm_p
	@touch done.ocp

done.nero: done.ocp
	@nero $(NEROFLAGS) fm_p fm fm
	@touch done.nero

done.druc: done.nero
	@druc fm
	@touch done.druc

done.s2r: done.nero
	@s2r $(S2RFLAGS) fm
	@touch done.s2r

fm_chip.vst: fm_chip.c
	@genlib $<

clean:
	@rm -vf *.dat *.gpl *.vhd *.vbe *.boom *.pat *.vst *.xsc *.ap *.cif *.drc done.*
