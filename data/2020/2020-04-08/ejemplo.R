setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-04-08")
secundaria=read.csv("Resultados_Distrital_2doSecundaria.csv",skip = 3)
writexl::write_xlsx(secundaria,"secundaria.xlsx")
