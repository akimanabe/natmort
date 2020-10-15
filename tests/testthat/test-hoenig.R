context("hoenig")

test_that("function exists and works", {
  expect_is(hoenig, "function")
  expect_equal(hoenig(1), 4.30596, tolerance = 0.01)
  expect_error(hoenig(0))
  expect_error(hoenig(c(1, 2)))
})
