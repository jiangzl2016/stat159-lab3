source("../functions/range-value.R")

context("Test for range value")


test_that ("range works as expected", {
	x <- c(1,2,3,4,5)

	expect_equal(range_value(x), 4)
	expect_length(range_value(x), 1)
  	expect_type(range_value(x), 'double')
	})

test_that ("range works as expected", {
	y <- c(1, 2, 3, 4, NA)
	expect_length(range_value(y), 1)
	expect_equal(range_value(y), 3)
	})

test_that("range works as expected", {
	z <- c(TRUE, FALSE, TRUE)
	expect_length(range_value(z), 1)
	expect_type(range_value(z), 'integer')
	expect_equal(range_value(z), 1)
	})

test_that("range works error", {
	w <- letters[1:5]
	expect_error(range_value(w))
	})

source ("../functions/missing-value.R")

context("Test for missing value")

test_that ("range works as expected", {
	x <- c(1,NA,3,NA,5)

	expect_equal(missing_value(x), 2)
	expect_length(missing_value(x), 1)
  	expect_type(missing_value(x), 'integer')
	})




