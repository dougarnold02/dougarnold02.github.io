# Time-stamp: <26 Feb 2020, 13:26:23 GMT (doug: a14019.essex.ac.uk): Makefile>
# ~/public_html/Makefile ...
texfile = index
htmldirectory = ./
htmlcmd=hyperlatex
# htmldirectory= $(HOME)/myweb
defaulttarget=all
include ~/LaTeX/Maketex/Makefile
include ./genericMakefile

all : index.html Publications.html
# sync-put

index.html : index.tex git
	$(htmlcmd) $<
	chmod a+r *.html

Publications.html : ~/BibTeX/Arnold-major.bib ~/BibTeX/Arnold-minor.bib $(texfile:.tex=).aux
# rm -f $@
	printf "<html>\n<head>\n"                                 > $@
	printf "<LINK rel=stylesheet\n href=\"./StyleSheets/doug.css\" type=\"text/css\">" >> $@
	printf "</head>\n<body>\n<h1>Publications List</h1>\n"                       >> $@
	printf "\n<h2>Journals, Articles in Books, etc</h2>\n"                 >> $@
	bib2html -s empty ~/BibTeX/Arnold-major.bib | sed -n  '/<UL>/,/<[/]UL>/p' >> $@
	printf "\n<h2>Conference Proceedings, etc</h2>\n" >> $@
	bib2html -s empty ~/BibTeX/Arnold-minor.bib | sed -n  '/<UL>/,/<[/]UL>/p' >> $@
	printf "\n</body>\n</html>\n"                                             >> $@
	chmod a+r $@
	pdflatex $(texfile:.tex=)
	bibtex $(texfile:.tex=)
# this runs latex and bibtex to generate the index.bbl file ---
# you may need to re-run hyperlatex, to get the full effect in the index.html file.
# If it seems to be running perpetually, it will be because the aux file is refreshing
# so that Publications.html seems to be out of date.

new : newdir
newdir : 
	umask 022 && tar -xvf newdir.tar 
	printf "Rename newdir to whatever you want..\n"

targets := $(targets) all,\ index.html,\ Publications.html
targets := $(targets) newdir
targets := $(targets) "See 00-instructions.txt"
