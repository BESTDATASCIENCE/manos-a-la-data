library(stringi)
library(dplyr)
library(ggplot2)
library(RColorBrewer)

setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-03-18")
covid19peru<-readxl::read_xlsx("covid19peru.xlsx",sheet = 1)
write.csv(covid19peru,"covid19peru.csv",row.names = F,fileEncoding = "UTF-8")
saveRDS(covid19peru,"covid19peru.RDS")
