#' @title Print a data.frame or matrix as HTML table
#'
#' @description Outputs a data.frame or matrix as HTML table.
#'
#' @param object The table to be printed.
#' @param escape Argument passed to kable() to escape special characters.
#' @examples
#' m <- matrix(rnorm(50), nrow = 10, ncol = 5)
#' tab(m)
#'
#' @export
#' @importFrom kableExtra "kable"

tab <- function(object, escape = TRUE){
  tabObj <- kableExtra::kable(object, escape = escape, format = 'html')
  class(tabObj) <- 'pageObject'
  return(invisible(tabObj))
}

