# $Id: Makefile,v 1.2 2005-01-25 04:45:59 arif_endro Exp $

MYFILE = simple_fm_receiver

all            : docs clean

pdf   : dvi
	dvipdf $(MYFILE).dvi
#	mv -v $(MYFILE).pdf ../

ps    : dvi
	dvips -f $(MYFILE).dvi -o $(MYFILE).ps 
#	mv -v $(MYFILE).ps ../
#	dvips -f $(MYFILE).dvi > $(MYFILE).ps 

# %.eps : %.fig
# 	fig2dev -L eps $< > $@
# 
print : dvi
	dvips $(MYFILE).dvi

dvi   : $(MYFILE).tex
	latex $(MYFILE).tex

docs : pdf
	mv -v $(MYFILE).pdf ../
#	mv -v $(MYFILE).ps ../

xdvi   : dvi
	xdvi $(MYFILE).dvi

clean :
	rm -v -f $(MYFILE).log $(MYFILE).dvi $(MYFILE).aux $(MYFILE).toc $(MYFILE).lof
#	../$(MYFILE).pdf ../$(MYFILE).ps
real_clean: clean
	rm -v -f $(MYFILE).ps $(MYFILE).pdf ../$(MYFILE).pdf ../$(MYFILE).ps
