library(stringr)

test_that("dna random works", {
  expect_equal(stringr::str_length(create_dna(10)), 10)
})
