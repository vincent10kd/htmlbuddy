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
  cat('<br>',text,'<br>')
}

