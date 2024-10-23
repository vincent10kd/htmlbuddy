#' @title Insert a link
#'
#' @description Insert a link to a page, image or object.
#'
#' @param name The name of the link, as it is displayed in the HTML page.
#' @param path The path to which the link refers.
#' @examples
#' link('Click here to return to page 1.', path = 'page_1.html')
#'
#' @export

link <- function(name, path){
  textObj <- paste0('<br><a href=',path,'>',name,'</a><br>')
  class(textObj) <- 'pageObject'
  return(invisible(textObj))
}

