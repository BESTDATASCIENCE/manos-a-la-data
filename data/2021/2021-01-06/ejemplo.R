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


setwd(here::here("data/2021/2021-01-06/"))

bd2020 <- readxl::read_xlsx("CONOSCE_ADJUDICACIONES2020_0.xlsx")
bd2019 <- readxl::read_xlsx("CONOSCE_ADJUDICACIONES2019_0.xlsx")
bd2018 <- readxl::read_xlsx("CONOSCE_ADJUDICACIONES2018_0.xlsx")


