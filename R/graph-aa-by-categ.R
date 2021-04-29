#' @title Graph Amino Acids by Category
#'
#' @description This function creates a bar graph using ggplot2.
#' The graph displays the amount of amino acids within each broad category that can be found in a provided fasta file.
#'
#' @param file A file connection. This should be a fasta-format text file of the desired protein.
#'
#' @return A ggplot object.
#' @export
#'
#' @details The x-axis of the graph contains the broad categories of amino acids, and the y-axis, or bar height, displays the amount of amino acids in each category in the protein.
#' The Ambiguous category contains cysteine and tyrosine; different sources disagree on whether these amino acids are hydrophobic or hydrophilic.
graph.aa.by.categ <- function(file) {
  categories <- count.aa.by.categ(file, df=TRUE)
  graph <- ggplot(categories, aes(Category, Amount)) + geom_col()
  return(graph)
}
