#' @export
zcjsOutput <- function(outputId, width = "100%", height = "400px") {
  shinyWidgetOutput(outputId, "zcjs", width, height, package = "zcjs")
}
#' @export
renderZcjs <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, zcjsOutput, env, quoted = TRUE)
}
