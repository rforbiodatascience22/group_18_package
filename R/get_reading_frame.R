

#' Reading frame
#'
#' @param DNA_seq String  DNA sequence to be translated with the translate function  .
#' @param start Integer value startingpoint of the reading frame .
#'
#' @return returns the codons character vector of three base pair to be subsequently translated to amino acids
#' @export
#'
#' @examples
#' get_reading_frame("ATGCGC", start =  1)
#' # will return [ "ATG"  , "CGC"]
#'
get_reading_frame <- function(DNA_seq, start = 1){
  DNA_seq_to_char <- nchar(DNA_seq)
  codons <- substring(DNA_seq,
                      first = seq(from = start, to = DNA_seq_to_char-3+1, by = 3),
                      last = seq(from = 3+start-1, to = DNA_seq_to_char, by = 3))
  return(codons)
}

