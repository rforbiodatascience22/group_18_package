#' Concatenate codons
#'
#' @param codons 3-letters
#'
#' @return the output of the function is the single-letter codon from an input
#' 3-letter codon.
#' @export
#'
#' @examples AAseq("UUU")
AAseq <- function(codons){
  joined_codon <- paste0(codon_table[codons], collapse = "")
  return(joined_codon)
}
