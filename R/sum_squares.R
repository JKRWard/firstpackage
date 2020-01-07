#calculating the sum of squares (sums of squared deviations from the mean)

sum_squares <- function(vect){

  sum((vect-mean(vect))^2)

}
