setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-04-22")
library(dplyr)
pbi=readxl::read_xlsx("5_actecon_kte_12.xlsx",sheet = 1)

View(pbi) # se ve muchos vacios
pbi=readxl::read_xlsx("5_actecon_kte_12.xlsx",sheet = 1,skip = 3) # espaciamos 3 para coger solo algunas filas de inicio
pbi=readxl::read_xlsx("5_actecon_kte_12.xlsx",sheet = 1,skip = 4) # espaciamos 4 para que se vuelvan numéricos ciertas columnas que tenian texto en el caso anterior
pbi=pbi[complete.cases(pbi$`Producto Bruto Interno`),-20]
names(pbi) # se muestra un vector de nombres. Ahora hay que cambiarlos
names(pbi) = c("año","trimestre","PBI","derechos_a_importacion_y_otros","VAB","agricultura","pesca","mineria","manufactura",
               "construccion","servicios_basicos","comercio_vehiculos","transporte","hoteles_restaurantes","telecomunicaciones",
               "servicios_financieros","servicios_a_empresas","administracion_publica","otros_servicios") 

View(pbi)
bd_anual= pbi %>% filter(año %in% (2007:2020))
View(pbi)

bd_trimestral= pbi %>% filter(!año %in% (2007:2020))
bd_trimestral$trimestre= as.Date(c("2007-03-31","2007-06-30","2007-09-30","2007-12-31",
                           "2008-03-31","2008-06-30","2008-09-30","2008-12-31",
                           "2009-03-31","2009-06-30","2009-09-30","2009-12-31",
                           "2010-03-31","2010-06-30","2010-09-30","2010-12-31",
                           "2011-03-31","2011-06-30","2011-09-30","2011-12-31",
                           "2012-03-31","2012-06-30","2012-09-30","2012-12-31",
                           "2013-03-31","2013-06-30","2013-09-30","2013-12-31",
                           "2014-03-31","2014-06-30","2014-09-30","2014-12-31",
                           "2015-03-31","2015-06-30","2015-09-30","2015-12-31",
                           "2016-03-31","2016-06-30","2016-09-30","2016-12-31",
                           "2017-03-31","2017-06-30","2017-09-30","2017-12-31",
                           "2018-03-31","2018-06-30","2018-09-30","2018-12-31",
                           "2019-03-31","2019-06-30","2019-09-30","2019-12-31"))

class((bd_trimestral$trimestre))
View(bd_trimestral)

library(lubridate)
class(bd_trimestral$trimestre)
?lubridate

bd_trimestral$año=year(bd_trimestral$trimestre)

bd_trimestral %>% filter(año=="2019")  %>% View()

