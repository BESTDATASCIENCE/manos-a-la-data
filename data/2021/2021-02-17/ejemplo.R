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


setwd(here::here("data/2021/2021-02-17/"))
oefa <- readxl::read_xlsx("Pedidosfiscalia2018.xlsx")
oefa %>% 
  group_by(SECTOR) %>%
  summarize(n=n())


oefa %>% 
  group_by(SECTOR,ESTADO) %>%
  summarize(n=n()) %>% 
  View()
