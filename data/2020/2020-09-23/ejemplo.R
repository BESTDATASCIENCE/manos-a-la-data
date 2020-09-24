library(readxl)
library(dplyr)
library(tidyr)
library(readr)
library(dplyr)
library(vroom)
library(readstata13)
options(scipen=999)
setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-09-23")

endi2018 <- read.dta13("Base ENDI 2018.dta")
endo2018 <- read.dta13("Base ENDO 2018.dta")
endo2016 <- read.dta13("bd_endo2016.dta")
endo2016_2 <- read.dta13("bd_p109_endo2016.dta")
endo2014 <- read.dta13("bd_endo2014.dta")



