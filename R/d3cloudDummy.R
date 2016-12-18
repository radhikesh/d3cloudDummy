d3cloudDummy <- function(text, size, tooltip = FALSE, color = "#EEEEEE",
                    textColor = "#333333", width = NULL, height = NULL) {
  
  # forward options using x
  x = data.frame(
    text = text,
    size = size,
    tooltip = tooltip,
    color = color,
    textColor = textColor
  )
  
  # create widget
  htmlwidgets::createWidget(
    name = 'd3cloudDummy',
    x,
    width = width,
    height = height,
    package = 'd3cloudDummy',
    sizingPolicy = sizingPolicy(
      defaultWidth = 600,
      defaultHeight = 600
    )
  )
}


d3cloudDummyOutput <- function(outputId, width = '600px', height = '600px'){
  shinyWidgetOutput(outputId, 'd3cloudDummy', width, height, package = 'd3cloudDummy')
}

renderd3cloudDummy <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, d3cloudDummyOutput, env, quoted = TRUE)
}