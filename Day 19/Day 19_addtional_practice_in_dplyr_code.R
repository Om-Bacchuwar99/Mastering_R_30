# WORKING OUT WITH dplyr PACKAGE IN R PROGRAMMING LANGUAGE

install.packages("xlsx")
library("xlsx")
library("dplyr")
library("magrittr")
getwd()
setwd("D:\\CODE\\R\\Mastering_R_30\\Day 19")
getwd()

emp_data <- read.xlsx("Employee_Data.xlsx",sheetIndex = 1)
print(emp_data)

names(emp_data) # Names of the column
dim(emp_data) # 1000  14
summary(emp_data)

# Creating another table using emp_data only for name and salary.
name_salary_table <- select(emp_data, Full.Name, Annual.Salary)
View(name_salary_table)

View(head(name_salary_table))
# using pipe
name_salary_table %>% View %>% head %>% select(Full.Name)


# Printing the employee between the age range 30 and 32 and country o residence is China. 
names(emp_data)
View(filter(emp_data, Age > 30, Age < 32, Country == "United States"))
#using pipe but now for China
emp_data %>% View %>% filter(Age > 30, Age < 32,Country == "China")


# Arranging order of names of the above condition (give the head of that data)
arrange(emp_data,Full.Name) #ingeneral for allz
variable <- filter(emp_data,Age > 30,Age < 32, Country == "United States") 
variable <- arrange(emp_data,Full.Name)
View(variable)
View(head(variable))
head_of_variable <- head(variable)

# Using pipe
emp_data %>% View %>% head %>% arrange(Full.Name) %>% filter(Age > 30, Age < 32, Country == "China")  %>% select(Full.Name)
# The code above will not give the appropritate result that we desire it should be followed in order.
emp_data %>% filter(Age > 30, Age < 32, Country == "China") %>% arrange(Full.Name) %>% head %>% View
# 1) It will filter according to the provided condition.
# 2) It will arrange only Names according to order.
# 3) It will select only 6 rows of that arranged dataframe.
# 4) And finally it will View the 6 rows.



# Grouping according to Ethnicity.
# Calculate the Average Age of Male as well as Female
grouped_data <- group_by(emp_data,Gender)
summarize(grouped_data,Avg = mean(Age))
# Let's add the count to spice it up
summarize(grouped_data,Avg = mean(Age),Count = n())
# Using pipe
emp_data %>% group_by(Gender) %>% summarise(Average = mean(Age)) %>% View
emp_data %>% group_by(Gender) %>% summarise(Average = mean(Age),Count = n()) %>% View

# Now if we want to find the find the count of employee works in each country 
grouped_data_countrywise <- group_by(emp_data,Country)
summarise(grouped_data_countrywise, Count =n())
# Using pipe 
emp_data %>% group_by(Country) %>% summarise(Count = n()) %>% View



# Mutating new columns for salary.
# Add new column of Total Bonus and Total Salary
new_emp_data <-mutate(emp_data, Total_Bonus = Annual.Salary * Bonus.., Total_Salary = Annual.Salary + Total_Bonus)
View(head(new_emp_data))

# Using pipe
emp_data %>% mutate(Total_Bonus = Annual.Salary * Bonus.. , Total_Salary = Annual.Salary + Total_Bonus) %>% View



# Renaming some columns
emp_data <- rename(emp_data,Employee_ID = EEID)
View(emp_data)

# Using pipe
new_emp_data <- new_emp_data %>% rename(Employee_ID = EEID,Employee_Name = Full.Name,Total_Annual_Salary = Total_Salary, Bonus_in_percentage = Bonus..)
View(new_emp_data)



# Fetching only first 100 rows of new_emp_data
View(slice(new_emp_data,1:100))
# Fetching specific rows like row number 102 , 456 and 963
View(slice(new_emp_data,102,456,963))

# Using pipe
new_emp_data %>% slice(1:100) %>% View
new_emp_data %>% slice(102,456,963) %>% View


# Fetching last 100 rows of new_emp_data
View(slice_tail(new_emp_data, n=100))

# Taking random 50 rows from new_emp_data
View(slice_sample(emp_data,n=50))

# Fetching the highest bonus in new_emp_data
View(slice_max(new_emp_data,Bonus_in_percentage))
# Fetching the Top 5 people with Highest Annual Salary in new_emp_data
View(slice_max(new_emp_data,Annual.Salary,n=5))

# Fetching the lowest bonus in new_emp_data
View(slice_min(new_emp_data,Bonus_in_percentage))
# Fetching the Top 5 people with Least Annual Salary in new_emp_data
View(slice_min(new_emp_data,Annual.Salary,n=5))
