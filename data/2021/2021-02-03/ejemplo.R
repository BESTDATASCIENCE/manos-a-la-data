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


setwd(here::here("data/2021/2021-02-03/"))

sunass1 <- read.csv("Conexiones activas de agua potable.csv",skip = 1)
sunass2 <- read.csv("Conexiones de agua potable con medidor leído.csv",skip = 1)
sunass3 <- read.csv("Conexiones totales de agua potable.csv",skip = 1)
sunass4 <- read.csv("Conexiones totales de alcantarillado.csv",skip = 1)
sunass5 <- read.csv("Conexiones activas de agua potable.csv",skip = 1)
sunass6 <- read.csv("Volumen producido de agua potable.csv",skip = 1)

