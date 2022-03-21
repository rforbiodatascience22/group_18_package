#' Convert a sense (coding) DNA sequence into mRNA
#'
#' @param dna_seq, character vector
#'
#' @return Returns an mRNA sequence (character vector).
#' @export
#'
#' @examples transcribe("ACTG")

transcribe <- function(dna_seq){
  mrna <- gsub("T", "U", dna_seq)
  return(mrna)
}
