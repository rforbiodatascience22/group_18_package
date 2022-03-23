#' Concatenate codons
#'
#' @param codons a set of RNA codons, can be a vector or 3-letter string
#'
#' @return the translated protein sequence from the RNA codons
#' @export
#'
#' @examples
#' translate("UUU")
#' translate(c("UUU","UCU"))
#'
translate <- function(codons){
  amino_acid <- paste0(codon_table[codons], collapse = "")
  return(amino_acid)
}
