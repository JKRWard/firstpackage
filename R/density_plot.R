
#' Density plots
#'
#' @param v the object to be plotted
#' @return density plot
#' @importFrom ggplot2 ggplot aes geom_density
#' @importFrom magrittr %>%
#' @export
#'
#' @examples
density_plot <- function(v){
  stopifnot(is.numeric(v))

  data.frame(v) %>%
    ggplot(aes(x = v))+
    geom_density()
}
