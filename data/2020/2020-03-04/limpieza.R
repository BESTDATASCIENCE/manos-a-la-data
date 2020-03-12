library(stringi)
library(dplyr)
setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-03-04")

m2019<-readxl::read_xlsx("municipalidades-lima.xlsx",sheet = "2019")
m2019$Municipalidad[m2019$Municipalidad == "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES"] <- "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES-YAUYOS"
m2019$Municipalidad[m2019$Municipalidad == "150712-301350: MUNICIPALIDAD DISTRITAL DE LARAOS"] <- "150712-301350: MUNICIPALIDAD DISTRITAL DE SAN PEDRO DE LARAOS"
m2019$Municipalidad[m2019$Municipalidad == "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO"] <- "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO - CAÑETE"
m2019$Municipalidad[m2019$Municipalidad == "150101-301250: MUNICIPALIDAD PROVINCIAL DE LIMA"] <- "150101-301250: MUNICIPALIDAD METROPOLITANA DE LIMA"
m2019$Municipalidad[m2019$Municipalidad == "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS"] <- "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS-CAÑETE"
m2019$Municipalidad<-sapply(m2019$Municipalidad, function(x) stri_sub(x,16))
m2019$`Avance %`  <- sapply(m2019$`Avance %`, function(x) stri_sub(x,2))
m2019$`Avance %`<- as.numeric(as.character(m2019$`Avance %`))
m2019$periodo<- 2019

m2018<-readxl::read_xlsx("municipalidades-lima.xlsx",sheet = "2018")
m2018$Municipalidad[m2018$Municipalidad == "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES"] <- "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES-YAUYOS"
m2018$Municipalidad[m2018$Municipalidad == "150712-301350: MUNICIPALIDAD DISTRITAL DE LARAOS"] <- "150712-301350: MUNICIPALIDAD DISTRITAL DE SAN PEDRO DE LARAOS"
m2018$Municipalidad[m2018$Municipalidad == "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO"] <- "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO - CAÑETE"
m2018$Municipalidad[m2018$Municipalidad == "150101-301250: MUNICIPALIDAD PROVINCIAL DE LIMA"] <- "150101-301250: MUNICIPALIDAD METROPOLITANA DE LIMA"
m2018$Municipalidad[m2018$Municipalidad == "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS"] <- "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS-CAÑETE"
m2018$Municipalidad<-sapply(m2018$Municipalidad, function(x) stri_sub(x,16))
m2018$`Avance %`  <- sapply(m2018$`Avance %`, function(x) stri_sub(x,2))
m2018$`Avance %`<- as.numeric(as.character(m2018$`Avance %`))
m2018$periodo<- 2018

m2017<-readxl::read_xlsx("municipalidades-lima.xlsx",sheet = "2017")
m2017$Municipalidad[m2017$Municipalidad == "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES"] <- "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES-YAUYOS"
m2017$Municipalidad[m2017$Municipalidad == "150712-301350: MUNICIPALIDAD DISTRITAL DE LARAOS"] <- "150712-301350: MUNICIPALIDAD DISTRITAL DE SAN PEDRO DE LARAOS"
m2017$Municipalidad[m2017$Municipalidad == "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO"] <- "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO - CAÑETE"
m2017$Municipalidad[m2017$Municipalidad == "150101-301250: MUNICIPALIDAD PROVINCIAL DE LIMA"] <- "150101-301250: MUNICIPALIDAD METROPOLITANA DE LIMA"
m2017$Municipalidad[m2017$Municipalidad == "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS"] <- "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS-CAÑETE"
m2017$Municipalidad<-sapply(m2017$Municipalidad, function(x) stri_sub(x,16))
m2017$`Avance %`  <- sapply(m2017$`Avance %`, function(x) stri_sub(x,2))
m2017$`Avance %`<- as.numeric(as.character(m2017$`Avance %`))
m2017$periodo<- 2017


m2016<-readxl::read_xlsx("municipalidades-lima.xlsx",sheet = "2016")
m2016$Municipalidad[m2016$Municipalidad == "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES"] <- "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES-YAUYOS"
m2016$Municipalidad[m2016$Municipalidad == "150712-301350: MUNICIPALIDAD DISTRITAL DE LARAOS"] <- "150712-301350: MUNICIPALIDAD DISTRITAL DE SAN PEDRO DE LARAOS"
m2016$Municipalidad[m2016$Municipalidad == "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO"] <- "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO - CAÑETE"
m2016$Municipalidad[m2016$Municipalidad == "150101-301250: MUNICIPALIDAD PROVINCIAL DE LIMA"] <- "150101-301250: MUNICIPALIDAD METROPOLITANA DE LIMA"
m2016$Municipalidad[m2016$Municipalidad == "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS"] <- "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS-CAÑETE"
m2016$Municipalidad<-sapply(m2016$Municipalidad, function(x) stri_sub(x,16))
m2016$`Avance %`  <- sapply(m2016$`Avance %`, function(x) stri_sub(x,2))
m2016$`Avance %`<- as.numeric(as.character(m2016$`Avance %`))
m2016$periodo<- 2016

m2015<-readxl::read_xlsx("municipalidades-lima.xlsx",sheet = "2015")
m2015$Municipalidad[m2015$Municipalidad == "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES"] <- "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES-YAUYOS"
m2015$Municipalidad[m2015$Municipalidad == "150712-301350: MUNICIPALIDAD DISTRITAL DE LARAOS"] <- "150712-301350: MUNICIPALIDAD DISTRITAL DE SAN PEDRO DE LARAOS"
m2015$Municipalidad[m2015$Municipalidad == "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO"] <- "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO - CAÑETE"
m2015$Municipalidad[m2015$Municipalidad == "150101-301250: MUNICIPALIDAD PROVINCIAL DE LIMA"] <- "150101-301250: MUNICIPALIDAD METROPOLITANA DE LIMA"
m2015$Municipalidad[m2015$Municipalidad == "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS"] <- "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS-CAÑETE"
m2015$Municipalidad<-sapply(m2015$Municipalidad, function(x) stri_sub(x,16))
m2015$`Avance %`  <- sapply(m2015$`Avance %`, function(x) stri_sub(x,2))
m2015$`Avance %`<- as.numeric(as.character(m2015$`Avance %`))
m2015$periodo<- 2015

m2014<-readxl::read_xlsx("municipalidades-lima.xlsx",sheet = "2014")
m2014$Municipalidad[m2014$Municipalidad == "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES"] <- "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES-YAUYOS"
m2014$Municipalidad[m2014$Municipalidad == "150712-301350: MUNICIPALIDAD DISTRITAL DE LARAOS"] <- "150712-301350: MUNICIPALIDAD DISTRITAL DE SAN PEDRO DE LARAOS"
m2014$Municipalidad[m2014$Municipalidad == "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO"] <- "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO - CAÑETE"
m2014$Municipalidad[m2014$Municipalidad == "150101-301250: MUNICIPALIDAD PROVINCIAL DE LIMA"] <- "150101-301250: MUNICIPALIDAD METROPOLITANA DE LIMA"
m2014$Municipalidad[m2014$Municipalidad == "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS"] <- "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS-CAÑETE"
m2014$Municipalidad<-sapply(m2014$Municipalidad, function(x) stri_sub(x,16))
m2014$`Avance %`  <- sapply(m2014$`Avance %`, function(x) stri_sub(x,2))
m2014$`Avance %`<- as.numeric(as.character(m2014$`Avance %`))
m2014$periodo<- 2014

m2013<-readxl::read_xlsx("municipalidades-lima.xlsx",sheet = "2013")
m2013$Municipalidad[m2013$Municipalidad == "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES"] <- "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES-YAUYOS"
m2013$Municipalidad[m2013$Municipalidad == "150712-301350: MUNICIPALIDAD DISTRITAL DE LARAOS"] <- "150712-301350: MUNICIPALIDAD DISTRITAL DE SAN PEDRO DE LARAOS"
m2013$Municipalidad[m2013$Municipalidad == "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO"] <- "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO - CAÑETE"
m2013$Municipalidad[m2013$Municipalidad == "150101-301250: MUNICIPALIDAD PROVINCIAL DE LIMA"] <- "150101-301250: MUNICIPALIDAD METROPOLITANA DE LIMA"
m2013$Municipalidad[m2013$Municipalidad == "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS"] <- "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS-CAÑETE"
m2013$Municipalidad<-sapply(m2013$Municipalidad, function(x) stri_sub(x,16))
m2013$Municipalidad[m2013$Municipalidad == "150117-301266: MUNICIPALIDAD DISTRITAL DE LOS OLIVOS (LAS PALMERAS)"] <- "150117-301266: MUNICIPALIDAD DISTRITAL DE LOS OLIVOS"
m2013$`Avance %`  <- sapply(m2013$`Avance %`, function(x) stri_sub(x,2))
m2013$`Avance %`<- as.numeric(as.character(m2013$`Avance %`))
m2013$periodo<- 2013

m2012<-readxl::read_xlsx("municipalidades-lima.xlsx",sheet = "2012")
m2012$Municipalidad[m2012$Municipalidad == "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES"] <- "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES-YAUYOS"
m2012$Municipalidad[m2012$Municipalidad == "150712-301350: MUNICIPALIDAD DISTRITAL DE LARAOS"] <- "150712-301350: MUNICIPALIDAD DISTRITAL DE SAN PEDRO DE LARAOS"
m2012$Municipalidad[m2012$Municipalidad == "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO"] <- "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO - CAÑETE"
m2012$Municipalidad[m2012$Municipalidad == "150101-301250: MUNICIPALIDAD PROVINCIAL DE LIMA"] <- "150101-301250: MUNICIPALIDAD METROPOLITANA DE LIMA"
m2012$Municipalidad[m2012$Municipalidad == "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS"] <- "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS-CAÑETE"
m2012$Municipalidad[m2012$Municipalidad == "150117-301266: MUNICIPALIDAD DISTRITAL DE LOS OLIVOS (LAS PALMERAS)"] <- "150117-301266: MUNICIPALIDAD DISTRITAL DE LOS OLIVOS"
m2012$Municipalidad<-sapply(m2012$Municipalidad, function(x) stri_sub(x,16))
m2012$`Avance %`  <- sapply(m2012$`Avance %`, function(x) stri_sub(x,2))
m2012$`Avance %`<- as.numeric(as.character(m2012$`Avance %`))
m2012$periodo<- 2012


m2011<-readxl::read_xlsx("municipalidades-lima.xlsx",sheet = "2011")
m2011$Municipalidad[m2011$Municipalidad == "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES"] <- "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES-YAUYOS"
m2011$Municipalidad[m2011$Municipalidad == "150712-301350: MUNICIPALIDAD DISTRITAL DE LARAOS"] <- "150712-301350: MUNICIPALIDAD DISTRITAL DE SAN PEDRO DE LARAOS"
m2011$Municipalidad[m2011$Municipalidad == "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO"] <- "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO - CAÑETE"
m2011$Municipalidad[m2011$Municipalidad == "150101-301250: MUNICIPALIDAD PROVINCIAL DE LIMA"] <- "150101-301250: MUNICIPALIDAD METROPOLITANA DE LIMA"
m2011$Municipalidad[m2011$Municipalidad == "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS"] <- "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS-CAÑETE"
m2011$Municipalidad[m2011$Municipalidad == "150117-301266: MUNICIPALIDAD DISTRITAL DE LOS OLIVOS (LAS PALMERAS)"] <- "150117-301266: MUNICIPALIDAD DISTRITAL DE LOS OLIVOS"
m2011$Municipalidad<-sapply(m2011$Municipalidad, function(x) stri_sub(x,16))
m2011$`Avance %`  <- sapply(m2011$`Avance %`, function(x) stri_sub(x,2))
m2011$`Avance %`<- as.numeric(as.character(m2011$`Avance %`))
m2011$periodo<- 2011

m2010<-readxl::read_xlsx("municipalidades-lima.xlsx",sheet = "2010")
m2010$Municipalidad[m2010$Municipalidad == "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES"] <- "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES-YAUYOS"
m2010$Municipalidad[m2010$Municipalidad == "150712-301350: MUNICIPALIDAD DISTRITAL DE LARAOS"] <- "150712-301350: MUNICIPALIDAD DISTRITAL DE SAN PEDRO DE LARAOS"
m2010$Municipalidad[m2010$Municipalidad == "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO"] <- "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO - CAÑETE"
m2010$Municipalidad[m2010$Municipalidad == "150117-301266: MUNICIPALIDAD DISTRITAL DE LOS OLIVOS (LAS PALMERAS)"] <- "150117-301266: MUNICIPALIDAD DISTRITAL DE LOS OLIVOS"
m2010$Municipalidad[m2010$Municipalidad == "150101-301250: MUNICIPALIDAD PROVINCIAL DE LIMA"] <- "150101-301250: MUNICIPALIDAD METROPOLITANA DE LIMA"
m2010$Municipalidad[m2010$Municipalidad == "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS"] <- "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS-CAÑETE"
m2010$Municipalidad<-sapply(m2010$Municipalidad, function(x) stri_sub(x,16))
m2010$`Avance %`  <- sapply(m2010$`Avance %`, function(x) stri_sub(x,2))
m2010$`Avance %`<- as.numeric(as.character(m2010$`Avance %`))
m2010$periodo<- 2010



m2009<-readxl::read_xlsx("municipalidades-lima.xlsx",sheet = "2009")
m2009$Municipalidad[m2009$Municipalidad == "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES"] <- "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES-YAUYOS"
m2009$Municipalidad[m2009$Municipalidad == "150712-301350: MUNICIPALIDAD DISTRITAL DE LARAOS"] <- "150712-301350: MUNICIPALIDAD DISTRITAL DE SAN PEDRO DE LARAOS"
m2009$Municipalidad[m2009$Municipalidad == "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO"] <- "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO - CAÑETE"
m2009$Municipalidad[m2009$Municipalidad == "150101-301250: MUNICIPALIDAD PROVINCIAL DE LIMA"] <- "150101-301250: MUNICIPALIDAD METROPOLITANA DE LIMA"
m2009$Municipalidad[m2009$Municipalidad == "150117-301266: MUNICIPALIDAD DISTRITAL DE LOS OLIVOS (LAS PALMERAS)"] <- "150117-301266: MUNICIPALIDAD DISTRITAL DE LOS OLIVOS"
m2009$Municipalidad[m2009$Municipalidad == "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS"] <- "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS-CAÑETE"
m2009$Municipalidad<-sapply(m2009$Municipalidad, function(x) stri_sub(x,16))
m2009$`Avance %`  <- sapply(m2009$`Avance %`, function(x) stri_sub(x,2))
m2009$`Avance %`<- as.numeric(as.character(m2009$`Avance %`))
m2009$periodo<- 2009


m2008<-readxl::read_xlsx("municipalidades-lima.xlsx",sheet = "2008")
m2008$Municipalidad[m2008$Municipalidad == "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES"] <- "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES-YAUYOS"
m2008$Municipalidad[m2008$Municipalidad == "150712-301350: MUNICIPALIDAD DISTRITAL DE LARAOS"] <- "150712-301350: MUNICIPALIDAD DISTRITAL DE SAN PEDRO DE LARAOS"
m2008$Municipalidad[m2008$Municipalidad == "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO"] <- "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO - CAÑETE"
m2008$Municipalidad[m2008$Municipalidad == "150101-301250: MUNICIPALIDAD PROVINCIAL DE LIMA"] <- "150101-301250: MUNICIPALIDAD METROPOLITANA DE LIMA"
m2008$Municipalidad[m2008$Municipalidad == "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS"] <- "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS-CAÑETE"
m2008$Municipalidad[m2008$Municipalidad == "150117-301266: MUNICIPALIDAD DISTRITAL DE LOS OLIVOS (LAS PALMERAS)"] <- "150117-301266: MUNICIPALIDAD DISTRITAL DE LOS OLIVOS"
m2008$Municipalidad<-sapply(m2008$Municipalidad, function(x) stri_sub(x,16))
m2008$`Avance %`  <- sapply(m2008$`Avance %`, function(x) stri_sub(x,2))
m2008$`Avance %`<- as.numeric(as.character(m2008$`Avance %`))
m2008$periodo<- 2008

m2007<-readxl::read_xlsx("municipalidades-lima.xlsx",sheet = "2007")
m2007$Municipalidad[m2007$Municipalidad == "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES"] <- "151021-301409: MUNICIPALIDAD DISTRITAL DE MIRAFLORES-YAUYOS"
m2007$Municipalidad[m2007$Municipalidad == "150712-301350: MUNICIPALIDAD DISTRITAL DE LARAOS"] <- "150712-301350: MUNICIPALIDAD DISTRITAL DE SAN PEDRO DE LARAOS"
m2007$Municipalidad[m2007$Municipalidad == "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO"] <- "150513-301323: MUNICIPALIDAD DISTRITAL DE SAN ANTONIO - CAÑETE"
m2007$Municipalidad[m2007$Municipalidad == "150101-301250: MUNICIPALIDAD PROVINCIAL DE LIMA"] <- "150101-301250: MUNICIPALIDAD METROPOLITANA DE LIMA"
m2007$Municipalidad[m2007$Municipalidad == "150117-301266: MUNICIPALIDAD DISTRITAL DE LOS OLIVOS (LAS PALMERAS)"] <- "150117-301266: MUNICIPALIDAD DISTRITAL DE LOS OLIVOS"
m2007$Municipalidad[m2007$Municipalidad == "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS"] <- "150514-301324: MUNICIPALIDAD DISTRITAL DE SAN LUIS-CAÑETE"
m2007$Municipalidad<-sapply(m2007$Municipalidad, function(x) stri_sub(x,16))
m2007$`Avance %`  <- sapply(m2007$`Avance %`, function(x) stri_sub(x,2))
m2007$`Avance %`<- as.numeric(as.character(m2007$`Avance %`))
m2007$periodo<- 2007


municipalidades <- rbind(m2019,m2018)
municipalidades <- rbind(municipalidades,m2017)
municipalidades <- rbind(municipalidades,m2016)
municipalidades <- rbind(municipalidades,m2015)
municipalidades <- rbind(municipalidades,m2014)
municipalidades <- rbind(municipalidades,m2013)
municipalidades <- rbind(municipalidades,m2012)
municipalidades <- rbind(municipalidades,m2011)
municipalidades <- rbind(municipalidades,m2010)
municipalidades <- rbind(municipalidades,m2009)
municipalidades <- rbind(municipalidades,m2008)
municipalidades <- rbind(municipalidades,m2007)
names(municipalidades)[9]<-"avance"

provincias<-readxl::read_xlsx("municipalidades-lima.xlsx",sheet = "provincia")
municipalidades<-inner_join(municipalidades,provincias)
names(municipalidades)[c(4,6)]<-c("Certificacion","Atencion de Compromiso Mensual")
write.csv(municipalidades,"municipalidades.csv",row.names = F,fileEncoding = "UTF-8")
# munis=read.csv("municipalidades.csv")
saveRDS(municipalidades,"municipalidades.RDS")
