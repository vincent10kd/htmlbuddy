#' @title Write text
#'
#' @description Write text to embed in an HTML page.
#'
#' @param text The text to embed in an HTML page.
#' @examples
#' text('Hello, world.')
#'
#' @export

text <- function(text){
  textObj <- paste0('<br>', text, '<br>')
  class(textObj) <- 'pageObject'
  return(invisible(textObj))
}

