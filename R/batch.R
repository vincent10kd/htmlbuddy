#' @title Batch execute a function
#'
#' @description Perform a given function on a list
#'
#' @param list The list object, containing objects (e.g., data.frames, character vectors, etc.)
#' @param expr The function to be applied, e.g., tab, image, or text.
#' @examples
#' table_list <- list(head(iris), tail(iris))
#' batch(table_list, tab)
#'
#' # this outputs the table HTML for both tables in the list
#'
#' @export

batch <- function(list, expr){
  do.call('c', lapply(list, expr))
}
