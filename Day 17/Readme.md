# Day 17: Dplyr Additional Functions Mutate and Group By

## 

## 📝 Overview

Today’s learning continued deepening our understanding of the **dplyr** package, with a strong focus on two essential functions for data transformation and organization: **mutate()** and **group\_by()**. These tools enable the creation of new derived variables and the grouping of data for more meaningful, category based analysis.

## 

## 🛠️ Dplyr Verbs

The dplyr package offers a consistent set of verbs that make data wrangling intuitive and efficient.

### 

### ➕ The mutate() Function

1. **Definition**  
   mutate() adds new columns to a data frame while keeping all existing columns intact.
2. **Logic**  
   It performs **row-wise** calculations ,the new columns are usually the result of applying functions or arithmetic to one or more existing variables.
3. **Implementation**  
   A common pattern is to create derived metrics, such as remaining years to a fixed age:  
   test %>% mutate(*new\_column\_name = it's conditional expression with other variables/columns*) 
   This adds a new column `age_expectancy` without modifying the original data.
  
5.  **Persistence**  
   To keep the new column permanently, assign the result back to the data frame:  
   test <- test %>% mutate(*new\_column\_name = it's conditional expression with other variables/columns*)

### 

### 🗂️ The group\_by() Function

1. **Definition**  
   group\_by() groups the data by one or more variables, setting the stage for group-level operations.
2. **Logic**  
   After grouping, most dplyr verbs (especially summarise(), but also mutate(), filter(), etc.) will operate **within each group** rather than across the entire dataset.  
   The data still looks the same when viewed, but dplyr remembers the grouping structure internally.
3. **Implementation**  
   grouped\_test <- group\_by(*framename, name\_of\_column*)  
   This prepares the data so that subsequent operations (like summarizing averages or counts) are calculated separately for each unique value of name.

## 

## 🎷 Piping Integration

* The **pipe operator (%>%)** truly shines when combining multiple dplyr steps into a clear, readable workflow.
* **Streamlined Example** : This chain selects only the name and age columns and immediately shows the last few rows.

## 

## 💡 Key Takeaways

* Detailed syntax and practical examples for using mutate() to create derived columns and group\_by() to organize data for grouped analysis are provided directly within the source code files in the same folder.
* **mutate()** is the go-to function for **feature engineering** that is creating new variables through logical, mathematical, or conditional transformations of existing ones.
* **group\_by()** lays the groundwork for **aggregate analysis** it simply enables future calculations  to be performed separately within meaningful categories.





### **⚠️ Essential Setup**

To run the code successfully, make sure the following packages are installed and loaded:

* **xlsx** - for reading/writing Excel files
* **dplyr** - core package for select(), filter(), mutate(), group\_by(), etc.
* **magrittr** - provides the forward pipe operator %>%

### 

### **⚠️ Encoding Note**

When creating or editing CSV or Excel files outside R , always save them with **UTF-8 encoding** to prevent character misreading or garbled text when importing into R.

