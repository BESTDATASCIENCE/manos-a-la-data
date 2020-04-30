setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-04-29")
library(dplyr)
informales=readxl::read_xlsx("peao-cuad-7.xlsx",sheet = 1)

View(informales) # se ve muchos vacios
informales=readxl::read_xlsx("peao-cuad-7.xlsx",sheet = 1,skip = 3) # espaciamos 3 para coger solo algunas filas de inicio
informales=informales[complete.cases(informales$`2008`),]
