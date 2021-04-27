#' @title Protein Length
#'
#' @description This function determines the length of a protein in a given fasta file.
#'
#' @param file A file connection. This should be a fasta-format text file of the desired protein.
#'
#' @return An integer representing the number of amino acids in the protein.
#' @export
#'
protein.length <- function(file){
  sequence <- get.seq(file)
  return(nchar(sequence))
}
