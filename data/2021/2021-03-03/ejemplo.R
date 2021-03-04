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


setwd(here::here("data/2021/2021-03-03/"))
peajes1<- readxl::read_xlsx("202007-PDE-REP-00029_0.xlsx") # número de vehiculos
peajes2<- readxl::read_xlsx("202007-PDE-REP-00026_0.xlsx") # montos recaudados
