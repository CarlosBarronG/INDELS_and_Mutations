a=read.table("Documents/Mutaciones/ANNOTATED/2R.variant_function")
c=read.table("Documents/Mutaciones/ANNOTATED/2R.exonic_variant_function",fill = TRUE)

head(a)
library(tidyverse)
BRCA=filter(a,V2=="BRCA2"|V2=="BRCA1")
BRCA



Select_exonic_gene <- function(gene,b) {
  library("tidyverse")
  a=read.table(b,fill = TRUE)
  a[,13:17]=str_split_fixed(a$V4,":",6)[,1:5]
  a[,17]=str_split_fixed(a$V17,",",2)[,1]
  a <- a[,c(13,5,15,2,8,9,10,16,17)]
  filter(a,V13==gene)
}



Select_variant <- function(gene,b){
library("tidyverse")
  a=read.table(b,fill = TRUE)
  filter(a,V2==gene)
}

Select_exonic_gene("ESR1","/home/carlosbarron/Documents/Mutaciones/ANNOTATED/2R.exonic_variant_function")

Select_variant("AMER1","/home/carlosbarron/Documents/Mutaciones/ANNOTATED/2R.variant_function")
