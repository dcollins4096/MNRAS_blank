

files = main.tex
name = main


main.pdf: $(files)
	pdflatex $(name)
	bibtex   $(name)
	pdflatex $(name)
	pdflatex $(name)

o: $(files)
	pdflatex $(name)

clean:
	-@rm -f *.{aux,toc,dvi,lof,lot,log,lom,bbl,bcf,blg,pdf,ps,out,run.xml} *~

