
# ProteinAnalyst

<!-- badges: start -->
<!-- badges: end -->

ProteinAnalyst contains several functions that can be used to analyze the amino acid content of protein sequences.  These functions can count the amino acids by all 20 types, sort them into broader categories, and display this information as lists, data frames, or bar graphs.

All of the functions utilize the fasta file format for inputs.  These can be found on the UniProt database, and then copied and pasted into a text file.

## Installation

You can install the latest version of ProteinAnalyst from [GitHub](https://github.com) with:

``` r
install_github("WNamm/ProteinAnalyst")
```

## Required External Packages

Some functions in ProteinAnalyst require the external packages stringr and ggplot2.  You can install and load them with these commands:

``` r
install.packages("stringr")
install.packages("ggplot2")
library(stringr)
library(ggplot2)
```

## External Package Citations

The developer would like to thank Hadley Wickham and RStudio for use of the stringr package. The developer would also like to thank Hadley Wickham, Winston Chang, Lionel Henry, Thomas Lin Pedersen, Kohske Takahashi, Claus Wilke, Kara Woo, Hiroaki Yutani, Dewey Dunnington, and RStudio for use of the ggplot2 package.
