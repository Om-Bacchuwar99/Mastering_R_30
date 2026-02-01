# Day 11: 2D Data Structures - Matrices



## 📝 Overview

Today’s learning shifted from multi-dimensional arrays to **Matrices**. A matrix is a strictly 2-dimensional data structure in R where data is arranged in rows and columns. While arrays can have multiple layers, a matrix is limited to exactly two dimensions and must contain elements of the **same data type**.





## 🏗️ Matrix Fundamentals

Matrices are created using the `matrix()` function. The arrangement of data can be controlled to fill either row-wise or column-wise.



## 🛠️ Creating Matrices

1. **The matrix() Function**  
   Takes a data vector and organizes it into the specified number of rows and columns. 
2. **nrow \& ncol**  
   Parameters used to define the number of rows and columns.
3. **byrow Parameter**
   If `FALSE` (default): Elements are filled **column by column**.
   If `TRUE`: Elements are filled **row by row**.
4. **Recycling**  
   Like arrays, if the data vector is shorter than the total number of elements required, R automatically repeats (recycles) the values to fill the matrix.





## 🏷️ Naming Dimensions

* You can assign names to rows and columns using the `dimnames` parameter, which accepts a list containing two character vectors — one for row names and one for column names.  
  





## 🔍 Accessing and Modifying Matrices



### 🎯 Indexing \& Access

Accessing elements follows the `\[row, column]` format:

1. **Specific Element**  
   Access a single value at a given row and column position.  
   
2. **Full Row**  
   Retrieve all elements from a specific row.  
   
3. **Full Column**  
   Retrieve all elements from a specific column.  




### ✏️ Modification



1. **Direct Assignment**  
   Change the value at a specific position (e.g., `matrix\[1, 2] <- 10`).  
   
2. **Conditional Modification**  
   Use logical conditions to replace values across the matrix (e.g., replace all 9s with 1, or all values below 7 with 1).  
   



## ⚙️ Matrix Operations



### ➕ Adding Rows and Columns

1. **rbind()**  
   Combines a matrix with a new row. The new row must have the same number of columns as the existing matrix.  
   
2. **cbind()**  
   Combines a matrix with a new column. The new column must have the same number of rows as the existing matrix.  
   

### 

### 🔄 Transpose

* **t():** The transpose function flips the matrix — turns rows into columns and columns into rows.  
  

### 

### 🔢 Arithmetic Operations

* If two matrices have the **same dimensions**, you can perform **element-wise** addition, subtraction, multiplication, and division.  
  



## 💡 Key Takeaways

* Detailed syntax and examples for creating, naming, accessing, modifying, and performing operations on matrices are provided directly within the source code files in the same folder.
* Always remember the indexing order: **\[Row, Column]**.
* By default, R fills matrices **column-wise** unless `byrow = TRUE` is explicitly set.
* Matrices are **atomic** structures — they can only store elements of a single data type (e.g., all numeric, all character, etc.).
