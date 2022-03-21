test_that("get_codons is working well !", {
  expect_equal(get_codons(DNA_seq = "ATGCGC", start = 1), c( "ATG" , "CGC") )
})
