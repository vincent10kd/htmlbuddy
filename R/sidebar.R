#' @title Add a side bar to a page
#'
#' @description Adds a side bar to a page, on the left or right side.
#'
#' @param ... The content to embed inside the bar
#' @param side Controls on which side of the screen the sidebar should be inserted.
#' @param small Displays the font size smaller than normal text.
#' @examples
#' # page + sidebar(text('Content')) # adds side bar on the left side of the page
#' #'page + sidebar(text('Content'), side = 'right') # adds side bar on the right side of the page
#'
#' @export

sidebar <- function(..., side = 'left', small = TRUE){
  sideclass <- paste0('<aside class="', ifelse(side == 'left', 'sidebar', 'sidebar2'),'"><div>')
  if(small) content <- paste('<small>',sideclass,..., '</small></div></aside>')
  else content <- paste(sideclass,..., '</div></aside>')
  class(content) <- 'page'
  invisible(return(content))
}
