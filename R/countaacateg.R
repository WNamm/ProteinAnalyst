#' @title Count Amino Acid Categories
#'
#' @description This function takes a fasta file and creates a list that has the total number of amino acids in each category.
#'
#' @param file A file connection. This should be a fasta-format text file of the desired protein.
#'
#' @return A list of 5 integers, each representing the total number of amino acids within a broad category that the protein contains.
#' @export
#'
#' @details This function divides the 20 amino acids into 5 categories: Hydrophobic, Hydrophilic, Ambiguous, Acidic, and Basic.  The Ambiguous category contains cysteine and tyrosine; different sources disagree on whether these amino acids are hydrophobic or hydrophilic.
count.aa.categ <- function(file) {
  types <- count.aa.type(file)
  categories <- list(Hydrophobic=0, Hydrophilic=0, Ambiguous=0, Acidic=0, Basic=0)
  categories$Hydrophobic <- types$G + types$A + types$V + types$L + types$I + types$P + types$M + types$F + types$W
  categories$Hydrophilic <- types$S + types$T + types$N + types$Q
  categories$Ambiguous <- types$C + types$Y
  categories$Acidic <- types$D + types$E
  categories$Basic <- types$K + types$R + types$H
  return(categories)
}
