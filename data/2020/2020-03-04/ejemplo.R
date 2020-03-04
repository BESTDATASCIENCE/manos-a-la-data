library(stringi)
library(ggplot2)
municipalidades<-read.csv("https://raw.githubusercontent.com/BESTDATASCIENCE/manos-a-la-data/master/data/2020/2020-03-04/municipalidades.csv")

names(municipalidades)
sapply(municipalidades,class)

municipalidades2 <- municipalidades %>% filter(PROVINCIA=="MUNICIPALIDAD METROPOLITANA DE LIMA")
municipalidades2 <- municipalidades %>% filter(PROVINCIA=="MUNICIPALIDAD PROVINCIAL DE BARRANCA")
municipalidades2 <- municipalidades %>% filter(PROVINCIA=="150301-301299: MUNICIPALIDAD PROVINCIAL DE CAJATAMBO")
municipalidades2 <- municipalidades %>% filter(PROVINCIA=="150401-301304: MUNICIPALIDAD PROVINCIAL DE CANTA")
municipalidades2 <- municipalidades %>% filter(PROVINCIA=="150501-301311: MUNICIPALIDAD PROVINCIAL DE CAÑETE - SAN VICENTE DE CAÑETE")
municipalidades2 <- municipalidades %>% filter(PROVINCIA=="150601-301327: MUNICIPALIDAD PROVINCIAL DE HUARAL")
municipalidades2 <- municipalidades %>% filter(PROVINCIA=="150701-301339: MUNICIPALIDAD PROVINCIAL DE HUAROCHIRI - MATUCANA")
municipalidades2 <- municipalidades %>% filter(PROVINCIA=="150801-301371: MUNICIPALIDAD PROVINCIAL DE HUAURA")
municipalidades2 <- municipalidades %>% filter(PROVINCIA=="150901-301383: MUNICIPALIDAD PROVINCIAL DE OYON")
municipalidades2 <- municipalidades %>% filter(PROVINCIA=="151001-301389: MUNICIPALIDAD PROVINCIAL DE YAUYOS")





# ggplot(data = municipalidades2, mapping = aes(x = Municipalidad, y = avance)) +
#   geom_boxplot()

ggplot(data = municipalidades2) +
  geom_boxplot(mapping = aes(x = reorder(Municipalidad, avance, FUN = median), y = avance)) +
  coord_flip()


