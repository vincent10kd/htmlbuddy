#' @title Print a data.frame or matrix as HTML table
#'
#' @description Outputs a data.frame or matrix as HTML table.
#'
#' @param object The table to be printed.
#' @param escape Argument passed to kable() to escape special characters.
#' @examples
#' m <- matrix(rnorm(1e2), nrow = 10, ncol = 10)
#' table(m)
#'
#' @export
#' @importFrom kableExtra "kable"

table <- function(object, escape = TRUE){
  cat(capture.output(kableExtra::kable(object, escape = escape, format = 'html')))
}

