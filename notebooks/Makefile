%.tex: %.ipynb
	jupyter nbconvert --to latex --no-input $<
trash += *.tex

%.pdf: %.tex
	@xelatex $<
	@xelatex $<
trash += *.pdf

clean:
	$(RM) -f *.aux *.log $(trash)