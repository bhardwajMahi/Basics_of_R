import_DF = read.csv("social.csv")
View(import_DF)

names(import_DF)
dim(import_DF)

import_DF[,3]
import_DF$Gender
max(import_DF$Age)
min(import_DF$Age)


# >, <,==,!

3>4

if(3>4){
  print("Mahima")
}else{
  print("You are awesome")
}


# &, |
if(3<4 & 5>10){
  print("You are super awesome")
}else{
  print("Not so awesome")
}


if("mahima" == "Mahima"){
  print("I am True")
}

#Loop
# for Loop

y_vector = c(f1="apple",f2="grapes",f3="banana",f4="Apricot",f5="Orange",f6="Coconut",f7="banana")


for(x in y_vector){
  print(x)
}

count=0

for(x in y_vector){
  if(x == "banana"){
    count = count+1
  }
}
print(paste("Number of times I found Banana is: ",count))

#function

# <name of function> = function(argument){
#
#}



my_print = function(a){
  print(paste("MY NAME IS: ",a))
}

my_print("Mahima")


Count_Banana = function(fruit_name){
  count=0
  
  for(x in fruit_name){
    if(x == "banana"){
      count = count+1
    }
  }
  print(paste("Number of times I found Banana is: ",count))
}


Count_Banana(y_vector)
x_vector = c("banana","banana","banana","banana")
Count_Banana(x_vector)



