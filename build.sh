#!/bin/bash
##define here the list of filename to build, without extension

echo "##############################################"
echo "Building tex file"
echo "[$1]"
echo "##############################################"

latex -interaction=nonstopmode $1.tex
makeindex $1.idx
bibtex  $1.aux
latex -interaction=nonstopmode $1.tex
dvips -Pdownload35 -o $1.ps $1.dvi
ps2pdf $1.ps


#rm $1.aux 
#rm $1.flg 
rm $1.log 
rm $1.ilg 
rm $1.ind
rm $1.blg 
rm $1.toc 
rm $1.idx 
#rm $1.bbl 
rm $1.ps 
rm $1.dvi
#rm $1.snm
rm $1.out
#rm $1.nav
#rm $1.vrb





