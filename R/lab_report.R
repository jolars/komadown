#' Lab report template
#'
#' A lab report template.
#'
#' @inheritParams bookdown::pdf_document2
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
#'
#' @export
lab_report <- function(...,
                       number_sections = TRUE,
                       keep_tex = TRUE,
                       md_extensions = c("-autolink_bare_uris")){
  pdf_document_format(
    ...,
    keep_tex = keep_tex,
    number_sections = number_sections,
    md_extensions = md_extensions,
    format = "lab_report",
    template = "template.tex",
    csl = "vancouver-brackets.csl"
  )
}
