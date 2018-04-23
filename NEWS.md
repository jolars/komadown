# komadown 0.2.0

## Minor changes
* Added option `margin=1em` to the **subfig** LaTeX package in template.
* The `.Rmd` skeleton now includes a hook by default that enables subfigures
via the **subfig** package for LaTeX.
* `amsmath` was replaced by/extended with the `mathtools` packages.
* `amssymb` and `mathtools` are now used when no fontpackage or fontfamily is
specified.
* Times `newtxtext` was once again made the default font package after the 
compatibility issue with KOMA-Script and footnotes was
(fixed in newtx 1.526)[https://www.ctan.org/tex-archive/fonts/newtx].
* Allow custom `.csl` bibliography styles (see #2).

## Bug fixes
* Properly setup **natbib** if required.
* Append `.bib` to bibliography items when **biblatex** is used.

# komadown 0.1.0

* This is the first release of komadown.

