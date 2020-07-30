library(readxl)
library(dplyr)
library(tidyr)
library(readr)
# library(tabulizer)
library(dplyr)
library(pdftools)

#Primero activemos los paquetes que necesitamos, si no los tienes usa install.packages("nombre-del-paquete")
library(pdftools)
library(tm)
library(wordcloud)
library(stringi)
library(DT)

# Configura tu directorio de trabajo

setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-07-22/mensajes a la nacion 28 de julio")

# Utilicemos readPDF para leer directamente el PDF!
my_pdf <- readPDF(control=list(text="-layout"))(elem=list(uri="2018.pdf"), language="es")



# Limpiemos un poco la data que está sucia... Por temas de compatibilidad y con fines de que sea reproducible para cualquier sistema operativo, hemos decidido quitar las tildes y la ñ.

text_raw <- my_pdf$content
text_raw<-gsub("á", "a", text_raw)
text_raw<-gsub("é", "e", text_raw)
text_raw<-gsub("í", "i", text_raw)
text_raw<-gsub("ó", "o", text_raw)
text_raw<-gsub("ú", "u", text_raw)
text_raw<-gsub("Á", "A", text_raw)
text_raw<-gsub("É", "E", text_raw)
text_raw<-gsub("Í", "I", text_raw)
text_raw<-gsub("Ó", "O", text_raw)
text_raw<-gsub("Ú", "U", text_raw)
text_raw<-gsub("ñ", "n", text_raw)
text_raw<-gsub("Ñ", "N", text_raw)

# Quitemos también algunos detalles extras...
text_raw<-gsub("Mensaje a la Nacion\r\n", "", text_raw)
text_raw<-gsub("\r\n", "", text_raw)

# Quitemos también algunos detalles extras...

text_corpus <- Corpus(VectorSource(text_raw))
corpus_clean <- tm_map(text_corpus, stripWhitespace)
corpus_clean <- tm_map(corpus_clean, removeNumbers)
corpus_clean <- tm_map(corpus_clean, content_transformer(tolower))
corpus_clean <- tm_map(corpus_clean, removeWords, stopwords("es"))
my_stopwords <- c("mas","ello","asi","tambien","vamos","anos","ano","solo","dar","fin","hemosplanteado","poderavanzar","ytenemos","primerosejes","alcongreso","estableci","elpremier","oficialtratamiento","politicaque","laciudadania","estecongreso","alcongreso","congresopocos","tales","esosproyectos","obligacionde","puede","realizar","lalucha","ypresentamos","mismos","anuestra","unacomision","seguirasi","elejecutivo","losnuevos","paisquiero","elcompromiso","ydecidir","laoficina","han reafirmado","esteesfuerzo","muestranuna","corrupciony","elfortalecimiento","fuimostestigos","politicay","decompromisos","lagravedad","queel","masque","decompromisos","confianzabuenas","reciensean","kitelectorales","porel","decidirsi","congresopocos","delpresidente","hanreafirmado","primermensaje","haciendo","mismo","dicidirsi","mehan","yhacerle","permite","contribuirdesde","unpunto","llevariamosadelante","unpais","nochesquiero","solotiene","actualsituacion","kitselectorales","aldescubierto","tratamientocomision","congresopocos","paisquiero","esemomento","embargo","congresopocos","comopersonas","comopresidente","luego","julio","independencia","aniversario","mensaje","peru","cion","nacion","–")
corpus_clean <- tm_map(corpus_clean, removeWords, my_stopwords)
corpus_clean <- tm_map(corpus_clean, removePunctuation)

dtm <- TermDocumentMatrix(corpus_clean)
m <- as.matrix(dtm)
v <- sort(rowSums(m),decreasing=TRUE)
d <- data.frame(word = names(v),freq=v)
d<-d[-1,]



wordcloud(words = d$word, freq = d$freq, min.freq = 1,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


