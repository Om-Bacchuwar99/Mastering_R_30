# Day 18: Connecting R to MySQL Databases

## 

## 📝 Overview

Today’s learning focused on extending R's data importing capabilities to **Relational Databases**. While CSV and Excel files are common for smaller datasets, largescale enterprise data is typically stored in SQL databases. We explored how to establish a secure connection between R and a **MySQL** database, explore database contents, execute SQL queries directly from the R console, and manage result sets efficiently.

## 

## 🔌 Establishing the Connection

To bridge R and MySQL, the **RMySQL** package is required. The process involves defining specific connection parameters to link the R environment to a local or remote MySQL database server.

## 

## 🛠️ Setup and Connection

### **📦 Package Installation**

* **install.packages(*"RMySQL"*)** Which installs the necessary driver and connection tools.  
* **dbConnect()** :  This is the primary function used to open a connection to the database.



**Key Parameters**

* MySQL() the database driver.
* username \& password  your database credentials.
* host which is usually "localhost" for local machines.
* port is default that is 3306.
* dbname is the specific database name you want to access.

## 

## 🔍 Database Exploration

Once the connection is active, several helper functions let you browse the database structure without writing full SQL queries.

* **dbListTables(*con*)** : It  returns a list of all tables in the connected database.
* **dbListFields(*con, "table\_name"*)** : It returns the column names (fields) of a specific table.

### 

### ⚡ Immediate Results

* **dbGetQuery()**  
  Sends a SQL query to the database and returns the result directly as a data frame.

&nbsp;  Example pattern:  
   **dbGetQuery(*con, "SELECT \* FROM details"*)**

### 

### 🏗️ Two-Step Retrieval (Query \& Fetch)

For better memory control (especially with large tables):

1. **dbSendQuery()**  
   Sends the query and returns a result set object.
2. **fetch()**  
   Retrieves rows from the result set.

   * n = -1 → retrieves **all** rows.
   * n = x → retrieves only the first **x** rows.

## 

## 🧹 Maintenance Functions

* **dbClearResult()** — clears the result set from memory to free resources.
* **dbHasCompleted()** — checks whether all rows from a query have been fetched.
* **dbReadTable(*con, "table\_name"*)** — reads an entire table directly into a data frame.
* **dbWriteTable(*con, "new\_table\_name", dataframe*)** — writes an R data frame back to the database as a table.

## 

## 💡 Key Takeaways

* Detailed syntax for establishing connections, exploring databases, running queries, fetching results in chunks, and cleaning up resources is provided directly within the source code files in the same folder.
* R becomes a powerful front-end for SQL we can use standard SELECT statements (and more) to pull exactly the data needed for analysis.
* For very large datasets, the **dbSendQuery() + fetch()** combination is more memory-efficient than dbGetQuery(), as it lets you load data in manageable chunks.

##

## ⚠️IMPORTANT 
### **📦 Essential Setup**  
You must install and load the **RMySQL** package for all database operations to work.

### **🔐 Permissions Alert**  
If you get connection errors, ensure your MySQL user has the necessary privileges. Run this in your MySQL command line / terminal: the whole command which i executed has been attached in the same folder named [cmd_granted_code](./cmd_granted_code.md) .

