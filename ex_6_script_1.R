#works on data sets stored as variables in the global environment
#requires package data.table to be installed.
#r_head() works the same as head -n in unix to keep a certain number of lines
#usage: r_head("file_name", number_of_lines)
#examples: r_head("wages.csv",3) will return the first three rows of data from 
library(data.table)
r_head <- function(x,n){
  data=fread(file=x, fill=TRUE)
  df=as.data.frame(data)
  rownames(df) <- NULL
  colnames(df) <- NULL
  df2=df[1:n,]
  return(df2)
}