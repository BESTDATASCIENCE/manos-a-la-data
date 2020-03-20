library(dplyr)
library(ggplot2)

setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-03-18")
covid19peru<-read.csv("https://raw.githubusercontent.com/BESTDATASCIENCE/manos-a-la-data/master/data/2020/2020-03-18/covid19peru.csv")
covid19peru$fecha <- as.Date(covid19peru$fecha)

p <- ggplot(covid19peru, aes(x=fecha, y=contagiados,group = 1)) +
  geom_line() +
  stat_smooth(method="gam",fullrange=TRUE)   +
  scale_x_date(limits = c(as.Date("2020-03-06"), as.Date("2020-03-22"))) +
  labs(title = "Evolución de casos confirmados", subtitle = "En Perú",caption = "Fuente: MINSA",
       x="Fecha", y="Contagiados")
  
  
p


library(tidyverse)
set.seed(42)

# sample data
timeseries <- data_frame(
  Weekstarting = 
    seq.Date(
      from = as.Date("2017-01-02"),
      by = "week",
      length.out = 250
    ),
  PHCumm = cumsum(rnorm(250))
)

timeseries %>% ggplot(aes(x = Weekstarting, y = PHCumm)) +
  geom_line() +
  stat_smooth(method = glm, fullrange =TRUE, formula= y~poly(x,5)) +
  scale_x_date(limits = c(as.Date("2017-01-02"), as.Date("2022-06-02")))
