test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_vec <- rnorm(20, mean = 5, sd=1.2)

### standard case
#Expect that the output is numeric, we expect a floating point from a numeric input

test_that("Output is type \"double\" for numeric input", {
  expect_type(sum_squares(test_vec), "double")
})

# expect that the result is not negative
test_that("Output is non-negative", {
  expect_gte(sum_squares(test_vec),0)
})

# expect that the output is not 0 as we would get if all values in the vector are the same

test_that("Vector contains all identical values",{
  expect_true(sum_squares(test_vec) != 0)
})

# failing test
# test_that("Vector contains all identical values",{
#   expect_equal(sum_squares(test_vec) != 0)
# })

# expect that missing values five a result of na

test_that("Missing values give a result of NA",{
  expect_equal(sum_squares(c(test_vec,NA)), NA_real_)
})

# Character input throws errors from sd and warnings from mean
# so use expect condition() not expect error()
 test_that("Non-numeric input gives errors and or warnings",{
   expect_condition(sum(squares(c("cat", "dog"))))
 })
