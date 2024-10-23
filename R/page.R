#' @title Create an HTML page
#'
#' @description Creates an HTML page based on several elements.
#'
#' @param ... Elements to include on the page, such as a table(), image() and text().
#' @param filename The filename to which the generated HTML page will be written.
#' @param css A CSS style sheet to use for the formatting of the HTML page.
#' @examples
#' page(
#' # title('Table'),
#' # table(df1),
#' # text('This is a table with some stuff'),
#' # code('code <- chunk'),
#' # image('image1.png', image_dims = c(500, 500)),
#' # text('Some more text.'),
#' # link('Go back to main page..','Table_of_contents.html'),
#' # )

#'
#' @export

page <- function(...){
  content <- paste(...)
  class(content) <- 'page'
  invisible(return(content))
}

