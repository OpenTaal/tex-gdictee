set -e
cd gdictee
rm -f gdictee.sty
latex gdictee.ins
pdflatex gdictee.dtx
for i in gdictee-test*.tex; do
    pdflatex $i
done
rm -f *.aux *.dvi *.log *.out
cd ..
rm -f gdictee.tar.gz gdictee.tar
tar cf gdictee.tar gdictee
gzip gdictee.tar
