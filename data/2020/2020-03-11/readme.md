# Avance presupuestal histórico de Municipalidades de Lima

La data de esta semana proviene de [Consulta Amigable](http://apps5.mineco.gob.pe/transparencia/mensual/), parte del portal de transparencia económica del MEF. 

### Carga los datos de R así

```{r}
# obtèn la data de esta manera si usas R

municipalidades <- readr::read_csv('https://raw.githubusercontent.com/BESTDATASCIENCE/manos-a-la-data/master/data/2020/2020-03-04/municipalidades-lima.csv')

```
### Diccionario de la data

### `municipalidades-lima.csv`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
| Periodo | numérico | Año de la gestión|
| Municipalidad | character | Municipalidad Distrital de Lima |
| PIA | numérico | Presupuesto Inicial de Apertura |
| PIM | numérico | Presupuesto Institucional Modificado |
| Certificación | numérico | Certificación de Crédito presupuestario |
| Compromiso Anual | numérico |  |
| Atención de Compromiso Mensual | numérico |  |
| Devengado | numérico |  |
| Girado   | numérico |  |
| Avance % | numérico |  |

