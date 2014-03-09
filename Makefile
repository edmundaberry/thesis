LATEX_FILE = berry_thesis
TEX        = pdflatex
BIB        = bibtex
TMP_FOLDER = ./tmp/
DOC_FOLDER = ./doc/
TEX_FOLDER = ./tex/

TEX_SUB_FILES = $(shell find . -name '*.tex' | grep -v '.\#')

GIF_SUB_FILES = $(shell find . -name "*.gif")
PNG_SUB_FILES = $(shell find . -name "*.png")
JPG_SUB_FILES = $(shell find . -name "*.jpg")
PDF_SUB_FILES = $(shell find . -name "*.pdf" | grep -v "$(LATEX_FILE).pdf" )
FIG_SUB_FILES = $(GIF_SUB_FILES) $(PNG_SUB_FILES) $(JPG_SUB_FILES) $(PDF_SUB_FILES)
BIB_SUB_FILES = $(shell find . -name "*.bib")

$(TMP_FOLDER)$(LATEX_FILE).pdf: $(LATEX_FILE).tex $(TEX_SUB_FILES) $(FIG_SUB_FILES) $(BIB_SUB_FILES)
# Run tex once
	$(TEX) -output-directory=$(TMP_FOLDER) $(LATEX_FILE)
# Then run bibtex once
# http://www.bibtex.org/Using/
	cp *.bst $(TMP_FOLDER)
	cp $(LATEX_FILE).bib $(TMP_FOLDER)
	cd $(TMP_FOLDER); $(BIB) $(LATEX_FILE)
# Then run tex again
	cd -; $(TEX) -output-directory=$(TMP_FOLDER) $(LATEX_FILE)
# Then run makeindex
# http://en.wikibooks.org/wiki/LaTeX/Indexing#Abbreviation_list
	makeindex $(TMP_FOLDER)/$(LATEX_FILE).nlo -s nomencl.ist -o $(LATEX_FILE).nls
# Then run tex one last time
	$(TEX) -output-directory=$(TMP_FOLDER) $(LATEX_FILE)
# Then copy the files where you want them
	cp $(TMP_FOLDER)$(LATEX_FILE).pdf $(DOC_FOLDER)$(LATEX_FILE).pdf
	cp $(TMP_FOLDER)$(LATEX_FILE).pdf .

pdf	: $(TMP_FOLDER)$(LATEX_FILE).pdf
all	: pdf
clean	:
	rm -f *~
	rm -f $(TMP_FOLDER)/*
	rm -f $(DOC_FOLDER)*.pdf 
	rm -f $(DOC_FOLDER)*.ps
	rm -f $(LATEX_FILE).ilg
	rm -f $(LATEX_FILE).nls
	rm -f $(LATEX_FILE).nlo
	rm -f $(LATEX_FILE).log
	rm -f $(LATEX_FILE).out
	rm -f $(LATEX_FILE).toc
	rm -f $(LATEX_FILE).aux 
	rm -f $(LATEX_FILE).pdf


