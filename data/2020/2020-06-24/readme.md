# Bono Independiente -[Ministerio de Trabajo y Promocion del Empleo - MTPE]

Data extraída de https://www.datosabiertos.gob.pe/dataset/bono-independiente-ministerio-de-trabajo-y-promocion-del-empleo-mtpe/resource/d21e2749-e07e


### Carga los datos de R

```{r}

library(readxl)
library(dplyr)
library(tidyr)
library(readr)

setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-06-24")
empresas_reactiva_peru <- readxl::read_xlsx("bono_Independiente_trabajaperu.xlsx",skip = 1)
bono <- read_csv("bono_Independiente_trabajaperu.csv")
head(bono)


```

### Diccionario de la data


