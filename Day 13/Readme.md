# Day 13: Data Categorization - Factors



## 

## 📝 Overview

Today’s learning focused on **Factors**, a specialized data structure in R designed to handle **categorical data**. Factors are essential for statistical modeling and data analysis because they store data as a collection of predefined categories called **"Levels"**.

## 

## 🗃️ Understanding Categorical Variables

Before diving into R syntax, it is important to understand the types of data factors are designed to represent. A categorical (or discrete) variable is one that has two or more categories.



1. **Nominal**  
   A variable with no intrinsic ordering to its categories.  
   Example: Gender (Male 🚹 and Female 🚺) — neither category is "higher" or "lower" than the other.
2. **Ordinal**  
   A variable that has a clear, logical ordering.  
   Example: Temperature (Low 📉, Medium, High 📈) — there is a specific rank or sequence to these values.

## 

## 🏗️ Factor Fundamentals

* In R, a **Factor** is used to store these categorical variables. It can handle both character and integer data types.



**What is a Factor?**

* Factors are created using the `factor()` function, taking a vector as input. ***(⚠️ super\_important)*** 
* **Levels**: These are the predefined set of unique values allowed in the factor. By default, R sorts levels in alphabetical order.  
* **Internal Storage**: Factors store unique integers internally and associate them with labels, making them memory-efficient for large datasets.

## 

## 📜 Attributes of a Factor

1. **x**  
   The input vector to be transformed.
2. **levels**  
   An input vector representing the set of unique values taken by x.
3. **labels**  
   A character vector that corresponds to the names of the levels.
4. **exclude**  
   Used to specify specific values that should be removed or ignored.
5. **ordered**  
   A logical attribute (`TRUE`/`FALSE`) that determines if the levels have a specific order (important for ordinal data).
6. **nmax**  
   Specifies the upper bound for the maximum number of levels.



## 

## 🔍 Accessing and Modifying Factors

Factors support indexing similar to vectors but are strictly governed by their predefined levels.

### 

### 🎯 Indexing \& Access

1. **Single Element**  
   data\[x] retrieves the element at the **xth position**.
2. **Multiple Elements**  
   data\[c(x, y)] retrieves specific **multiple elements**.
3. **Negative Indexing**  
   data\[-x] retrieves everything except the **xth position**.

### 

### ✏️ Modification

1. **Direct Assignment**  
   You can change an element by index: data\[x] <- "*any\_text*".
2. **Constraint**  
   You can only assign values that already exist in the predefined levels. Attempting to add a new category not present in the levels will result in an error or **<NA>**.

## 

## ⚙️ Generating Factor Labels (gl)

The `gl()` function is a powerful tool for generating factors with a specific repetitive pattern.

**Parameters for gl(n, k, labels)**

1. **n**  
   The number of different levels (labels) to be produced.
2. **k**  
   The number of times each level should be replicated.
3. **labels**  
   A vector defining the names of the levels.

## 

## 💡 Key Takeaways

* Detailed syntax and code examples for creating, modifying, and working with factors are provided directly within the source code files in the same folder.
* Using **factors** instead of plain character strings is best practice for any data that represents groups, categories, or ranks; it improves memory usage and enables proper statistical treatment.
* Factors enforce **data integrity** by restricting values to only those matching the established levels, helping prevent **dirty data**.
* Use is.factor() to check if an object is a factor and as.factor() to convert existing data (that is character vectors) into factors.
