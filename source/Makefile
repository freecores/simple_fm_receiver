# $Id: Makefile,v 1.1.1.1 2005-01-04 02:05:58 arif_endro Exp $
# 
all       : fm
# 	vasy -V nco.vhdl
# 	vasy -V rom.vhdl
# 	vasy -V addacc.vhdl
# verilog       :
# 	vasy -V -v nco.vhdl
# 	vasy -V -v rom.vhdl
# 	vasy -V -v addacc.vhdl
nco	: nco.vhdl
	vasy -V -H -o nco.vhdl
fm	: fm.vhdl
	vasy -V -H -o fm.vhdl
fm_v	: fm.vhdl
	vasy -V -H -o -v fm.vhdl
loop_filter: 
	vasy -V -H -o loop_filter.vhdl
clean_vhd :
	rm -v -f *.vhd
clean_v   :
	rm -v -f *.v
clean_vbe :
	rm -v -f *.vbe
clean_vst :
	rm -v -f *.vst
clean    : clean_vhd
#	rm -v *~
#	echo "use make clean_vbe, clean_vhd, clean_v, clean_vst to clean up"