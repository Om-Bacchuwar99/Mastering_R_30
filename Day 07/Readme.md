# Day 07: Vectors Fundamentals and Properties





## 📝 Overview

Today’s learning initiated the exploration of Data Structures in R, starting with the most fundamental unit: **Vectors**. Understanding how to store, organize, and access data efficiently is critical for performing complex operations. The study covered the creation of atomic vectors, different vector types, and advanced methods for accessing and manipulating vector components.





## 🏗️ Vector Basics

A **vector** is the most basic data structure in R. It is a sequence of elements that share the same data type.





## 📦 Types of Vectors

In R, vectors are generally classified into two categories:

* **Atomic Vectors:** Contains elements of the same basic data type (**Numeric, Integer, Character, Logical, Complex, or Raw**).
* **Lists:** A special type of vector that can contain elements of different data types.





## 🛠️ Creating Vectors

* **Using `c()`**: The "combine" function is the standard way to create a vector.
* **Using `:`**: Used to create a sequence of numbers (e.g., `1:15`).
* **Using `seq()`**: The sequence function allows for more control.

**Parameters of `seq()`**:

* `by`: Defines the increment gap (e.g., `by = 2` or `by = 0.4`).
* `length.out`: Defines the total number of elements desired, and R calculates the gap automatically.





## 🔍 Properties \& Accessibility

Accessing specific elements (components) within a vector is essential for data manipulation.





### 🎯 Accessing Elements (Indexing)

* **Positive Indexing:** R uses square brackets `[]`. Note: Indexing in R starts from **1**, not 0.
* **Key-Value Pairs:** You can assign names to vector elements (e.g., `"John" = 14`) and access them using the name/key in quotes: `vector["John"]`.
* **Logical Indexing:** Passing a vector of `TRUE` and `FALSE` values of the same length as the target vector. Only the elements corresponding to `TRUE` will be returned.
* **Negative Indexing:** Using a minus sign (e.g., `vector[-2]`) returns every element except the one at that specific index.



### 📊 **Atomic Vector Types**



|Vector Type|Description|Creation Example|
|-|-|-|
|Numeric|Stores decimal numbers (default type).|`c(1.2, 5, 7.8)`|
|Integer|Stores whole numbers only (requires `L` suffix).|`c(1L, 2L, 4L)`|
|Character|Stores strings or text data.|`c("A", "B", "C")`|
|Logical|Stores boolean values (`TRUE`/`FALSE`).|`c(TRUE, FALSE, TRUE)`|
|Complex|Stores numbers with imaginary parts.|`c(1+2i, 3-4i)`|

## 



🔄 Vector Operations

* **Combining Vectors:** Merge multiple vectors into one using the `c()` function: `c(vector1, vector2)`.
* **Repetition:** Indexing allows for repeating elements by calling the same index multiple times: `vector[c(1,1)]`.







## 💡 Key Takeaways

* **Implementation:** Detailed syntax and examples for vector creation, indexing, and sequence generation are provided directly in source code files.
* **Memory Efficiency:** Vectors are the most efficient way to store and process data in R.
* **Naming Rule:** When indexing, you cannot access a character value using its assigned numeric key directly; you must use the character string key.
* **The `length()` Function:** Always useful to determine the number of components inside a vector before performing operations.
