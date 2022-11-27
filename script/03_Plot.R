
#Plot ------

ggplot(Data_analysis,aes(factor(Internet_use),Age_gr))+
  geom_violin()+
  geom_point(shape=1, position="jitter")