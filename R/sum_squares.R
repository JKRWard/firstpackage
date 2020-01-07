#calculating the sum of squares (sums of squared deviations from the mean)

#' Calculates the sum of squares for a sample
#'
#'Returns the sum of the squared deviations from mean, SS(x) of a numeric vector
#'
#' @param vect a numeric vector over which to calculate the sum of squares
#'
#' @return Returns a number that is the calculated sum of squared for the given vector
#' @export
#'
#' @examples
sum_squares <- function(vect){

  sum((vect-mean(vect))^2)

}
