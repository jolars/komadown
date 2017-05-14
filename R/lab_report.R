#' Lab report template
#'
#' A lab report template.
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
#' draft("MyArticle.Rmd", template = "lab_report", package = "rmdtemplates")
#' }
#' @export
lab_report <- function(...,
                       automark = TRUE,
                       number_sections = TRUE,
                       md_extensions = c("-autolink_bare_uris")){
  pdf_document_format(
    ...,
    automark = automark,
    number_sections = number_sections,
    md_extensions = md_extensions,
    format = "lab_report",
    template = "template.tex",
    csl = "vancouver-brackets.csl"
  )
}
