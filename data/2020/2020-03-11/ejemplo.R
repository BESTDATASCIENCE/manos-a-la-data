library(stringi)
library(dplyr)
library(ggplot2)
library(RColorBrewer)

setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-03-11")
encuesta<-readxl::read_xlsx("c_15.xlsx",sheet = "final")
colourCount = length(unique(encuesta$`Tipo de actividad`))
getPalette = colorRampPalette(brewer.pal(9, "Set1"))
ggplot(data=encuesta, aes(x=Genero, y=Edad1,fill=`Tipo de actividad`)) + geom_bar(stat="identity") + scale_fill_manual(name="Actividades",values = colorRampPalette(brewer.pal(12, "Set2"))(colourCount))+
  labs(title = "Promedio de horas a la semana que dedican mujeres y hombres adultos a actividades diarias, 2010", subtitle = "Adultos entre 30 y 49 años",caption = "Fuente: INEI",
       x="Genero", y="Horas a la semana")



