#' Rmarkdown Template for koma-scrbook
#'
#' This is an interface to the KOMA-Script class scrbook that acts as an
#' alternative to the book class in LaTeX. Most of the added functionality
#' is documented in the *scrbook* vignette
#' (`vignette("scrbook", "komadown")`) and is accessed via the YAML metadata
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
#' draft("MyBook.Rmd", template = "scrbook", package = "komadown",
#'       edit = FALSE)
#' @export
scrbook <- function(...,
                    number_sections = TRUE,
                    md_extensions = c("-autolink_bare_uris"),
                    csl = NULL)
{
  pdf_document_format(
    ...,
    number_sections = number_sections,
    md_extensions = md_extensions,
    format = "scrbook",
    template = "scrbook.tex",
    csl = csl
  )
}
