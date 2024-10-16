#' @title Display a title
#'
#' @description Display text formatted as a title.
#'
#' @param text The title to embed in an HTML page.
#' @examples
#' title('This is the title.')
#'
#' @export

title <- function(text){
  cat('<br><H2>',text,'</H2><br>')
}

