library(stringi)
setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-03-04")
municipalidades=readxl::read_xlsx("municipalidades-lima.xlsx")
municipalidades$Municipalidad=sapply(municipalidades$Municipalidad, function(x) stri_sub(x,16))
write.csv(municipalidades,"municipalidades-lima.csv",row.names = F)

