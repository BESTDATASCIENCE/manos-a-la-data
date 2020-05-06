setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-05-06")
library(dplyr)
aranceles=readxl::read_xlsx("03_Arancel_Nominal_y_Efectivo_1993_2019.xlsx",sheet = 2,skip = 5)
names(aranceles)= c("año","nominal","efectivo")
aranceles=aranceles[complete.cases(aranceles$nominal),]
View(aranceles) # se ve muchos vacios
aranceles$año=1993:2019
