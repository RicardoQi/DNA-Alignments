#Github link https://github.com/RicardoQi/DNA-Alignments
#load packages
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("genbankr")
install("Biostrings")
install("ggtree")
install("annotate", force= TRUE)
install("muscle")

install.packages("reshape2")
install.packages("rentrez")

library(rentrez)
library(genbankr)
library(annotate)
library(ape)
#enter the ID of the gene and load it to the program
BbID<-GBAccession("NC_045512.2")
BbGbk<-readGenBank(BbID)
#indentify the classes
class(BbGbk)
#use str() to see the structure
str(BbGbk)
#coding sequence of the gene
cds(BbGbk)
#trasncripts of the gene
transcripts(BbGbk)
exons(BbGbk)
genes(BbGbk)
otherFeatures(BbGbk)
