library(dplyr)
library(ggplot2)

setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-03-18")
covid19peru<-read.csv("https://raw.githubusercontent.com/BESTDATASCIENCE/manos-a-la-data/master/data/2020/2020-03-18/covid19peru.csv")
covid19peru$fecha <- as.Date(covid19peru$fecha)

p <- ggplot(covid19peru, aes(x=fecha, y=contagiados,group = 1)) +
  geom_line() + geom_smooth(method = "gam")+
  labs(title = "Evolución de casos confirmados", subtitle = "En Perú",caption = "Fuente: MINSA",
       x="Fecha", y="Contagiados")

p



