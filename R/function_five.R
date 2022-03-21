#' Occurence of amino acids in a peptide
#'
#' @param aa_count
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
  counts[["Name_me2"]] <- rownames(counts)

  occurence <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = amino_acid, y = Counts, fill = amino_acid)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw()

  return(occurrence)
}
