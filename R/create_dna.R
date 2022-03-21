#' Title Create random DNA with given size
#'
#' @param size
#'
#' @return
#' @export
#'
#' @examples
create_dna <- function(size){
  random_dna <- sample(c("A", "T", "G", "C"), size = size, replace = TRUE)
  random_dna <- paste0(random_dna, collapse = "")
  return(random_dna)
}
