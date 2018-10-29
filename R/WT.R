# To be placed in main R script
source("R/WT.R")

# Writes data to file in CSV format
WT <- function(df, name) {
  
  write.table(df, file = name, append = FALSE, quote = TRUE, sep = ",",
              eol = "\n", na = "NA", dec = ".", row.names = FALSE, col.names = TRUE,
              qmethod = c("escape", "double"), fileEncoding = "")
}

# Example usage
WT(dataframe, "filename")
