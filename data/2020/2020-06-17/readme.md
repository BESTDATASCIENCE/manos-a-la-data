# Estadísticas Reactiva Perú: Lista Empresas Beneficiadas Reactiva Peru

Data extraída de
https://www.gob.pe/institucion/mef/informes-publicaciones/675811-lista-de-empresas-beneficiadas-por-el-programa-reactiva-peru-al-29-de-mayo-del-2020

### Carga los datos de R así Reactiva Perú

```{r}

setwd("D:/ABCN/Github/manos-a-la-data/data/2020/2020-06-17")
empresas_reactiva_peru <- readxl::read_xlsx("empresas.xlsx",skip = 1)

```

### Diccionario de la data


