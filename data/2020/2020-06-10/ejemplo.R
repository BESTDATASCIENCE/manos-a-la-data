library(feather)
library(dplyr)
library(tidyr)

setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-06-10")
consorcios <- readxl::read_xls("Consorciosadjudicados.xls")
