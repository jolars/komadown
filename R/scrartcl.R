#' Rmarkdown Template for koma-scrartcl
#'
#' This is an interface to the KOMA-Script class scrartcl that acts as an
#' alternative to the article class in LaTeX. Most of the added functionality
#' is documented in the *scrartcl* vignette
#' (`vignette("scrartcl", "komadown")`) and is accessed via the YAML metadata
#' block of the R Markdown file.
#'
#' @inheritParams bookdown::pdf_document2
#' @param \dots Arguments to
#'
#' @return R Markdown output format to pass to [rmarkdown::render()].
#' @examples
#'
#' \dontrun{
#' library(rmarkdown)
#' library(bookdown)
#' draft("MyArticle.Rmd", template = "scrartcl", package = "komadown")
#' }
#' @export
scrartcl <- function(...,
                     number_sections = TRUE,
                     md_extensions = c("-autolink_bare_uris")){
  pdf_document_format(
    ...,
    number_sections = number_sections,
    md_extensions = md_extensions,
    format = "scrartcl",
    template = "template.tex",
    csl = "vancouver-brackets.csl"
  )
}
