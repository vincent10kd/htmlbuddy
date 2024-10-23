#' @title Render HTML pages
#'
#' @description Renders one or multiple pages to HTML files
#'
#' @param ... Page(s) to be rendered. Objects of class 'page', separated by commas.
#' @param filename The filename(s) to which the generated HTML page will be written. Pass as character vector.
#' @param css A CSS style sheet to use for the formatting of the HTML page(s).
#' @examples
#' # render(
#' #    page1,
#' #    page2,
#' #    page3,
#' #    filename = paste0('page_', 1:3)
#' #    )

#'
#' @export

render <- function(..., filename = NULL,
                 css = list.files(system.file('extdata', package = 'htmlbuddy'), full.names = TRUE)){
  content <- match.call(expand.dots = FALSE)$`...`
  if(is.null(filename)) stop('One or multiple filenames should be specified.')
  if(length(filename) != length(content)) stop('The number of filenames does not match the number of pages.')
  if(!is.null(css)) css <- readChar(css, 10000)
  header <- paste0("
               <HTML><head><title>",paste(date(),"</title>",
                                          ifelse(!is.null(css), paste(" <style type='text/css'>",css,"</style>"),paste('')),
                                          "</head><body> <div id='cont'><p>
               Page created on ", paste(date()),"</p>
               <hr>"))
  pageList <- lapply(content, eval)
  for(p in 1:length(pageList)){
    write(c(header,pageList[[p]]), file=filename[p])
  }
}

