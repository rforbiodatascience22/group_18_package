#' Occurence of amino acids in a peptide
#'
#' @param aminod_acid
#' Supply an amino acid sequence, it will count every character as a string and display it in a barplot in a plot.
#' @param occurrence
#' The count of every single amino acid character
#'
#' @return
#' @export
#'
#' @importFrom magrittr %>%
aa_count <- function(amino_acid){
  AA <- amino_acid %>%
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()

  counts <- sapply(AA, function(occurrence) stringr::str_count(string = amino_acid, pattern = occurrence)) %>%
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["amino acids"]] <- rownames(counts)

  occurrence <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = amino_acid, y = Counts, fill = amino_acid)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw()

  return(occurrence)
}
