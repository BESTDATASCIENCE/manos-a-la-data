library(stringi)
library(dplyr)
library(ggplot2)
library(RColorBrewer)

setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-03-11")
encuesta<-readxl::read_xlsx("c_15.xlsx",sheet = "final")
write.csv(encuesta,"encuesta.csv",row.names = F)

