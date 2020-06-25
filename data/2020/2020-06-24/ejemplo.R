library(readxl)
library(dplyr)
library(tidyr)
library(readr)

setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-06-24")
empresas_reactiva_peru <- readxl::read_xlsx("bono_Independiente_trabajaperu.xlsx",skip = 1)
bono <- read_csv("bono_Independiente_trabajaperu.csv")
head(bono)

