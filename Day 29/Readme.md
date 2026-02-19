# Day 29: Advanced ggplot2 Functions & Final Project Prep

## 📝 Overview

Today’s session focused on **advanced ggplot2 features** and preparation for the final capstone project. Key topics included:

- Fetching real-world data directly into R using the **World Development Indicators (WDI)** package  
- Handling large numerical scales on axes for better readability  
- Automating plot generation with custom functions  
- Saving both data and visualizations to disk for reporting  

These skills are essential for working with live, external datasets and building scalable, reproducible visualizations.

## 🌐 Fetching Real-World Data (WDI)

Instead of relying solely on built-in datasets, the session introduced pulling live economic and demographic indicators from the World Bank.

**WDI() Function**  
Fetches structured data using specific indicator codes and country/time filters.

**Indicators Used**

- Total Population  
- Current GDP  

**Application**  
Pulled data for Ireland from 2014 to 2025 to analyze national growth trends (population and GDP over time).

Examples of fetching and filtering real-world data are provided in the code file in the same folder.

## 📊 Refining Visuals with ggplot2

Large numbers (millions for population, billions for GDP) often appear in scientific notation by default — making plots hard to read.

**Formatting Scales**  
Use built-in formatting functions to display numbers with commas (e.g., 5,000,000 instead of 5e+06).

**Categorical Time Axes**  
Convert numeric years to factors on the x-axis so each year is treated as a distinct category (prevents unwanted interpolation or gaps).

Examples of improving axis readability and handling time as categories are provided in the code file in the same folder.

**Automating with Custom Functions**  
To avoid repetitive plotting code, create reusable custom functions that accept data, column names, titles, and labels as inputs.

This approach allows generating consistent charts (e.g., for Population, GDP, Life Expectancy, Unemployment) with a single function call — ideal for large projects or multiple countries.

Examples of building and using custom plotting functions are provided in the code file in the same folder.

## 💾 Data Persistence & Exporting

**Exporting Data**  
Save processed or summarized datasets to CSV for use in reports, dashboards, or sharing with others.

**Exporting Visualizations**  
Use the standard ggplot2 saving function to export high-quality images in various formats (PNG, PDF, etc.).

**Key Options**

- File name and path  
- Width and height (in inches)  
- DPI for print-quality resolution  

Examples of exporting data frames and ggplot objects are provided in the code file in the same folder.

## 💡 Key Takeaways

The source code demonstrates a complete end-to-end workflow: fetching live data, cleaning/preparing it, automating visualizations, and exporting both data and plots.

Always format large numbers with commas or currency symbols when presenting to non-technical audiences — it dramatically improves readability.

Custom plotting functions make code cleaner, more maintainable, and reusable — especially valuable for capstone projects or multi-variable/multi-country analyses.

Combining real-time data fetching with automated, high-quality plotting prepares you for professional-grade reporting and final project deliverables.

[!IMPORTANT]  
**📦 Essential Setup**  
To run the session successfully, install and load these packages:

- **WDI** — for fetching World Bank indicators  
- **ggplot2** — for advanced layered plotting  
- **scales** — for comma, dollar, and other axis label formatting  

**⚠️ Encoding Note**  
When saving plots or data files, ensure your working directory is set correctly (using `setwd()` if needed) and that file paths use **UTF-8 encoding** compatible characters to avoid issues with special characters in titles, labels, or file names.
