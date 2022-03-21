test_that("transcribe coverts T to U", {
  expect_equal(transcribe("ACGT"), "ACGU")
})
