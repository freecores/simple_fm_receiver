# $Id: Makefile,v 1.1.1.1 2005-01-04 02:05:55 arif_endro Exp $

MYFILE = report

all            : docs

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

docs : pdf ps
	mv -v $(MYFILE).pdf ../
	mv -v $(MYFILE).ps ../

xdvi   : dvi
	xdvi $(MYFILE).dvi

clean :
	rm -v -f $(MYFILE).ps $(MYFILE).pdf $(MYFILE).log $(MYFILE).dvi $(MYFILE).aux $(MYFILE).toc 
#	../$(MYFILE).pdf ../$(MYFILE).ps
real_clean: clean
	rm -v -f ../$(MYFILE).pdf ../$(MYFILE).ps
