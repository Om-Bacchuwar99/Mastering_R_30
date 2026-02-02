# Data Frames in R Programming

# Data Frame: A data frame is an array.
# Unlike an array, the data we store in the columns of the data frame can be of various types.

# A data frame is a two-dimensional array-like structure or a table in which a column contains values of one variable, and rows contains one set of values from each column.
# A data frame is a speacial case of the list in which each component has equal length.


# column name should be unique and non-empty

# how to create data frame ?

# frame() : It is the function to create data frame.

# creating the data frame.
employee.data <- data.frame(
  employee_id = c(101:104),
  employee_name = c("Dheeraj","Arpit","Vedant","Gaurav"),
  sal = c(456.2,914.1,987.0,451.25),
  starting_date = as.Date(c("2020-01-01","2021-02-01","2023-04-03","2025-03-06")),
  stringsAsFactors =  FALSE # Factor is another type of datatype which stores categorical value.
)
 print(employee.data)
 str(employee.data) # gives us the whole info about the dataframe that we have created.
 
 # Extracting the specific column from the dataframe
# 1] Printing directly single column
 employee.data$employee_name # for printing the different columns within the frame.
# 2] Printing multiple columns using the variable.
 c1 <- data.frame(employee.data$employee_id,employee.data$employee_name)
print(c1)
# 3] Printing row/column (say we want 3rd row/column)
 c2 <- employee.data[3,]
 print(c2)
 c3 <- employee.data[,3]
 print(c3)
 
# 4] Printing a single or multiple specific/particular value/s.
 # single # say 4th column and 1st row
 employee.data[1,4] #works like the coordinate
 employee.data[c(1,4)] # prints whole column
 
 # multiple #say we want element of 1st column and 2nd row along with 3rd column and 4th row
 employee.data[c(2,4),c(1,3)]
 # ⚠️here 2 is taken(from 2,4) with respect to 1 (from 1,3) 
 # also 
 # #⚠️here 4 is taken(from 2,4) with respect to 3 (from 1,3)
 #⚠️⚠️⚠️ super important
 
 # if we take 2 elements from same column (say from 2nd column)
 employee.data[c(1,4),c(2)]

 employee.data[c(1,3)]
  
 
# 🔨MODIFY the dataframe
 
employee.data 
 
# ➕Adding a row
# for that we have to take variable in which we will have the list not vector.
# we have taken list because it consist of values of different datatype.
l1 <- list(105, "Shrikant",456.96,"2018-01-06")
# setting values
rbind(employee.data,l1)
# changing dataframe
employee.data <- rbind(employee.data,l1)
employee.data 

# ➕Adding a column
# here we can take vector because in a column the datatype of values is same.

states <- c("Haryana","Maharashtra","Telangana","Maharashtra","Bihar")
cbind(employee.data,States_of_belonging = states)
# changing dataframe
employee.data <- cbind(employee.data,States_of_belonging = states)
employee.data


# ➖Deleting a row
# if we want to delete 3rd row
employee.data <- employee.data[-3,]
employee.data

# ➖Delting a column
# if we want to delete 3rd column named sal
employee.data$sal<-NULL
employee.data

# 📊Summary of dataframe
# R provides the summary function to extract statistical summary and nature of data.
summary(employee.data)



