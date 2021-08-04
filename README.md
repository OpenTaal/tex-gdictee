# tex-gdictee

This is a LaTeX package with Dutch dummy text from _Groot Dictee der Nederlandse
Taal_
([Grand Dictation of the Dutch Language](https://en.wikipedia.org/wiki/Grand_Dictation_of_the_Dutch_Language)). This is also abbreviated as only
_Groot Dictee_ (Grand Dictation).

The function of this package is to provide the user with dummy text in Dutch, to
be used as fillers but also for testing Dutch hyphenation patterns. The license
for this package is the LaTeX Project Public License (LPPL).

Please, see [gdictee/README](gdictee/README) and
[gdictee/gdictee.pdf](gdictee/gdictee.pdf) for more documentation. The actual
implementation is in [gdictee/gdictee.dtx](gdictee/gdictee.dtx) and
[gdictee/gdictee.ins](gdictee/gdictee.ins).

The tests are located in `gdictee/gdictee-test???.tex` and their results are in
`gdictee/gdictee-test???.pdf`. The first two numerals in the file name represent
the font size and the third numeral represents the number of columns.

Use ./build-test-package.sh withto build and test this package and package the
content into `gdictee.tar.gz`.

See ctan-uploads.txt for upload details to CTAN.

(TODO escape \"e for ë w.r.t. legacy? use non-breaking space in 's avonds?)
