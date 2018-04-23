
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Travis-CI Build
Status](https://travis-ci.org/jolars/komadown.svg?branch=master)](https://travis-ci.org/jolars/komadown)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/jolars/komadown?branch=master&svg=true)](https://ci.appveyor.com/project/jolars/komadown)
[![CRAN
status](http://www.r-pkg.org/badges/version/komadown)](https://cran.r-project.org/package=komadown)
[![codecov](https://codecov.io/gh/jolars/komadown/branch/master/graph/badge.svg)](https://codecov.io/gh/jolars/komadown)

# komadown

komadown provides [R Markdown](http://rmarkdown.rstudio.com/) templates
for the [KOMA-Script classes](https://komascript.de/) (currently only
koma-scartcl). It is intended only for pdf (LaTeX) output.

It wraps around [bookdown](https://github.com/rstudio/bookdown) to
enable cross-referencing of figures, sections. theorems, and equations.

## Installation

You can install komadown from CRAN with

``` r
install.packages("komadown")
```

or install the latest development version from github with

``` r
# install.packages("devtools")
devtools::install_github("jolars/komadown")
```

## License

  - **komadown** is licensed under [GPL-3](LICENSE)
  - The *Vancouver (brackets)* style is licensed under [CC
    BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/).
  - Copied and modified code from **rticles** is licensed under
    [GPL-3](LICENSE).
