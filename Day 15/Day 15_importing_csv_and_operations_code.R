
# DATA IMPORTING IN R PROGRAMMING LANGUAGE
# CSV - A Comma-Separated Values (CSV) file


# getwd() : FUnction that return the current working directory.

getwd() 

# setwd() :Function that reset the current WD 
# setwd("C:\\Users\\Folder_name1\\Folder_name2")

setwd("D:\\CODE\\R\\Mastering_R_30\\Day 15")
getwd() # above path will be returned 👆



# Sorting in Vector (Recall)

sample_vector <- c(14,556,22,1,2,3,7,8,9,55,16,23,5,4,36,87)

# sort() : Function which sorts the data in given vector in ascending order.
sort(sample_vector) # Ascending Order
sort(sample_vector,decreasing = T) #⚠️ Descending Order


# order() :Function which returns the index number of the numbers(within vector to be sorted) that were to be sorted.
order(sample_vector)

# simplifying the order 
simple_vector <- c(5,3,1,2,4)
simple_vector
sort(simple_vector)
order(simple_vector)
simple_vector[order(simple_vector)]

# rank() : Function which returns the ranking position of each element in the original vector.
rank(simple_vector)
simple_vector[rank(simple_vector)]


# Reading the CSV file
# read.csv(filename.csv)
# it comes under the utils file package

# read.csv("filename.csv") =Print's the csv file in the console
read.csv("Store1.csv")

Store<- read.csv("Store1.csv") # saves the csv file in the Frame named as Store

View(Store) # Used to view the csv file

is.data.frame(Store) # TRUE


# If the file is not in your directory then we can put the path in the read.csv command
another_store <- read.csv("D:\\CODE\\R\\anotherStore.csv")


# read.table = It is a standard function to import the csv
store2 <- read.table(file = "Store.csv",header = T, sep = ",")





# Predefined-Functions of the dataframe from the imported csv file

View(Store) # view() : This function displays the dataframe.

fix(Store) # fix(): This function manually fix the data in the csv file in the data editor of the r
# It is preferred to use till now cause it affect the csv file and after changing the data it shows the change after executing view command.

str(Store) # str() : This function shows the Structure of the data frame.

summary(Store) # summary() : This function provides the summary statistics on the columns of the data frame.

names(Store) # names() : This function gives the names of the variable/column in the dataframe.

ncol(Store) # ncol() : This function returns the Number of Columns.
nrow(Store) # nrow() : This function returns the Number of Rows.

length(Store) # length() : This function also returns the number of columns.

dim(Store) # dim() : This function shows the dimensions of the data frame by rows in columns.

colnames(Store) # colnames() : This function again shows the name of each column in the data frame.

head(Store) # head() : This function show the first 6 rows of the data frame.
tail(Store) # tail() : This function show the last 6 rows of the data frame.






# Repostioning of the columns in the dataframe
# If we want repostioned the 14th column to the 4th and then shift the 4th column to 5th and so on..
Store_with_repositioned_column <- Store[,c(1:3,14,4:13)]
names(Store)
names(Store_with_repositioned_column)
# Again if we take the 10th column to the 8th place 
Store_with_repositioned_column2 <- Store[,c(1:7,10,9,11:14)]
names(Store_with_repositioned_column2)




# Accessing the Rows
# Suppose if we want x number of row to be returned.
Store[c(1),] # Prints  only single row( that is 1st row) of the dataframe.
Store[c(3:10),] # Print multiple rows ( that is from 3rd to 10th row) of the dataframe.
Store_with_selective_rows1 <-  Store[c(1),] # Assigning the sliced dataframe to another dataframe.
Store_with_selective_rows2 <- Store[c(3:10),] # Assigning the sliced dataframe to another dataframe.


Store[c(1)] # Prints  single column(that is 1st column) of the dataframe.
Store[c(1:5)] # Prints multiple columns( that are from 1st to 5th column) of the dataframe.
Store_with_selective_column1 <-  Store[c(1)] # Assigning the sliced dataframe to another dataframe.
Store_with_selective_column2 <- Store[c(1:5)] #Assigning the sliced dataframe to another dataframe.

# Now getting selective for both rows and column.
Store[c(1:4),c(3:8)] # Prints the data from 1st to 4th rows and 3rd to 8th columns from the dataframe. 
Store_with_selective_both <- Store[c(1:4),c(3:8)] #Assigning the sliced dataframe to another dataframe.


# Grep() : Gives us the position of the particular column, simply It returns an integer vector of the positions where matches were found.
names(Store)

grep("Gender", colnames(Store))
grep("City",colnames(Store))


# $ - dollar sign for accessing or mentioning the variable name.

# Created a new variable.
Store$Total_Score <- Store$Score1 + Store$Score2 + Store$Score3  + Store$Score4  + Store$Score5
View(Store) # Total_Score named column added .
names(Store)

# Getting the maximum total_score from the dataframe.
max_total_score <- max(Store$Total_Score)
max_total_score

# Getting the minimum total_score from the dataframe.
min_total_score <- min(Store$Total_Score)
min_total_score

# Fetching the person having the maximum total_score in the dataframe.
# subset(Dataframe, condition aligned for the requirement)
Max_guy <- subset(Store,Total_Score==max(Total_Score))
Max_guy # so we have the details of the guy/lady who has the max score
# Fetching the person having the minimum total_score in the dataframe.
Min_guy <- subset(Store,Total_Score==min(Total_Score))
Min_guy

# Fetching the details of person who is in DUBLIN
person <- subset(Store,City=="DUBLIN")
person

# Fetching the details of persons who is in Movies Department
M_person <- subset(Store,Department=="Movies")
M_person

# Fetching the details of persons who is in Movies Department and having Total_Score more than 250
MT_person <- subset(Store,Department=="Movies"&Total_Score>250)
MT_person # Here we want both condition to be applied
# Fetching the details of persons who is in Movies Department or having Total_Score more than 250
MoT_person <- subset(Store,Department=="Movies"|Total_Score>250)
MoT_person # Here we want atleast condition to be applied




# Writing into a CSV file
# R also allows us to write into the .csvfile.
# For this purpose, R provides a write .csv() function.
write.csv(Store)