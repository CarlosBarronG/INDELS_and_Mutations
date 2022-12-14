convertchrom_chr <- function(inpunt_file,output_file) {
muestra1 <- read.delim(inpunt_file, header = F)
muestra1$V1[muestra1$V1=="NC_000001.11"] <- "chr1"
muestra1$V1[muestra1$V1=="NC_000002.12"] <- "chr2"
muestra1$V1[muestra1$V1=="NC_000003.12"] <- "chr3"
muestra1$V1[muestra1$V1=="NC_000004.12"] <- "chr4"
muestra1$V1[muestra1$V1=="NC_000005.10"] <- "chr5"
muestra1$V1[muestra1$V1=="NC_000006.12"] <- "chr6"
muestra1$V1[muestra1$V1=="NC_000007.14"] <- "chr7"
muestra1$V1[muestra1$V1=="NC_000008.11"] <- "chr8"
muestra1$V1[muestra1$V1=="NC_000009.12"] <- "chr9"
muestra1$V1[muestra1$V1=="NC_000010.11"] <- "chr10"
muestra1$V1[muestra1$V1=="NC_000011.10"] <- "chr11"
muestra1$V1[muestra1$V1=="NC_000012.12"] <- "chr12"
muestra1$V1[muestra1$V1=="NC_000013.11"] <- "chr13"
muestra1$V1[muestra1$V1=="NC_000014.9"] <- "chr14"
muestra1$V1[muestra1$V1=="NC_000015.10"] <- "chr15"
muestra1$V1[muestra1$V1=="NC_000016.10"] <- "chr16"
muestra1$V1[muestra1$V1=="NC_000017.11"] <- "chr17"
muestra1$V1[muestra1$V1=="NC_000018.10"] <- "chr18"
muestra1$V1[muestra1$V1=="NC_000019.10"] <- "chr19"
muestra1$V1[muestra1$V1=="NC_000020.11"] <- "chr20"
muestra1$V1[muestra1$V1=="NC_000021.9"] <- "chr21"
muestra1$V1[muestra1$V1=="NC_000022.11"] <- "chr22"
muestra1$V1[muestra1$V1=="NC_000023.11"] <- "chrX"
muestra1$V1[muestra1$V1=="NC_000024.10"] <- "chrY"
write.table(muestra1,output_file,quote = FALSE,col.names = FALSE,row.names = FALSE)
}

convertchrom_num <- function(inpunt_file,output_file) {
  muestra1 <- read.delim(input_file, header = F)
  muestra1$V1[muestra1$V1=="NC_000001.11"] <- "1"
  muestra1$V1[muestra1$V1=="NC_000002.12"] <- "2"
  muestra1$V1[muestra1$V1=="NC_000003.12"] <- "3"
  muestra1$V1[muestra1$V1=="NC_000004.12"] <- "4"
  muestra1$V1[muestra1$V1=="NC_000005.10"] <- "5"
  muestra1$V1[muestra1$V1=="NC_000006.12"] <- "6"
  muestra1$V1[muestra1$V1=="NC_000007.14"] <- "7"
  muestra1$V1[muestra1$V1=="NC_000008.11"] <- "8"
  muestra1$V1[muestra1$V1=="NC_000009.12"] <- "9"
  muestra1$V1[muestra1$V1=="NC_000010.11"] <- "10"
  muestra1$V1[muestra1$V1=="NC_000011.10"] <- "11"
  muestra1$V1[muestra1$V1=="NC_000012.12"] <- "12"
  muestra1$V1[muestra1$V1=="NC_000013.11"] <- "13"
  muestra1$V1[muestra1$V1=="NC_000014.9"] <- "14"
  muestra1$V1[muestra1$V1=="NC_000015.10"] <- "15"
  muestra1$V1[muestra1$V1=="NC_000016.10"] <- "16"
  muestra1$V1[muestra1$V1=="NC_000017.11"] <- "17"
  muestra1$V1[muestra1$V1=="NC_000018.10"] <- "18"
  muestra1$V1[muestra1$V1=="NC_000019.10"] <- "19"
  muestra1$V1[muestra1$V1=="NC_000020.11"] <- "20"
  muestra1$V1[muestra1$V1=="NC_000021.9"] <- "21"
  muestra1$V1[muestra1$V1=="NC_000022.11"] <- "22"
  muestra1$V1[muestra1$V1=="NC_000023.11"] <- "X"
  muestra1$V1[muestra1$V1=="NC_000024.10"] <- "Y"
  write.table(muestra1,output_file,quote = FALSE,col.names = FALSE,row.names = FALSE)
}

convertchrom_num("/home/carlosbarron/Documents/Sequencias/sample.avinput","/home/carlosbarron/Documents/Sequencias/sample1_num.avinput")
