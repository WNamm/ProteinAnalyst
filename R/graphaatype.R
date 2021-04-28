#' @title Graph Amino Acid Types
#'
#' @description This function creates a bar graph using ggplot2.
#' The graph displays the amount of each type of amino acid that can be found in a provided fasta file.
#'
#' @param file A file connection. This should be a fasta-format text file of the desired protein.
#'
#' @return A ggplot object.
#' @export
#'
#' @details The x-axis of the graph contains the amino acid one-letter codes, and the y-axis, or bar height, displays the amount of each amino acid in the protein.
graph.aa.type <- function(file) {
  types <- count.aa.type(file, df=TRUE)
  graph <- ggplot(types, aes(x=Amino.Acid, y=Amount)) + geom_col()
  return(graph)
}
