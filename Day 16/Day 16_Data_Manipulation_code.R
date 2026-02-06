# IMPORTING OF EXCEL FILE IN R PROGRAMMING LANGUAGE

# Installing xlsx package
# We can manually install the xlsx package through the packages section in the output pane.
install.packages("xlsx") # We can install it via this code 

# ✅Verify whether the package is installed or not by the following command  given below.
#any(grepl("package_name",installed.packages()))
any(grepl("xlsx",installed.packages())) # output should be TRUE

# Loading the library function into RStudio
library("xlsx")


# Reading in excel file
# Read.xlsx(file_name,sheet_index)

# Reading the first worksheet in the file employee.xlsx


excel_data <- read.xlsx("employee.xlsx",sheetIndex=1)
print(excel_data)

# View()
View(excel_data) # view the excel file that we have read

# changing the directory
getwd()
setwd("D:\\CODE\\R\\Mastering_R_30\\Day 16")
getwd()

# names()
names(excel_data) # gives us the column names in the xlsx file.

# dim()
dim(excel_data) # gives us the dimensions of the xlsx file inputed.

# summary()
summary(excel_data) # gives us the statistical summary of the xlsx file inputed

# max()
max_salary <- max(excel_data$Salary) # gives us the max value from the specific column mentioned using $
max_salary

# min()
min_salary <- min(excel_data$Salary) # gives us the min value from the specific column mentioned using $
min_salary


# Now we want to store the details from the xlsx file satisfying the condition that we have specified.
# As we have seen in the Day 15 code file below
# person <- subset(Store,City=="DUBLIN")
# person -------> so it printed the person details who resided in dublin
# xlsx file has also the similar function shown below
details <- subset(excel_data,Location == "Dublin")
details

View(details) # it will show the details in new tab in RStudio


# Writing in xlsx file
write.xlsx() # If we want to perform the operation of the write in the xlsx file this function comes to rescue




# Manipulate data in R with dplyr package
test <- read.csv("demo_data.csv")
View(test)
head(test)
tail(test)


 
# Install dplyr package (i.e deployer package) 
install.packages("dplyr")

library("dplyr")


# Important dplyr verbs to remember

# select() : select columns
# filter() : filter rows
# arrange() : re-order or arrange rows
# mutate() : create new columns
# summarise() :  summarise values
# group_by() : allows for group operations in the "split-apply-combine"

#1] select() : select columns
names(test)
# select(name of dataset/xlsx/csv file, column1 , column2 , column 3 , ...., column n)
sleepData <- select(test, name, age,notes)
sleepData
# To select all columns except any particular excluded column,
# Use "-" (minus/subtraction) operator (i.e negative indexing)
test_without_age <- select(test, -age)
print(test_without_age)
View(test_without_age)

# Fetching columns from test by order of columns to be printed
names(test)
head(select(test,country:is_active)) # prints the first 6 columns of the test of the mentioned series columns only

# To all the columns that start with the character string starts with character string "".
# Here we have to use the function named start_with()
head(select(test, starts_with("sco"))) # it is obviously score
# taking another example
head(select(test, starts_with("i"))) # it is obviously 'id' and 'is_active' from the test.
# Likewise we have the following
# ends_with() : select columns that end with a character string.
# contains() : select columns that contain a character string.
# matches() : select columns that match a regular expression.
# one_of() : select columns names that are from a group of names.

# selecting rows using filter()
# filter the rows for people that has score more than 80
names(test)
filter(test, score > 80 )

# filter the rows for people that has score more than 80 and has age below 30
filter(test, score > 80 , age < 30)

# filter the rows for people that are in Segment A and C
filter(test, segment %in% c("A","C"))






# ⚠️Pipe Operator : %>%
# dplyr imports this operator from another package ( magrittr mentioned above)
# This operator allows you to pipe the output from one function to another function.
# Instead of nesting functions(reading from the inside to the outside).
# Idea of piping is to read the functions from left to right.

# installing magrittr package
install.packages("magrittr")
library("magrittr")


select(test, name, score)

head(select(test, name, score))

test %>% select(name,score) %>% head
test %>% head  %>% select(name,score)  #It will give us the same output as the above
# ✅ We will apply this function on the dataframe(test) 
head  %>% select(name,score) %>% test # NOT-VALID
# ❌ We will not apply this dataframe on the function.





# Arrange function
# Arrange or reorder rows using arrange()
# To arrange rows by a particular column such as the ascending order of the name within the dataframe test.

test %>% arrange(name) %>% head

# Now we will select 3 columns from the test, arrange the name in ascendign order (alphabetically) and then arrange the rows by score.
# Finally show the head of the final dataframe.

test %>% 
  select(name,score) %>%
  arrange(name,score) %>% head


 



