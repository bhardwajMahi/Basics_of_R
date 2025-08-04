install.packages("dplyr")
install.packages("hflights")
library(dplyr)
library(hflights)

View(hflights)

names(hflights)

#Verb
#1. select

tempDF = hflights %>%
  select(FlightNum,AirTime,ArrDelay,DepDelay)
View(tempDF)

#2.filter
tempDF = hflights %>%
  select(FlightNum,AirTime,ArrDelay,DepDelay) %>%
  filter(ArrDelay>30 & DepDelay>30)

#3. Mutate
tempDF = hflights %>%
  select(FlightNum,AirTime,ArrDelay,DepDelay) %>%
  filter(ArrDelay>30 & DepDelay>30) %>%
  mutate(TotalDelay=ArrDelay+DepDelay)

#4. Arrange
tempDF = hflights %>%
  select(FlightNum,AirTime,ArrDelay,DepDelay) %>%
  filter(ArrDelay>30 & DepDelay>30) %>%
  mutate(TotalDelay=ArrDelay+DepDelay) %>%
  arrange(desc(TotalDelay))

tempDF = hflights %>%
  select(FlightNum,AirTime,ArrDelay,DepDelay) %>%
  filter(ArrDelay>30 & DepDelay>30) %>%
  mutate(TotalDelay=ArrDelay+DepDelay) %>%
  arrange(desc(AirTime))


#5. group_by, summarise 
tempDF = hflights %>%
  select(FlightNum,AirTime,ArrDelay,DepDelay) %>%
  filter(ArrDelay>30 & DepDelay>30) %>% 
  mutate(TotalDelay=ArrDelay+DepDelay) %>%
  group_by(FlightNum) %>%
  summarise(AverageDelay=mean(TotalDelay))
View(tempDF)

data_DF=read.csv("LR.csv")
View(data_DF)

num_of_col = dim(data_DF)[2]

for (i in 5:7){
  for(p in (i+1):8){
    CORR = cor(data_DF[,i],data_DF[,p])
    if(CORR > 0.6){
      print(paste("First Column: ",i," ","Second Column: ",p, "Correlation: ",CORR))
    }
  }
}

data_DF[,-7]



