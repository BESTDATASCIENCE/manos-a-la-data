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


setwd(here::here("data/2021/2021-09-01/"))
bd <- readxl::read_xlsx("2-Registro de Proveedores ME.xlsx")


