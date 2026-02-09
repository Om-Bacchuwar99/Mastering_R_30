# Day 19: Mastering Data Manipulation with dplyr

## 📝 Overview

Today’s session was a comprehensive deep dive into the **dplyr** package, applying it practically to a large-scale **Employee_Data.xlsx** dataset containing 1,000 records. The main goal was to master complex, real-world data workflows by combining multiple dplyr verbs — such as `slice()`, `rename()`, and `summarise()` along with the **Pipe Operator `(%>%)`** to build sophisticated, readable, and efficient analysis pipelines.

## 🛠️ New dplyr Verbs and Techniques

Building on previous days, several powerful new functions were introduced to refine how we select, rename, and summarize data.

### 🔪 Slice() and it's variations

These functions let you select rows based on their **integer position** (rather than logical conditions), making them perfect for sampling, extracting extremes, or quick previews.

- **slice()** — retrieves rows by exact index positions.  
  Example: `slice(new_emp_data, 102, 456, 963)`  

- **slice_tail()** — quickly grabs the last rows of the dataset. 
  Example: last 100 records with `slice_tail(n = 100)`  

- **slice_sample()** — extracts a random sample of rows.  
  Example: `slice_sample(n = 50)`  

- **slice_max() / slice_min()** — finds the top or bottom rows based on a variable.  
  Example: Top 5 employees with highest Annual Salary using `slice_max(Annual_Salary, n = 5)`  


### 🏷️ The rename() Function

**Purpose**  
Changes column names for better readability, consistency, or standardization without tampering the underlying data.

**Syntax**  
`rename(dataset, New_Name = Old_Name)`

**Example**  
Renaming `EEID` → `Employee_ID` and `Full.Name` → `Employee_Name` for clearer analysis.


### 📊 Aggregation with summarise()

**Logic**  
`summarise()` (or `summarize()`) reduces rows to a single summary statistic — most powerful when combined with `group_by()` to compute group-level metrics.

**n() function**  
Used inside `summarise()` to count the number of observations in each group.

**Example**  
Calculating average age and headcount by Gender or by Country:  
`emp_data %>% group_by(Gender) %>% summarise(Avg_Age = mean(Age), Headcount = n())`


## ⚓ Advanced Piping Workflows

Today emphasized that **order matters** in a pipe chain to follow a logical sequence:

1. **Filter / Select** — narrow down the data early  
2. **Arrange** — sort the subset  
3. **Mutate** — create new calculated columns   
5. **Slice / View / Head** — finalize and inspect the result  

**Correct Order with Example**  
```r
emp_data %>%
  filter(...) %>%
  arrange(desc(Annual_Salary)) %>%
  mutate(Total_Compensation = Annual_Salary + Bonus) %>%
  slice_max(Total_Compensation, n = 10) %>%
  View()

```
## 💡 Key Takeaways

Extensive practice with renaming columns, slicing top/bottom performers, calculating bonuses and total compensation, and grouping by ethnicity, country, gender, etc. is documented directly within the source code files in the same folder.

**Feature Engineering** with `mutate()` (e.g., total compensation, bonus percentages) adds significant value to raw datasets.

**slice()** family functions are much more efficient and readable than manual indexing `[c(...), ]` when working with large datasets like this 1,000-row employee file.

**Piping** keeps complex operations clean, readable, and easy to debug. In simple words it is step-by-step: narrow → transform → summarize → inspect.

>[!IMPORTANT]  
>**📦 Essential Setup**  
>To ensure the code runs successfully, install and load these packages:
>- **xlsx** — for reading the `Employee_Data.xlsx` file  
>- **dplyr** — for all core data manipulation verbs (`select`, `filter`, `mutate`, `group_by`, `summarise`, `slice`, `rename`, etc.)  
>- **magrittr** — enables the forward pipe operator (`%>%`).
>- The Dataset of the Employee has attached by the name [Employee_Data.xlsx](./Employee_Data.xlsx) in same folder.


>[!WARNING]  
>Always save your data files (CSV, Excel, etc.) with **UTF-8 encoding** to prevent character errors or garbled text when importing into R.
