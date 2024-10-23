#' @title Write math equations using MathJax
#'
#' @description Write mathematical equation to embed in an HTML page. Note: special characters need to be escaped.
#'
#' @param text The mathjax to embed in an HTML page.
#' @examples
#' math('$$ {J(\\theta) =\\frac{1}{2m} [\\sum^m_{i=1}(h_\\theta(x^{(i)}) - y^{(i)})2 + \\lambda\\sum^n_{j=1}\\theta^2_j} $$')
#'
#' @export

math <- function(equation){
  textObj <- paste0('<br>',
                    '<script type="text/javascript" src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>',
                    equation,
                    '<br>')
  class(textObj) <- 'pageObject'
  return(invisible(textObj))
}

