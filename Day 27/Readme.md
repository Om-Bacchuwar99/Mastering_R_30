# Day 27: Data Visualization - Boxplots

## 📝 Overview

Today’s session focused on **Boxplots** (also known as Box-and-Whisker plots), a crucial tool in **Exploratory Data Analysis (EDA)**[*which i have also used in [Mongo-Market-Analyzer](https://github.com/Om-Bacchuwar99/Mongo-Market-Analyzer)*]. Boxplots provide a compact visual summary of a numerical dataset’s distribution, including:

- Central tendency (median)  
- Spread (within interquartile range)  
- Skewness  
- Presence of outliers  

Instead of showing every data point, a boxplot condenses the data into a **five-number summary** plus any extreme values.

## 📦 Understanding the Five-Number Summary

A boxplot displays five key statistical points:

- **Minimum** :- the lowest data point (excluding outliers)  
- **First Quartile (Q1)** :- the 25th percentile  
- **Median (Q2)** :- the middle value (50th percentile)  
- **Third Quartile (Q3)** :- the 75th percentile  
- **Maximum** :- the highest data point (excluding outliers)  

## 🛠️ Boxplot Fundamentals

In R, boxplots are created using the built-in `boxplot()` function from the standard graphics package. It works with single variables or grouped data.

**Key Parameters**

- Data : It is a numeric vector or formula for grouped plots.
- Main title : It is whole chart title.
- Axis labels : Descriptive text for x and y axes.
- Colors : It fills color for the box and border color.
- Orientation : vertical (by default) otherwise horizontal.
- Notches : optional confidence intervals around the median.


## 🧪 Advanced Boxplot Techniques

**Grouped Boxplots**
Use a formula (numeric variable ~ categorical variable) to compare distributions across groups.

**Notches**
Setting notches to true adds a "waist" around the median, as it suggests a statistically meaningful difference in medians.



## 💡 Key Takeaways

Boxplots are the **most effective way** to visually detect **outliers**.

The formula syntax (y ~ x) makes it very easy to see how a numeric variable changes across different categories.


>[!IMPORTANT]  
>No external packages are required for `boxplot()` function.
