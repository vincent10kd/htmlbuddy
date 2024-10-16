#' @title Create a HTML reference to an existing image
#'
#' @description Generates HTML markup to display an image.
#'
#' @param image_name The filename of the image.
#' @param image_dims The x, y dimensions (in pixels) at which to display the image.
#' @examples
#' # image('image1.png', c(500,500))
#'
#' @export

image <- function(image_name, image_dims = c(800,800)){
  cat(paste0("<img src='",image_name,"' width = ",image_dims[1]," height = ",image_dims[2]," border='1'><br><br>"))
}

