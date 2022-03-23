#' Title Create random DNA with given size
#'
#' @param size integer value that represent the length of the DNA sequence to be randomlygenerated .
#'
#' @return
#' @export
#'

create_dna <- function(size){
  random_dna <- sample(c("A", "T", "G", "C"), size = size, replace = TRUE)
  random_dna <- paste0(random_dna, collapse = "")
  return(random_dna)
}
