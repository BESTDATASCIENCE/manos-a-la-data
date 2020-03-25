library(stringi)
library(dplyr)
library(ggplot2)
library(RColorBrewer)
library(tidyr)

setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-03-18")
covid19peru<-readxl::read_xlsx("covid19peru.xlsx",sheet = "edad")
head(covid19peru)

ggplot(data=covid19peru, aes(x=Edad, y=Total)) +
  geom_bar(stat="identity", position=position_dodge())


covid19peru$Total=NULL

covid19peruedad=covid19peru %>%
  pivot_longer(-Edad, names_to = "Sexo", values_to = "Confirmados")

saveRDS(covid19peruedad,"covid19edad.RDS")
save(covid19peruedad,file="covid19edad.Rdata")


ggplot(data=covid19peruedad, aes(x=Edad, y=Confirmados, fill=Sexo)) +
  geom_bar(stat="identity", position=position_dodge())+
  labs(title = "Casos confirmados", subtitle = "Al 19/03/2020",caption = "Fuente: MINSA",
       x="Rango de Edad", y="Contagiados confirmados")
