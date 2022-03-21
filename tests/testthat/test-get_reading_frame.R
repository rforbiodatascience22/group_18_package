test_that("get_reading_frame is working well !", {
  expect_equal(get_reading_frame(DNA_seq = "ATGCGC", start = 1), c( "ATG" , "CGC") )
})
