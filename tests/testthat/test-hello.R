test_that("data_filter gives informative message on errors", {

  out2 <- data_filter(mtcars, "vs != 0 & am != 1")
  out2 <- data_filter(mtcars, vs != 0 & am != 1)
  out3 <- subset(mtcars, vs != 0 & am != 1)
  expect_equal(out1, out2, ignore_attr = TRUE)
  expect_equal(out1, out3, ignore_attr = TRUE)
  expect_equal(out2, out3, ignore_attr = TRUE)

  expect_null(
    foo("mpg > 10 || cyl = 4")
  )
  expect_null(
    foo(x = mpg > 10 || cyl == 4)
  )
  expect_null(
    foo(x = mpg > 10 && cyl == 4)
  )
  expect_null(
    foo(x = mpg > 10 ? cyl == 4)
  )
})
