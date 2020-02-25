# The files here each contain a single bibtex entry; the file name is the label of the entry.
# a lot of these filenames canontain ':' or '_' which may cause problems, but I have not bothereed to change them.

all : $(subst bib,end,$(wildcard *-bib.txt)) 

%-end.txt : %-bib.txt
	perl /Users/doug/src/perl-lib/bibsearch/cgi-bin/bibtex2refer.pl $<  | sed '/^\./D' | squeeze > $@

%-bib.txt : 
	~/bin/lookbib -f $* > $@
