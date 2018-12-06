#' Rmarkdown Template for koma-scrartcl
#'
#' This template is a designed for pdf output and acts
#' as an alternative to the [tufte::tufte_handout()]
#' template. Whereas that Rmarkdown template is based on
#' the [tufte-latex](https://www.ctan.org/pkg/tufte-latex)
#' LaTeX package, owever, **komatufte** is instead
#' based on a custom template that I have designed using
#' the KOMA-script scrartcl class. Most of the added functionality
#' is documented in the *komatufte* vignette
#' (`vignette("komatufte", "komadown")`) and is accessed via the YAML metadata
#' block of the R Markdown file.
#'
#' The main features of this template is the use of a
#' left-aligned column for the main content and a right-aligned
#' column for marginal content.
#'
#' This template is more opinionated than [scrartcl]
#' and is not catered to manual tinkering with the style.
#'
#' @inheritParams bookdown::pdf_document2
#' @param ... arguments passed down to [bookdown::pdf_document2()]
#' @param csl bibliography style in the `.csl` format
#' @param colorlinks should cross-references and links be
#'   colored?
#'
#' @return R Markdown output format to pass to [rmarkdown::render()]
#' @examples
#'
#' library(rmarkdown)
#' library(bookdown)
#' rmarkdown::draft("my-article.Rmd",
#'                  template = "komatufte",
#'                  package = "komadown",
#'                  edit = FALSE)
#' @export
komatufte <- function(...,
                      number_sections = TRUE,
                      md_extensions = c("-autolink_bare_uris"),
                      csl = NULL,
                      colorlinks = TRUE)
{
  pdf_document_format(...,
                      number_sections = number_sections,
                      md_extensions = md_extensions,
                      format = "komatufte",
                      template = "komatufte.tex",
                      csl = NULL,
                      colorlinks = TRUE)
}
