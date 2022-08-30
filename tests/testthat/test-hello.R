test_that("multiplication works", {
  expect_equal(
    length(foo("mpg > 5 || drat == 2")), 0 # supposed to error so foo() should return NULL
  )

})
