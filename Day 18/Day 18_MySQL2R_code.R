# IMPORTING DATA FROM RELATIONAL DATABASE.

# Using RMySQL package

install.packages("RMySQL")
any(grepl("RMySQL",installed.packages())) #Verifying the installation of package.
library(RMySQL)

# Here we have a variable named con which implies the successful connection of MySQL and R.
con <- dbConnect(MySQL(),
                  username = "Om_Bacchuwar99",
                 password = "**********",   #<-------------- Here we have to enter user password not root password.
                 host = "localhost",
                 port = 3306,
                 dbname = "Om_DB1"
) 

# dbListTables(variable) : It will retrieve all the tables present in the Database.
dbListTables(con) 

# dbListFields(variable,"specific_tablename_to_be_accessed") : This function will return all the attributes of the table.
dbListFields(con,"details")

# dbGetQuery() : It sends the queries and fetches results as the data frame. 
result1 <- dbGetQuery(con,"select * from details") 
View(result1)

# dbSendQuery() : It only sends the query and returns an object of class inheriting from "DBIResult",
# this object of class can be used to fetch the required result.
result2 <- dbSendQuery(con,"select * from details")
result2 # It will only return the object of execution <MySQLResult:12,0,3>.



# fetch() : It returns few or all rows that were asked in query. The output of fetch function is a list.
# In simple words we can retrieve whole table.

whole_table <- fetch(result2,n =-1) # Here n indicates the number of rows to be retrieved.
# Here particulary n's value is  -1 which implies retrieval of all rows. 
View(whole_table)


# This block of  code below will work only if we will redefine the object value of result2 then execute the following then it will successfully execute.
half_table <- fetch(result2, n =12)
# Now according to value it will retrieve only 12 rows.
View(half_table)

# dbClearResult() : It removes the result from cache memory.
dbClearResult(result2)

# dbHasCompleted() : It is used to check whether all rows are retrieved or not.
dbHasCompleted(result2)

# dbReadtTable() and dbWriteTable() functions are used to read and write the tables in Database from an R data frame.
dbReadTable()
dbWriteTable()


