getwd()

full_name = c("Mahima", "Bhardwaj")
print(full_name)
full_name[1]
full_name[2]


#Dataframe : 2D Data strcuture
# Combination of rows + columns
# Combination of vectors
Names = c("Mahima", "Garima", "Mamta", "Poornima", "Devyani")
Age = c(25,20,22,28,21)
Profession = c("Lecturer", "Student", "Home maker", "Freelancer", "Assistant Professor")
my_first_dataframe = data.frame(Names, Age, Profession)
View (my_first_dataframe)


city=c("Bangalore","Calcultta","Delhi","Mumbai","Gurgaon")
my_first_dataframe = cbind(my_first_dataframe,city)
View(my_first_dataframe)

new_entry = data.frame(Names="Sneha", Age=29,Profession = "Software engineer", city="Brisbane")
View(new_entry)

my_first_dataframe = rbind(my_first_dataframe, new_entry)
View(my_first_dataframe)
