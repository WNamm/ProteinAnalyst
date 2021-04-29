#' @title Get Sequence
#'
#' @description Using a fasta file, this function returns the amino acid sequence as a single string.
#'
#' @param file A file connection.  This should be a fasta-format text file of the desired protein.
#'
#' @return A string of the amino acid one-letter codes, taken from the file argument.
#' @export
#'
#' @details This function removes the first line of the fasta file, which is the header.  It concatenates the remaining lines into one string to create an amino acid sequence.
get.seq <- function(file){
  seek(file, where=0)
  suppressWarnings(seq.lines <- readLines(file))
  sequence <- paste(seq.lines[2:length(seq.lines)], collapse="")
  return(sequence)
}
