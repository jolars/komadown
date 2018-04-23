#' Rmarkdown Template for koma-scrartcl
#'
#' This is an interface to the KOMA-Script class scrartcl that acts as an
#' alternative to the article class in LaTeX. Most of the added functionality
#' is documented in the *scrartcl* vignette
#' (`vignette("scrartcl", "komadown")`) and is accessed via the YAML metadata
#' block of the R Markdown file.
#'
#' @inheritParams bookdown::pdf_document2
#' @param ... Arguments passed down to [bookdown::pdf_document2()]
#' @param csl bibliography style in the `.csl` format
#'
#' @return R Markdown output format to pass to [rmarkdown::render()].
#' @examples
#'
#' library(rmarkdown)
#' library(bookdown)
#' draft("MyArticle.Rmd", template = "scrartcl", package = "komadown",
#'       edit = FALSE)
#' @export
scrartcl <- function(...,
                     number_sections = TRUE,
                     md_extensions = c("-autolink_bare_uris"),
                     csl = find_resource("scrartcl", "vancouver-brackets.csl")){
  pdf_document_format(
    ...,
    number_sections = number_sections,
    md_extensions = md_extensions,
    format = "scrartcl",
    template = "scrartcl.tex",
    csl = csl
  )
}
