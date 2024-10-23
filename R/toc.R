#' @title Create a table of contents
#'
#' @description Makes a table of contents with one header and several sub-items linked underneath.
#'
#' @param header The name of the header.
#' @param page_titles The names of the pages.
#' @param page_links The filenames to which is linked.
#' @examples
#' toc('Header 1', c('page 1','page 2'), c('page_1.html','page_2.html'))
#'
#' @export

toc <- function(header, page_titles, page_links){
  textObj <- paste(trimws(capture.output(
    for(h in 1:length(header)){
      cat(paste("<H3  id='lih'>",header[h],"</H3><ul id='navlist'>"))
      for(p in 1:length(page_titles)){
        cat(paste("<li><a href=",page_links[p],'.html>'), page_titles[p],
            "</a></li>")
      }
      cat(paste0('</ul>'))
    })),collapse='')
  class(textObj) <- 'pageObject'
  return(invisible(textObj))
}

