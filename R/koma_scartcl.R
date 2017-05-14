#' Rmarkdown Template for koma-scartcl
#'
#' @inheritParams bookdown::pdf_document2
#' @param automark Uses `scrlayer-scrpage` to include the subsection and section
#'   in the header (upper left).
#' @param ... Arguments to \code{bookdown::pdf_document2}
#'
#' @return R Markdown output format to pass to \code{\link[rmarkdown:render]{render}}
#' @examples
#'
#' \dontrun{
#' library(rmarkdown)
#' library(bookdown)
#' draft("MyArticle.Rmd", template = "koma_scartcl", package = "rmdtemplates")
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
