# render all.R
formats <- c("bookdown::gitbook", "bookdown::pdf_book", "bookdown::epub_book")
purrr::walk(formats, ~{bookdown::render_book("index.Rmd", .x); rm(list = ls())} )