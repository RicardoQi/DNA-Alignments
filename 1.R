if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("genbankr")
install("Biostrings)
install("ggtree")
install("annotate", force= TRUE)
install("muscle")

install.packages("reshape2")
install.packages("rentrez")

library(rentrez)
library(genbankr)
library(annotate)
library(ape)

BbID<-GBAccession("OM797449.1")
BbGbk<-readGenBank(BbID)
class(BbGbk)
str(BbGbk)
cds(BbGbk)
transcripts(BbGbk)
exons(BbGbk)
genes(BbGbk)
otherFeatures(BbGbk)


BbGbk@translation