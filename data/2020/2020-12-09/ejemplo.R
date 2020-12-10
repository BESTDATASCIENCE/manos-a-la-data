library(readxl)
library(dplyr)
library(tidyr)
library(readr)
library(dplyr)
library(vroom)
library(readstata13)
library(foreign)
options(scipen=999)
setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-12-09/data/603-Modulo85")

data1 <- foreign::read.spss("Enaho01B-2017-1.SAV")
data2 <- foreign::read.spss("Enaho01B-2017-2.SAV")


