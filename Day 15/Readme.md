# Day 15: Data Importing and Advanced Data Frame Operations

## 

## 📝 Overview

Today’s learning focused on the practical side of R for real-world data analysis  mainly **importing CSV files**. While manually creating small data frames is useful for learning, most actual data lives in external files. We covered setting working directories, reading and writing CSV files, and performing more advanced manipulation and exploration on imported datasets.

## 

## 📂 Working Directory and File Paths

Before importing any data, R needs to know where your files are located.

1. **getwd()**  
   Returns the current working directory path the folder R is currently looking in for files.
   
2. **setwd()**  
   Changes the current working directory to the folder you specify.  
   
3. **File Paths**  
   If your file is **not** in the current working directory, you must provide the full absolute path when reading the file.

## 

## 📥 Importing and Exporting Data



### 📖 Reading CSV Files

1. **read.csv()**  
   The most commonly used function to import comma-separated values files directly into a data frame.
2. **read.table()**  
   A more general and flexible function  you can manually specify the separator (`sep = ","`), whether there is a header row, etc.
3. **View()**  
   Opens an interactive spreadsheet-style viewer of your data frame inside RStudio.  
   

### 💾 Writing CSV Files

* **write.csv()**  
  Saves a data frame back to a .csv file on your computer.  
  

>[!CAUTION] 
>#### When creating CSV files manually (e.g., in Excel), always save them with UTF-8 encoding to avoid character encoding issues when reading them into R.**
>#### **Also the CSV('store.csv')  file has been given in the folder check it out!**


## 🔍 Data Exploration and Inspection

Once your data is imported into a data frame (e.g., named 'Store'), use these functions to quickly understand its structure and contents:



|Function|Description|
|-|-|
|str()|Displays the internal structure and data types|
|summary()|Provides statistical summaries (Min, Max, Mean, etc.) of columns|
|dim()|Returns the dimensions (number of rows and columns)|
|names()|Lists all the column names|
|head() / tail()|Shows the first or last 6 rows of the dataset|
|fix()|Opens a manual data editor to change values directly|

## 



## 🛠️ Advanced Data Manipulation



### 🎯 Slicing and Accessing

1. **Row Slicing**  
   Store\[c(1:5), ] : first five rows  
   
2. **Column Slicing**  
   Store\[, c(1:3)] : first three columns
   
3. **Repositioning / Reordering Columns**  
   Pass a custom vector of column indices to reorder them (e.g., move column 14 between 3 and 4).  

### 

### ➕ Feature Engineering

* **The $ Operator**  
  Create new columns by calculating values from existing ones.  
  Taking example ,adding a total score column from multiple score columns.  

### 

### 🧪 Data Filtering (Subsetting)

**subset()**  
Filters rows based on logical conditions.

* Single condition: subset `Store, City == "DUBLIN"`
* Multiple conditions: subset `Store, Dept == "Movies"` & `Total_Score > 250`

### 

### 🔢 Sorting and Ranking (Recall)

* **sort()** : sorts a vector in ascending (default) or descending order
* **order()** : returns the indices that would sort the vector
* **rank()** : assigns ranking numbers to each value



## 

## 💡 Key Takeaways

* Imported CSV files become **data frames**, so you can immediately apply all extraction, modification, and analysis techniques learned earlier.
* The **subset()** function offers a clean and readable way to query your data using logical conditions.
* Always check your **working directory** 'getwd()' before reading files to prevent common "file not found" errors.
