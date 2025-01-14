#' @title Batch execute a function
#'
#' @description Perform a given function on a list
#'
#' @param list The list object, containing objects (e.g., data.frames, character vectors, etc.)
#' @param expr The function to be applied, e.g., tab, image, or text.
#' @param ... Arguments to pass to the function to be applied.
#' @param sep The separator argument for the internal paste() function, allowing one to separate tables using particular inputs, or to paste together a larger table if setting this to ''.
#' @examples
#' table_list <- list(head(iris), tail(iris))
#' batch(table_list, tab)
#'
#' # this outputs the table HTML for both tables in the list
#'
#' @export

batch <- function(list, expr, ..., sep = '<br><br>'){
  do.call("paste", c(lapply(list, expr, ...), list(sep = sep)))
}
