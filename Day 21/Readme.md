# Day 21: Mid-Course Project - Advanced Analysis & Logic

## 📝 Overview

Building on the data cleaning foundation from Day 20, today’s session focused on **Data Analysis** and **Advanced Logic**. Using the cleaned **starwars** dataset, the goal was to extract meaningful insights by:

- Calculating new derived metrics.  
- Classifying data into logical categories using advanced conditional logic.  
- Generating grouped summary statistics to reveal patterns across character groups.  

>▶️This project demonstrated how to turn cleaned data into actionable, high-level insights.

## 🧠 Advanced Conditional Logic

While `ifelse()` works well for simple binary decisions, real-world analysis often requires handling **multiple conditions** cleanly.

### 🚀 The case_when() Function

**Definition**  
It acts like a "super if-else" or switch statement it evaluates conditions in order and returns the corresponding value for the first true condition.

**Syntax**  
```r
case_when(
  condition1 ~ "Result 1",
  condition2 ~ "Result 2",
  TRUE ~ "Default / Catch-all Result"
)
```
**Applications in the Project**

- **Age Descriptor**  categorized characters into "Kid", "Adult", "Old", or "Older" based on birth year  
- **Height Classifier**  grouped characters into "Tall", "Average", "Dwarf", etc. based on height  



## 📊 Feature Engineering & Summarization

The project created a concise **analysis_summary** table to observe physical trends across character groups.

### 🔢 Calculated Metrics

**BMI Calculation**  
Added a new bmi column using the standard formula (mass divided by height in meters squared). Height was converted from centimeters to meters for the calculation.


### 📉 Grouped Summaries

By combining `group_by()` with `summarise()`, the dataset was reduced into a powerful summary table containing:

- Total number of characters in each group.  
- Average BMI per group (ignoring any remaining missing values).  
- A representative homeworld for the group.  


## ⚓ The Analysis Pipeline

The final workflow showcased the full power of the pipe operator to go from raw rows to a polished statistical report:

1. Calculate BMI. 
2. Apply conditional logic to create height classification.  
3. Group by the new height classes.  
4. Compute count, average BMI, and representative homeworld.  
5. Sort the final summary by average BMI in descending order.  


## 💡 Key Takeaways

`case_when()` is significantly more readable and maintainable than nested `ifelse()` statements when dealing with 3+ categories.

**Grouped summaries** reveal patterns that are impossible to spot in the rows of data.

**Piping** turns complex, multi-step logic into a clear, linear story also making the analysis reproducible and easy to modify.

>[!IMPORTANT]  
>### 📦 Essential Setup  
>To run the analysis successfully, load these packages:
>- **dplyr** : used for mutating, conditional logic, grouping, and summarizing.  
>- **magrittr** : used provides the forward pipe operator. 

>[!NOTE]
>### ⚠️ Encoding Note  
>When reading the cleaned CSV file from Day 20, double-check the file path and confirm it was saved with **UTF-8 encoding** to prevent character misreading or data type issues during analysis.
