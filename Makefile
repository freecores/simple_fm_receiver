# $Id: Makefile,v 1.1.1.1 2005-01-04 02:05:54 arif_endro Exp $
# 

all:
#	$(MAKE) -C source fm ;
	$(MAKE) -C source fm_v;

export: all
#	mv -v source/*.vhd export/vhd/;
#	cp -v source/modelsim_vhd.do export/vhd/;
	mv -v source/*.v export/verilog/;
#	cp -v source/modelsim_v.do export/verilog/;
#	cp -v bench/*.vhdl export/vhd;
#	cp -v modelsim-bench/*.txt export/vhd;
#	cp -v modelsim-bench/*.v export/verilog;
#	cp -v modelsim-bench/*.* export/verilog; -- it's in VHDL format 
#	and didn't work with verilog although can be compiled
clean:
	$(MAKE) -C source clean_vhd
	$(MAKE) -C docs clean
	$(MAKE) -C export/vhd clean_vhd 
	$(MAKE) -C export/verilog clean_v
