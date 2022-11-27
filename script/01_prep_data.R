
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
