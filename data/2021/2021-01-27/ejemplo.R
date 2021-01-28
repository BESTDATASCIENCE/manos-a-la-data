library(readxl)
library(dplyr)
library(tidyr)
library(readr)
library(dplyr)
library(vroom)
library(readstata13)
library(foreign)
library(here)
options(scipen=999)

library(XML)
library(RCurl)
library(rlist)
library(htmltab)


setwd(here::here("data/2021/2021-01-27/"))

onp1 <- read.csv("BC_y_PC_ago2020.csv")
onp2 <- read.csv("Pensionistas_y_Beneficiarios_SNP_ago2020.csv")
onp3 <- read.csv("Afiliados_SNP_ago2020.csv")
