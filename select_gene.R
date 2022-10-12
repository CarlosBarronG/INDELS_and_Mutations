R2 <- read.table("ANNOTATED/2R.exonic_variant_function",fill = T)

Select_variant <- function(genes,file,deep,file_type){
  library("tidyverse")
  if(is.character(file)==T){
    a=read.table(file,fill = TRUE)}
  else{
    a=file
  }
  if (file_type=="exonic") {
  a[,20] <-str_split_fixed(a$V4,":",3)[,1]
  a[,21:28]=str_split_fixed(a$V19,":",8)
  a <- a[,c(2,20,5:10,17,21:28)]
  }
  if(file_type=="non_exonic"){
    a[,c(18:25)] <- str_split_fixed(a$V17,":",8)
    a=a[,c(1:8,15,18:25)]
  }
  if(file_type!="exonic"|file_type!="non_exonic"){print("Error:file_type must be 'exonic' or 'non_exonic'")}
  colnames(a) <- c("Mutation_type","Gene","Chromosome","Initial_pos",
                   "Final_pos","Normal_seq","Mutated_sustitution","NC","Additional_Info",
                   "Genotype","Proportion","AF","DP",
                   "F1R2","F2R1","FAD","SB")
  results <- NULL
  for (b in genes) {
    tmp=filter(a,Gene==b&DP>deep)
    results <- rbind(results,tmp)
  }
  results
}

Select_variant(c("BRCA1","BRCA2","ESR1"),"/home/carlosbarron/Documents/Mutaciones/ANNOTATED/2R.variant_function",3,"a")
Select_variant(c("ESR1","BRCA1","BRCA2","INTS11"),"/home/carlosbarron/Documents/Mutaciones/ANNOTATED/2R.exonic_variant_function",5,"exonic")
Select_variant(c("ESR1","BRCA1","BRCA2","INTS11"),R2,3,"d")
