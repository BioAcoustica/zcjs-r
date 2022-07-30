#' @import htmlwidgets
#' @export
zcjs <- function(url,
                 plotMethod = "ploty",
                 width = NULL,
                 height = NULL,
                 x_range = "ms",
                 x_compress = FALSE,
                 y_range = "nonzero",
                 y_fixed = TRUE) {

  # create a list that contains the settings
  settings <- list(
    x_range = x_range,
    x_compress = x_compress,
    y_range = y_range,
    y_fixed = y_fixed
  )

  # pass the data and settings using 'x'
  x <- list(
    url = url,
    settings = settings
  )

  # create the widget
  htmlwidgets::createWidget("zcjs", x, width = width, height = height)
}
