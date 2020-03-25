# Costo de estudios universitarios en EEUU, diversidad y pagos

La data de esta semana proviene de diversas fuentes de datos, en especial, [del departamento de EEUU de educación](https://www.ed.gov/)


### Carga los datos de R así

```{r}
# obtèn la data de esta manera si usas R

tuition_cost <- readr::read_csv('https://raw.githubusercontent.com/BESTDATASCIENCE/manos-a-la-data/master/data/2020/2020-03-25/tuition_cost.csv')

tuition_income <- readr::read_csv('https://raw.githubusercontent.com/BESTDATASCIENCE/manos-a-la-data/master/data/2020/2020-03-25/tuition_income.csv') 

salary_potential <- readr::read_csv('https://raw.githubusercontent.com/BESTDATASCIENCE/manos-a-la-data/master/data/2020/2020-03-25/salary_potential.csv')

historical_tuition <- readr::read_csv('https://raw.githubusercontent.com/BESTDATASCIENCE/manos-a-la-data/master/data/2020/2020-03-25/historical_tuition.csv')

diversity_school <- readr::read_csv('https://raw.githubusercontent.com/BESTDATASCIENCE/manos-a-la-data/master/data/2020/2020-03-25/diversity_school.csv')


```

### Diccionario de la data
