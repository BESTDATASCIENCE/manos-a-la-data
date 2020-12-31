library(readxl)
library(dplyr)
library(tidyr)
library(readr)
library(dplyr)
library(vroom)
library(readstata13)
library(foreign)
options(scipen=999)
setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-12-30/")

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("Biostrings")
BiocManager::install("ggtree")


library(ape)
library(Biostrings)
library(ggplot2)
library(ggtree)

tree <- read.tree("nextstrain_community_quipupe_peru_dic_tree.nwk")

tree <- read.tree("nextstrain_community_quipupe_peru_dic_timetree.nwk")

ggtree(tree)

ggtree(tree) + 
  theme_tree2() +
  geom_tiplab(align=TRUE) 



