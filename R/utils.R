# These functions are (mostly) verbatim copies of functions from
# the rticles package, which is copyrighted to RStudio and licensed under
# GPL-3.

find_file <- function(template, file) {
  template <- system.file("rmarkdown",
                          "templates",
                          template,
                          file,
                          package = "komadown")
  if (template == "")
    stop("Couldn't find template file ", template, "/", file, call. = FALSE)
  template
}

find_resource <- function(template, file) {
  find_file(template, file.path("resources", file))
}

inherit_pdf_document <- function(...) {
  fmt <- bookdown::pdf_document2(...)
  fmt$inherits <- "pdf_document"
  fmt
}

pdf_document_format <- function(..., format, template, csl) {
  # base format
  fmt <- inherit_pdf_document(..., template = find_resource(format, template))

  # add csl to pandoc_args
  fmt$pandoc$args <- c(fmt$pandoc$args,
                       "--csl",
                       rmarkdown::pandoc_path_arg(csl))
  # return format
  fmt
}
