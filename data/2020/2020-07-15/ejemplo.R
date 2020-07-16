library(readxl)
library(dplyr)
library(tidyr)
library(readr)
library(tabulizer)
library(dplyr)
library(pdftools)

setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-07-15")
bd=readxl::read_xls("Reporte_Deuda_GRGL_30042020.xls",sheet = "Resumen",skip = 18)
bd=bd[1:10,6:9]
names(bd)=c("acreedor","USD","PEN","porcentaje")
bd[1,1]="MEF"
sapply(bd,class)
bd[,-1]=sapply(bd[,-1],function(x) round(as.numeric(as.character(x)),2))
bd$periodo="2020-04-30"          
View(bd)
