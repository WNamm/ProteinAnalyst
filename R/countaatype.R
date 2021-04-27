#' @title Count Amino Acid Types
#'
#' @description This function creates a list that contains the number of each type of amino acid that can be found in a provided fasta file.
#'
#' @param file A file connection. This should be a fasta-format text file of the desired protein.
#'
#' @return A list of 20 integers, each representing the total number of an amino acid type in the protein.
#' @export
#'
#' @details The returned list contains the amino acid one-letter codes as the keys, and the matching integers are the total number of that amino acid.  For example, the element "G=16" indicates that the protein has 16 glycines.
count.aa.type <- function(file) {
  sequence <- get.seq(file)
  types <- list(G=0, A=0, V=0, L=0, I=0, P=0, M=0, F=0, W=0, C=0, Y=0, S=0, T=0, N=0, Q=0, D=0, E=0, K=0, R=0, H=0)
  types["G"] <- str_count(sequence, "G")
  types["A"] <- str_count(sequence, "A")
  types["V"] <- str_count(sequence, "V")
  types["L"] <- str_count(sequence, "L")
  types["I"] <- str_count(sequence, "I")
  types["P"] <- str_count(sequence, "P")
  types["M"] <- str_count(sequence, "M")
  types["F"] <- str_count(sequence, "F")
  types["W"] <- str_count(sequence, "W")
  types["C"] <- str_count(sequence, "C")
  types["Y"] <- str_count(sequence, "Y")
  types["S"] <- str_count(sequence, "S")
  types["T"] <- str_count(sequence, "T")
  types["N"] <- str_count(sequence, "N")
  types["Q"] <- str_count(sequence, "Q")
  types["D"] <- str_count(sequence, "D")
  types["E"] <- str_count(sequence, "E")
  types["K"] <- str_count(sequence, "K")
  types["R"] <- str_count(sequence, "R")
  types["H"] <- str_count(sequence, "H")
  return(types)
}
