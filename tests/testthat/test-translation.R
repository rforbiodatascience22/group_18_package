test_that("concatenate the codons", {
  expect_equal(translate("UUU"), "F")
})

#> Test passed
#>
test_that("concatenate the codons sequence", {
  expect_equal(translate(c("UUU","UCU")), "FS")
})

