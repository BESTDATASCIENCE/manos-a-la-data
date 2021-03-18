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


setwd(here::here("data/2021/2021-03-17/"))
encuestas <- readxl::read_xlsx("encuestas.xlsx")

