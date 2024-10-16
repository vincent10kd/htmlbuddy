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
  cat('<br><pre><code>',code,'</code></pre><br>')
}

