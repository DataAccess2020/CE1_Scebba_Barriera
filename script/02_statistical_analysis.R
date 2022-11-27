
#Analysis
with(Data_analysis, table(Internet_use, Age_gr))

#Table with %

round(prop.table(table(Data_analysis$Internet_use,Data_analysis$Age_gr))*100,1)
