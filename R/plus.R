#' @title An operator to add elements to an existing page
#'
#' @description Adds elements to the end of a page
#'
#' @return A 'page' object.
#' @examples
#' page1 <- page(
#' title('This is the title'),
#' tab(matrix(rnorm(100), nrow = 10, ncol = 10))
#' )
#'
#' page1 <- page1 + tab(matrix(rnorm(100), nrow = 10, ncol = 10))
#' page1
#'
#' page1 <- page1 + text('Just wanted to add some text)
#' page1
#'
#' @export
#'

`+.pageObject` <- function(...){
  content <- list(...)
  content <- paste(content, collapse = '')
  class(content) <- 'page'
  return(content)
}
