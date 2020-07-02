library(readxl)
library(dplyr)
library(tidyr)
library(readr)
library(tabulizer)
library(dplyr)
library(pdftools)

# setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-07-01")
# pdf_file <- "ANUARIO ESTADISTICO SUSALUD 2019.pdf"
# txt <- pdf_text(pdf_file)
# txt[48]

a=readxl::read_xlsx("susalud tabla 2.5.xlsx")
