# Day 10: Multi-dimensional Data - Arrays





## 📝 Overview

Today’s learning focused on **Arrays**, which are data objects in R that allow storing data in more than two dimensions. Unlike vectors (1D) or matrices (2D), arrays can handle complex, multi-layered data structures by using a `dim` parameter to define rows, columns, and the number of matrices (or layers).

## 

## 🏗️ Array Fundamentals

An array is created using the `array()` function, which typically takes vectors as input and organizes them into a specified dimensional structure.

## 

## 🛠️ Creating Arrays

1. **The dim Parameter**  
   This defines the shape of your array.  
   
2. **Data Filling**  
   If the input vector is shorter than the total number of elements required by the array, R will repeat (recycle) the vector values until the array is completely filled.
   
3. **Syntax**  
   The general form is: `array\_name <- array(data\_vector, dim = c(rows, columns, matrices))`  
   

## 🏷️ Naming Dimensions (dimnames)

You can provide meaningful names to the rows, columns, and individual matrices (layers) within an array using a list.

**Implementation**  
Define character vectors for row names, column names, and matrix/layer names, then pass them to the `dimnames` argument as a list.  


## 

## 🔍 Accessing \& Manipulating Arrays

Accessing elements in an array requires keeping the order of dimensions in mind: `\[row, column, matrix]`.

### 

### 🎯 Indexing Methods

1. **Specific Element**  
   Retrieve a single value by specifying its row, column, and matrix position.  
   
2. **Whole Row**  
   Extract an entire row from a specific matrix/layer.  
   
3. **Whole Column**  
   Extract an entire column from a specific matrix/layer.  
   

## ➕ Arithmetic Operations

You can perform standard calculations between two arrays if they have the **same dimensions**:

Addition (+), Subtraction (-), Multiplication (\*), and Division (/) are performed **element-wise** across corresponding positions in all matrices/layers.  


## 

## 🚦 Summary Table: Dimension Structure

|Position|Description|Example dim = c(4, 3, 5)|
|-|-|-|
|1st|Number of Rows|4 Rows|
|2nd|Number of Columns|3 Columns|
|3rd|Number of Matrices (Layers)|5 Matrices|

## 

## 💡 Key Takeaways

* Detailed syntax and examples for creating, naming, accessing, and performing operations on multi-dimensional arrays are provided directly within the source code files in the same folder.
* Always remember the dimensional order: **Rows first, then Columns, then Matrix layers**.
* R automatically recycles (reuses) data from your input vectors to fill the specified array dimensions if needed.
* Arrays allow you to perform bulk mathematical operations across entire data layers simultaneously in an element-wise manner.
