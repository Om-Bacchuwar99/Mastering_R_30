# Day 16: Advanced Data Manipulation with dplyr

## 

## 📝 Overview

Today’s learning focused on expanding data handling capabilities by moving beyond basic CSVs to **Excel files** and introducing the powerful **dplyr** package for data manipulation. A major highlight was mastering the **Pipe Operator (%>%)**, which transforms how we write and read R code even making it more linear, intuitive, and easier to follow.

## 

## 𝄜 Working with Excel Files

* R does not natively read Excel files (.xlsx / .xls), so external packages are required. In this session, we used the **xlsx** package.



### 

### **📦 Installation \& Verification**

* install.packages("xlsx") :— downloads and installs the package.
* any(grepl("xlsx", installed.packages())) :— logical check to confirm the package is successfully installed.



### **📖 Reading Excel Files**

* read.xlsx("filename.xlsx", sheetIndex = 1) :— reads data from a specific sheet (by index or name) in an Excel workbook.





### **📊 Inspection**  

* After importing, standard functions like names(), dim(), and summary() are used to quickly explore the structure and contents of the data.

## 

## 🛠️ The dplyr Package

The **dplyr** package is often called the "grammar of data manipulation." It provides a consistent set of intuitive **verbs** (functions) to handle the most common data tasks efficiently.

|Function|Action|
|-|-|
|select()|Picks variables (columns) based on their names|
|filter()|Picks cases (rows) based on their values/conditions|
|arrange()|Changes the ordering of the rows|
|mutate()|Adds new variables that are functions of existing ones|

### 



### 🎯 Filtering Logic

1. **Multiple Conditions**  
   filter(dataset, score > 80, age < 30) — applies several criteria at once (all must be true).
   
2. **The %in% Operator**  
   Used to match values against a list:  
   filter(test, segment %in% c("A", "C")) :- keeps rows where segment is either "A" or "C".



### 

### ⚓ The Pipe Operator (%>%)

1. Imported from the **magrittr** package (and loaded automatically with dplyr), the pipe operator dramatically improves code readability.
   
2. **The Problem with nested functions**  
   Traditional code reads from the inside out and can become hard to follow:  
   head(select(test, name, score))
   
3. **The Solution with piping**  
   Code reads naturally from left to right — the data "flows" through each step:  
   test %>% select(name, score) %>% head()
   
4. **Piping Rule of Thumb**  
   Always start the pipe chain with the **data frame** (not a function). The output of each step automatically becomes the first argument of the next function.

## 

## 💡 Key Takeaways

* Detailed steps also including installing packages, reading employee data from Excel, applying dplyr verbs, and building piped workflows  are provided directly within the source code files in the same folder.
* The **pipe operator (%>%)** makes complex data manipulation steps much easier to write, read, and debug.
* **dplyr** functions like filter() are often more readable and expressive than base R subsetting, especially for multiple or complex conditions.




