# Day 20: Mid-Course Project - Data Cleaning & Transformation

## 📝 Overview

Today marked the first **Mid-Course Project**, focusing on practical **data cleaning** and **preparation**. We used the built-in **starwars** dataset (from the dplyr package) to transform raw, "messy" data containing missing values, inconsistent formatting, and incomplete records  into a structured, analysis-ready format. This project integrated about `dplyr`, `magrittr` , and data frame manipulation.

## 🛠️ Data Inspection and Cleaning Techniques

Cleaning data is the most critical (and often time-consuming) step in any data science workflow. Today's practice centered on detecting, handling, and intelligently imputing **NA** (missing) values.

### 🔍 Handling Missing Values

- **is.na()** : It  detects missing (NA) values in a vector, column, or entire data frame.  
- **!is.na()** : It is the logical negation; used to keep only rows with valid ( that is non-missing) data.  

**Filtering Rows**  
Remove rows with missing values in key columns to avoid skewing calculations:  
`filter(!is.na(variable))`  


### 🧠 Conditional Logic with ifelse()

**Syntax**  
`ifelse(condition, value_if_true, value_if_false)`

**Application**  
Used to intelligently fill or replace missing values:

- Replace missing `species` with `"Unknown"`.  
- Fill missing `birth_year` with `0`.


### 🔠 String Manipulation and Transformation

- **paste()** : concatenates strings with a space separator by default.  
- **paste0()** : concatenates strings with **no separator** (very useful for IDs).  

**Project Use**  
Create a unique identifier by combining a prefix with row numbers:  
`paste0("CHAR_", row_number())` → produces "CHAR_1", "CHAR_2", etc.

- **as.factor()** : It converts character columns (e.g., `species`) into categorical **factors**.  
  This optimizes storage and prepares the data for statistical modeling or grouping.


## 🚀 The Cleaning Workflow

The final "Cleaned Data" pipeline followed this logical sequence:

1. **Filter** : remove rows missing `height` or `mass`.  
2. **Impute** : replace missing `species` with `"Unknown"`.  
3. **Categorize** : convert `species` column to a factor. 
4. **Identify** : generate a new `unique_id` column using `paste0()` + `row_number()`.  
5. **Select** : reorder and keep only the most relevant columns for the final cleaned dataset.  


The cleaned result was exported as **cleaned_starwars_data.csv**.

## 💡 Key Takeaways

The full transition from the raw **starwars** dataset to a refined, analysis-ready version.

**Data Integrity**: Using `!is.na()` in `filter()` gives precise control over which rows are removed.

**Identifier Creation** : Mastering `row_number()` + `paste0()` is essential when raw data lacks a primary key or unique identifier.

**Imputation Strategy** : Thoughtful use of `ifelse()` prevents loss of information while maintaining meaningful defaults.

**Piping**  chaining operations with `%>%` makes the entire cleaning process transparent, reproducible, and easy to modify.

>[!IMPORTANT]  
>**📦 Essential Setup**  
>To run the project successfully, install and load these packages:
>- **dplyr** : For `filter()`, `mutate()`, `select()`, `row_number()`, etc.  
>- **magrittr** : Provides the forward pipe operator (`%>%`).  
>- **xlsx** if exporting to Excel; otherwise use `write.csv()` for CSV output.  

>[!NOTE]
>**⚠️ Encoding Note**  
>When exporting cleaned data with `write.csv()` (or `write.xlsx()`), ensure your R environment uses **UTF-8 encoding** to preserve special characters correctly.
