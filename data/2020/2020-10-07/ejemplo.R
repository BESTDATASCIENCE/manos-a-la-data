library(readxl)
library(dplyr)
library(tidyr)
library(readr)
library(dplyr)
library(vroom)
library(readstata13)
options(scipen=999)
setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-10-07")
planillaperu2019 <- readxl::read_xlsx("CAPITULO 04 - PLANILLA ELECTRONICA.xlsx",sheet = "C-14")
planillaperu2019 <- readxl::read_xlsx("CAPITULO 04 - PLANILLA ELECTRONICA.xlsx",sheet = "C-14",skip = 5)
planillaperu2019 <- planillaperu2019[complete.cases(planillaperu2019$ENERO),]
sapply(planillaperu2019,class)
names(planillaperu2019)[1] <- "Tipo de Empleado"
