library(feather)
library(dplyr)

setwd("~/nudge/Analysis/data/modified_exclusions/")
data=read_feather("pt_replication_modified_exclusions_data.feather")

data2=data  %>%
  group_by(Country,Sample) %>%
  summarise(n=n()) %>%
  pivot_wider(names_from = Sample,values_from = n,values_fill = list(n = 0)) %>%
  mutate(Total_n=Direct+Paid) %>%
  arrange(desc(Total_n))


original_pt_proportions=c(0.18, 0.83, 0.20, 0.65, 0.14, 0.73, 0.92, 0.42, 0.92, 0.30, 0.22, 0.16, 0.69, 0.18, 0.70, 0.72, 0.17)
