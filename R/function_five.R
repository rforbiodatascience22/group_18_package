#' Occurence of amino acids in a peptide
#'
#' @param peptide_sequence
#' Supply a peptide, it will count every character as a string and display it in a barplot in a plot.
#'
#'
#' @return occurrence The count of every single amino acid character
#' @export
#'
#' @importFrom magrittr %>%

aa_count <- function(peptide_sequence){
  AA <- peptide_sequence %>%
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()

  counts <- sapply(AA, function(amino_acid) stringr::str_count(string = peptide_sequence, pattern =  amino_acid)) %>%
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["peptide_sequence"]] <- rownames(counts)

  occurrence <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = peptide_sequence, y = Counts, fill = AA)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(occurrence)
}


