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


setwd(here::here("data/2021/2021-01-13/"))

url <- "https://otorongo.club/2021/partidos/sentencias/"

sentencias <- htmltab(doc = url)
names(sentencias)[1] <- c("Organizacion Politica")
write.csv(sentencias,"sentencias.csv")

sentencias<- read.csv("sentencias.csv",row.names = 1)
