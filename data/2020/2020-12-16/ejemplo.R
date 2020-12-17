library(readxl)
library(dplyr)
library(tidyr)
library(readr)
library(dplyr)
library(vroom)
library(readstata13)
library(foreign)
options(scipen=999)
setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-12-16/data/")
library(rgdal)


mapa <- readOGR(dsn = "D:/ABCN/Github/manos-a-la-data/data/2020/2020-12-16/data", layer = "POLIGONALES_DEN3_2000")
plot(mapa, col = "lightgrey") 

