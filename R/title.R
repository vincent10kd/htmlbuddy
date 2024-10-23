#' @title Display a title
#'
#' @description Display text formatted as a title.
#'
#' @param text The title to embed in an HTML page.
#' @param size One can choose between 'big' or anything else, in which case the font size will be smaller.
#' @examples
#' title('This is the title.')
#'
#' @export

title <- function(text, size = 'big'){
  if(size == 'big') textObj <- paste0('<H2>', text, '</H2>')
  else textObj <- paste0('<H3>', text, '</H3>')
  class(textObj) <- 'pageObject'
  return(invisible(textObj))
}

