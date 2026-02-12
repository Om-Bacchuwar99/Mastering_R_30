# Day 22: Data Visualization - Pie Charts

## 📝 Overview

Today’s learning moved into the essential field of **Data Visualization**. Visualization is a critical technique for identifying hidden patterns and gaining quick insights from data that might be overlooked in raw tables. The focus for today was mastering **Pie Charts**, a circular representation of data where each slice represents the relative proportion of different categories.

## 🥧 Pie Chart Fundamentals

Pie charts in R are primarily created using the built-in `pie()` function from the standard graphics package.

## 🛠️ The pie() Function

Takes a vector of numeric values to determine slice sizes, along with options to customize appearance.

**Key Parameters**

- Values vector : determines the size of each slice  
- Labels : descriptive text for each slice  
- Radius : controls the overall size of the pie  
- Main : pie chart title  
- Colors : color palette for slices  
- Clockwise : the direction of slice drawing (TRUE/FALSE)  


## 🎨 Enhancing Visuals

Standard pie charts become more readable and professional with thoughtful color and legend additions.

**Color Palettes**  
Use automatic generation (like rainbow) or define custom colors manually.

**Custom Colors**  
Specify a vector of color names or hex codes for precise control.


## 📍 Adding a Legend

The `legend()` function identifies what each color represents.

**Key Options**

- Location which might be "bottomright", "topleft", etc.  
- Legend text which matches the categories  
- Fill which matches the colors used in the pie  

## 🧊 3D Pie Charts

For more visually appealing or professional presentations, R supports 3D pie charts through the `plotrix` package.

**pie3D() Function**  
Similar to the standard pie chart but with added depth.

**Key Enhancements**

- Explode parameter for separates slices for emphasis  
- Percentage labels for calculated manually and added to slice labels  

## 💡 Key Takeaways

The source code demonstrates creating basic 2D pie charts, enhancing them with colors and legends, and using the `plotrix` package for 3D visualizations.

The `plotrix` package must be installed and loaded to access 3D pie chart capabilities.

Pie charts work best for **simple comparisons** with a small number of categoriesto maintain readability and avoid visual clutter.

>[!IMPORTANT]  
>📦 Essential Setup  
>To ensure all charts execute successfully, install and load this package:
>- **plotrix** — required specifically for the 3D pie chart function  

>⚠️ Encoding Note
>When preparing data labels or titles in external files (CSV, Excel, etc.), always save them with **UTF-8 encoding** to prevent character display issues in plot titles, legends, or labels.
