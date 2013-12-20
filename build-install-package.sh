set -e
TL_VERSION=2013
cd gdictee
rm -f gdictee.sty
latex gdictee.ins
pdflatex gdictee.dtx
if [ ! -d /usr/local/texlive/$TL_VERSION/texmf-dist/tex/latex/gdictee ]
then
	sudo mkdir /usr/local/texlive/$TL_VERSION/texmf-dist/tex/latex/gdictee
fi
sudo /bin/cp -f gdictee.sty /usr/local/texlive/$TL_VERSION/texmf-dist/tex/latex/gdictee
rm -f gdictee.sty
sudo /usr/local/texlive/$TL_VERSION/bin/x86_64-linux/texhash
pdflatex gdictee-test091.tex
pdflatex gdictee-test101.tex
pdflatex gdictee-test111.tex
pdflatex gdictee-test121.tex
pdflatex gdictee-test092.tex
pdflatex gdictee-test102.tex
pdflatex gdictee-test112.tex
pdflatex gdictee-test122.tex
pdflatex gdictee-test093.tex
pdflatex gdictee-test103.tex
pdflatex gdictee-test113.tex
pdflatex gdictee-test123.tex
rm -f *.aux *.dvi *.log *.out
cd ..
rm -f gdictee.tar.gz gdictee.tar
tar cf gdictee.tar gdictee
gzip gdictee.tar
