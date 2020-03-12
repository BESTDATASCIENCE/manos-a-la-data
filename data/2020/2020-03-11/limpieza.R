library(stringi)
library(dplyr)
library(ggplot2)
library(RColorBrewer)

setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-03-11")
encuesta<-readxl::read_xlsx("encuesta.xlsx",sheet = "final")
write.csv(encuesta,"encuesta2.csv",row.names = F,fileEncoding = "UTF-8")
saveRDS(encuesta,"encuesta.RDS")
