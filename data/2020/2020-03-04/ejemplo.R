library(stringi)
library(ggplot2)
library(dplyr)
library (DT)
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

# municipalidades3 <- 
  
  municipalidades %>% 
                    group_by(Municipalidad) %>%
                    summarise(avance=median(avance)) %>%
                    arrange(avance) %>% DT::datatable()

  municipalidades %>% 
    group_by(Municipalidad) %>%
    summarise(avance=median(avance)) %>%
    arrange(desc(avance)) %>% DT::datatable()

  
  p5 <- ggplot(municipalidades2, aes(x = periodo, y = avance))
  # p5 + geom_line(aes(color = Municipalidad))  
  
  (p5 <- p5 + geom_line() +
      facet_wrap(~Municipalidad, ncol = 10)+
      theme(text=element_text(size=7,  family="serif"))+
      labs(title = "Avance presupuestal", subtitle = "Histórico 2007-2019",caption = "Fuente: Consulta Amigable",
                                                             x="Periodo", y="Avance presupuestal (%)"))
  
  
  
  p5 <- ggplot(municipalidades2, aes(x = periodo, y = avance))
  # p5 + geom_line(aes(color = Municipalidad))  
  
  (p5 <- p5 + geom_line() +
      facet_wrap(~Municipalidad, ncol = 10)+
      
      theme( axis.text = element_text( size = 14 ),
             axis.text.x = element_text( size = 12 ),
             axis.title = element_text( size = 14, face = "bold" ),
             legend.position="none",
             strip.text = element_text(size = 6))  +
      labs(title = "Avance presupuestal", subtitle = "Histórico 2007-2019",caption = "Fuente: Consulta Amigable",
           x="Periodo", y="Avance presupuestal (%)")+ stat_smooth(method=lm))
  
  

# ggplot(data = municipalidades2, mapping = aes(x = Municipalidad, y = avance)) +
#   geom_boxplot()

ggplot(data = municipalidades2) +
  geom_boxplot(mapping = aes(x = reorder(Municipalidad, avance, FUN = median), y = avance)) +
  coord_flip() +labs(title = "Avance presupuestal", subtitle = "Histórico 2007-2019",caption = "Fuente: Consulta Amigable",
                     x="Municipalidades", y="Avance presupuestal (%)")


