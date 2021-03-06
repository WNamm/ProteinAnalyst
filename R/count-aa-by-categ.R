#' @title Count Amino Acids by Category
#'
#' @description This function takes a fasta file and creates a list or data frame that has the total number of amino acids in each category.
#'
#' @param file A file connection. This should be a fasta-format text file of the desired protein.
#' @param df By default, this argument is set to FALSE, and a list is returned.  If set to TRUE, then a data frame is returned instead.
#'
#' @return If df=FALSE: a list of 5 integers, each representing the total number of amino acids within a broad category that the protein contains.
#' If df=TRUE: a data frame with 5 rows, each containing the total number of amino acids within a broad category that the protein contains.
#' @export
#'
#' @details This function divides the 20 amino acids into 5 categories: Hydrophobic, Hydrophilic, Ambiguous, Acidic, and Basic.
#' The Ambiguous category contains cysteine and tyrosine; different sources disagree on whether these amino acids are hydrophobic or hydrophilic.
count.aa.by.categ <- function(file, df=FALSE) {
  types <- count.aa(file)
  categories <- list(Hydrophobic=0, Hydrophilic=0, Ambiguous=0, Acidic=0, Basic=0)
  categories$Hydrophobic <- types$G + types$A + types$V + types$L + types$I + types$P + types$M + types$F + types$W
  categories$Hydrophilic <- types$S + types$T + types$N + types$Q
  categories$Ambiguous <- types$C + types$Y
  categories$Acidic <- types$D + types$E
  categories$Basic <- types$K + types$R + types$H
  if (!df) {
    return(categories)
  }
  else {
    Category <- c("Hydrophobic", "Hydrophilic", "Ambiguous", "Acidic", "Basic")
    Amount <- c(categories$Hydrophobic, categories$Hydrophilic, categories$Ambiguous, categories$Acidic, categories$Basic)
    return(data.frame(Category, Amount))
  }
}
