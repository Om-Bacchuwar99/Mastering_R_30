# Day 12: Data Structures - Data Frames



## 📝 Overview

Today’s learning focused on **Data Frames**, which are the most common and powerful data structure used for storing tabular datasets in R. Unlike matrices or arrays, data frames are two-dimensional, table-like structures where **each column can contain a different data type** (numeric, character, logical, factor, etc.), making them ideal for real-world, heterogeneous data.

## 

## 🏗️ Data Frame Fundamentals

A data frame is essentially a special type of list where every component (column) has the **same length**, but each column can hold a different type of data.

## 

## 🛠️ Creating Data Frames

1. **The data.frame() Function**  
   Used to combine multiple vectors of equal length into a single table-like structure.  
   
2. **Column Rules**  
   Every column must have a **unique, non-empty name**.
   
3. **stringsAsFactors**  
   A parameter often set to `FALSE` to prevent character strings from being automatically converted into categorical factor variables (especially important in older R versions).
   
4. **str() Function**  
   A very useful function that displays the internal structure of the data frame — showing column names, data types, and the first few values of each column.  
   



## 🔍 Accessing \& Extracting Data

R provides several intuitive ways to navigate and pull out information from a data frame.

### 

### 🎯 Extraction Methods

1. **The $ Operator**  
   Extracts a single column by its name (e.g., `employee.data$employee\_name`).  
   
2. **Square Brackets \[row, column]**<br>
   	**Specific Row** — retrieve the entire row<br>
   	**Specific Column** — retrieve the entire column<br>
   	**Single Value** — access one specific element at the intersection of a row and column  <br>
   
3. **Multiple Specific Values**  
   Use vectors inside the brackets to select specific rows and/or columns (e.g., select rows 2 and 4, and columns 1 and 3).  
   



## 🔨 Modifying the Data Frame

Data frames are flexible and dynamic — you can easily add or remove rows and columns.

### 

### ➕ Adding Data

1. **Adding a Row**  
   Use `rbind()`. Because rows can contain mixed data types, the new row should be passed as a **list** rather than a vector.  
   
2. **Adding a Column**  
   Use `cbind()` or simply assign a new vector to a new column name (e.g., `employee.data$new\_col <- values`).  
   

### 

### ➖ Deleting Data

1. **Delete a Row**  
   Use negative indexing (e.g., `employee.data\[-3, ]` removes the 3rd row).  
   
2. **Delete a Column**  
   Assign `NULL` to the column name (e.g., `employee.data$salary <- NULL`).  
   

## 

## 📊 Data Analysis Tools

**summary()**  
A built-in function that provides a quick statistical overview of each column — showing min, max, mean, median, quartiles for numeric columns, and frequency counts for categorical ones.  


## 

## 💡 Key Takeaways

* Detailed syntax and examples for creating, accessing, extracting, modifying, and summarizing data frames are provided directly within the source code files in the same folder.
* Data frames are **heterogeneous** — unlike matrices, they happily allow different data types in different columns.
* When using square bracket indexing with multiple selections, the order of the indices determines how rows and columns are paired.
* After adding or removing rows/columns, it’s good practice to check the structure with `str()` to confirm everything remains consistent and correctly typed.
