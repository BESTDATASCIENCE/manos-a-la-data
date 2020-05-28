library(feather)
library(dplyr)
library(tidyr)
setwd("~/nudge/Analysis/data/modified_exclusions/")
data=read_feather("pt_replication_modified_exclusions_data.feather")

data2=data  %>%
  group_by(Country,Sample) %>%
  summarise(n=n()) %>%
  pivot_wider(names_from = Sample,values_from = n,values_fill = list(n = 0)) %>%
  mutate(Total_n=Direct+Paid) %>%
  arrange(desc(Total_n))


original_pt_proportions=c(0.18, 0.83, 0.20, 0.65, 0.14, 0.73, 0.92, 0.42, 0.92, 0.30, 0.22, 0.16, 0.69, 0.18, 0.70, 0.72, 0.17)





x <- data.frame("Country" = "Original", "Item" = c(1:17), "Proportion" = original_pt_proportions)



  
  data  %>%
    select(1:17,Country)%>% 
    group_by(Country) %>%
    summarise(Proportion=mean(`1`))



  data3=  data  %>%
    select(1:17,Country)%>%
    pivot_longer(-Country,names_to = "Item",values_to = "pd")%>%
    group_by(Country,Item) %>%
    summarise(Proportion=mean(pd))%>%
    arrange(Country,Item)  
  
  data3$Item = as.numeric(data3$Item)

  data3=  data3  %>%
    arrange(Country,Item)  
  
  data3
  # data2 %>% filter (Country == "Australia")

