# Day 26: Data Visualization - Scatterplots

## 📝 Overview

Today’s session focused on **Scatterplots**, a powerful visualization tool used to compare **two numeric variables**. Scatterplots are essential for:

- Identifying **correlations**.
- Understanding how one variable is affected by another.
- Spotting clusters, outliers, or trends in continuous data.

Each point on the plot represents a single observation, with position determined by its values on the two axes.

## 🔍 Scatterplot Fundamentals

R offers two main approaches to create scatterplots:

- The base `plot()` function for quick and simple for basic comparisons.
- The `ggplot2` package for ellaborative description.

Both map one variable to the horizontal (x) axis and another to the vertical (y) axis.

## 🛠️ Using the Base plot() Function

The `plot()` function is straightforward for fast exploration.

**Key Parameters**

- X & Y variables : Coordinates for each points.
- Main title : It's whole chart title.
- Axis labels : Descriptive text for x and y axes.
- Axis limits : Use for focus on specific ranges.


**Working with Real Data: mtcars**
Used the built-in `mtcars` dataset to explore relationships such as car weight vs. mileage.
Visual inspection quickly reveals whether heavier cars tend to have lower fuel efficiency.


## 🚀 Advanced Visualization with ggplot2

For professional, publication-quality graphics, the `ggplot2` package uses a **layered grammar of graphics** approach.

**Core Components**

- Initialize the plot and specify the data source.
- Map variables to visual properties.
- Add geometric layers to display the data.


## 🎨 Aesthetic Mapping

One of the greatest strengths of `ggplot2` is adding extra dimensions to a 2D plot using visual properties:

- Color :It differentiate points based on a third variable.


These mappings make the plot much more informative without adding extra axes.


## 💡 Key Takeaways

The source code covers basic scatterplots with `plot()`, refining views with axis limits, and transitioning to advanced `ggplot2` graphics.

While base `plot()` is excellent for quick exploration, `ggplot2` is preferred for professional reports due to its flexibility, layering, and aesthetic control.

>[!IMPORTANT] 
>To create the advanced plots, install and load this package:
>- **ggplot2** package is required for the modern layered plotting system.
