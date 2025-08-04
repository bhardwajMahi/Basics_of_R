library(ggplot2)
library(dplyr)

todayData = read.csv("LR.csv")
View(todayData)

#Scatter Plots
ggplot(todayData,aes(x=sqft_living,y=price,color=Quality))+
  geom_point()+
  labs(x="Total Build Area (sqft)",y="Cost of the House")+
  theme(plot.title = element_text(size=10,face="bold"),
        axis.text.x = element_text(size=7,colour = "black",angle=90),
        axis.text.y = element_text(size=7,colour = "black"),
        axis.title.x = element_text(size=7),
        axis.title.y = element_text(size=7))


Mean=todayData %>%
  filter(bedrooms<6)%>%
  group_by(Quality)%>%
  summarise(Mean=mean(price))

View(Mean)  

ggplot(Mean, aes(x=Quality,y=Mean))+
  geom_bar(stat="identity")

Mean=todayData %>%
  filter(bedrooms>0)%>%
  filter(bedrooms<20)%>%
  group_by(bedrooms,Quality) %>%
  summarise(Average = mean(price))
#Barchart (stack)
ggplot(Mean, aes(x = bedrooms, y = Average, fill = Quality)) + 
  geom_bar(stat="identity",position="stack")+
  #geom_text(aes(label=round(Average,2)),size=2,position = position_dodge(width=0.2))+
  labs(title="Bedrooms Vs Price",x="Number of Bedrooms",y="Price (USD)")+
  theme(plot.title = element_text(size=10,face="bold"),
        axis.text.x = element_text(size=7,color="black",angle=90),
        axis.text.y = element_text(size=7,color="black"),
        axis.title.x = element_text(size=7,color="black"),
        axis.title.y = element_text(size=7,color="black"))


