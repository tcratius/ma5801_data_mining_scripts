source("R/twoSetFD.R")

# Overlaid ("identity") & Interleave ("dodge") histogram
# Subset data into two columns, one for frequency histogram
# two, by the column you wish to group column one. 
# i.e. something that can be used as a factor.
# pos.name = "identity" or "dodge"
overlaid_hist <- function(subset.DF, name2factor, pos.name) {
  
  ggplot(malic, aes(x=subset.DF, fill=factor(name2factor))) +
    geom_histogram(binwidth=.5, position=pos.name)
  
}

# Example

overlaid_hist(subset.dataframe, column.name.to.factor )