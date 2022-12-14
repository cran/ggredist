#' FiveThirtyEight scales for `ggplot2`
#'
#' @rdname scale_538
#'
#' @param ... additional arguments to `ggplot::scale_*` functions
#'
#' @return ggplot scale function
#'
#' @examples
#' scale_fill_538()
#' scale_color_538()
#' @concept colors
#' @export
scale_fill_538 <- function(...) {
  ggplot2::binned_scale('fill', '538',
                        palette = function(x) ggredist$fivethirtyeight,
                        breaks = c(0, 0.35, 0.45, 0.55, 0.65, 1),
                        limits = c(.25, .75),
                        oob = scales::squish,
                        guide = 'colourbar',
                        ...
  )
}

#' @rdname scale_538
#' @concept colors
#' @export
scale_color_538 <- function(...) {
  ggplot2::binned_scale('color', '538',
                        palette = function(x) ggredist$fivethirtyeight,
                        breaks = c(0, 0.35, 0.45, 0.55, 0.65, 1),
                        limits = c(.25, .75),
                        oob = scales::squish,
                        guide = 'colourbar',
                        ...
  )
}

