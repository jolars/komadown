#' Rmarkdown Template for koma-scartcl
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
#' draft("MyArticle.Rmd", template = "koma_scartcl", package = "komadown")
#' }
#' @export
koma_scartcl <- function(...,
                         number_sections = TRUE,
                         md_extensions = c("-autolink_bare_uris")){
  pdf_document_format(
    ...,
    number_sections = number_sections,
    md_extensions = md_extensions,
    format = "koma_scartcl",
    template = "template.tex",
    csl = "vancouver-brackets.csl"
  )
}
