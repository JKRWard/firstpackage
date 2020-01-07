
#' Density plots
#'
#' @param v the object to be plotted
#'
#' @return density plot
#' @export
#'
#' @examples
density_plot <- function(v){
  # this won't work without ggplot2

  stopifnot(is.numeric(v))

  data.frame(values = v) %>%
    ggplot(aes(x = values))+
    geom_density()
}
