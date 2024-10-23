#' @title An operator to add a page to an existing page
#'
#' @description Adds a page to the end of a page
#'
#' @return A 'page' object.
#' @examples
#' page1 <- page(
#' title('This is the title'),
#' tab(matrix(rnorm(100), nrow = 10, ncol = 10))
#' )
#'
#' page1 <- page1 + page1
#' page1
#' @export
#'

`+.page` <- function(...){
  content <- list(...)
  content <- paste(content, collapse = '')
  class(content) <- 'page'
  return(content)
}
