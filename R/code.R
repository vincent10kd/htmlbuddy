#' @title Insert a code block
#'
#' @description Generates a code block to embed in an HTML page.
#'
#' @param code The code to embed in an HTML page.
#' @examples
#' code('print("Hello, world.")')
#'
#' @export

code <- function(code){
  textObj <- paste0('<pre><code>', code, '</code></pre>')
  class(textObj) <- 'pageObject'
  return(invisible(textObj))
}

