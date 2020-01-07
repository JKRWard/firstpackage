
#' Calculates standard error across a vector
#'
#' @param vect a vector of values for which the standard deviation can be computed
#'
#' @return numeric value of the standard error
#' @importFrom stats sd
#' @export
#'
#' @examples
st_error <- function(vect){

  sd(vect)/sqrt(length(vect))
}
