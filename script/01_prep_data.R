
# Rename and recode var netusoft
library(tidyverse)

Data_set <- rename(ESS9e03_1)

Data_set = mutate(
  Data_set,
  Internet_use = ifelse(Data_set$netusoft == 1, "Never",
                        ifelse(Data_set$netusoft == 2, "Only occasionally",
                               ifelse(Data_set$netusoft == 3, "A few times a week",
                                      ifelse(Data_set$netusoft == 4, "Most days",
                                             "Every day")))))

# Rename recode the var Age (agea)
Data_set = mutate(
  Data_set, 
  Age_gr = ifelse(Data_set$agea <= 21, "17-21",
                  ifelse(Data_set$agea <= 37, "22-37",
                         ifelse(Data_set$agea <=53, "38-53",
                                ifelse(Data_set$agea <=72, "54-72",
                                       "over73")))))