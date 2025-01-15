#' @title Display a title
#'
#' @description Display text formatted as a title.
#'
#' @param text The title to embed in an HTML page.
#' @param size One can choose between 'big' or anything else, in which case the font size will be smaller.
#' @param id Used to specify the div id of this title to which can be linked (e.g. from within a sidebar).
#' @param collapsible When TRUE, allows the user to toggle contents (anything following the title) to be visible or invisible.
#' @examples
#' title('This is the title.')
#'
#' @export

title <- function(text, size = 'big', id = NULL, collapsible = TRUE){
  if(size == 'big') textObj <- paste0('<H2>', text, '</H2>')
  else textObj <- paste0('<H3>', text, '</H3>')
  if(!is.null(id)) textObj <- paste0('<div id = "',id,'">', textObj)
  if(collapsible) textObj <- paste0('<details open><summary>', textObj,'</p></summary><span>')
  textObj <- paste0('</span></details>', textObj)
  class(textObj) <- 'pageObject'
  return(invisible(textObj))
}

