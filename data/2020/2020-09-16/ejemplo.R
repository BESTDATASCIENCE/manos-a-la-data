library(readxl)
library(dplyr)
library(tidyr)
library(readr)
library(dplyr)
library(vroom)
options(scipen=999)
setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-09-16")

inflacion <- readxl::read_xlsx("expectativas-inflacion.xlsx")
pbi <- readxl::read_xlsx("expectativas-pbi.xlsx")
indices <- readxl::read_xlsx("expectativas-series-de-indices.xlsx")
TC <- readxl::read_xlsx("expectativas-tipo-de-cambio.xlsx")




