#' @title Capture a plot
#'
#' @description Saves a plot to a .png file
#'
#' @param expr The plot() call.
#' @examples
#' capture(plot(rnorm(1e3)), filename = 'random_points')
#'
#' @export

capture <- function(expr, filename = 'plot', ...){
  png(filename = filename, ...)
  eval(expr)
  dev.off()
}
