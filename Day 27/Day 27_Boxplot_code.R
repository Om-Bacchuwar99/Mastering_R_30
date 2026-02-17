# BOXPLOT IN R PROGRAMMING LANGUAGE

# A box plot which is also known as box and whisker plot.
# It is a type of chart often used in explanatory data analykis to visually show the distribution of numerical data and skewness through displaying the data quartiles (or percentiles) and averages.
# Box plots show the five-number summary of a set of data: 
# 1] the minimum score, 
# 2] first (lower) quartile, 
# 3] median, 
# 4] third (upper) quartile, and 
# 5] maximum score.


# R provides a boxplot() function to create a boxplot.
# Syntax:
# boxplot(x, data, varwidth, names, main)

# x : It is a vector or a formula.
# data : It is the data frame.
# notch : It is a logical value set as true to draw a notch.
# varwidth : It is also a logical value set as true to draw the width of the box as the sample size.
# names : It is the group of labels that will be printed under each boxplot.
# main : It is used to give a title to the graph.


names(mtcars)

boxplot(mtcars$hp) # default
median(mtcars$hp)

boxplot(mtcars$hp,
        main = "Boxplot of hp in mtcars with horizontal,colorized box",
        xlab = "X",
        ylab = "Y",
        col = "darkgray",
        border = "black",
        horizontal = TRUE,
        notch = FALSE)


# Boxplot form formula
# The function boxplot() can also take in formulas of the form y-x
# where, y is a numeric vector which is grouped according to the value of x.
names(mtcars)
boxplot(data = mtcars,
        mpg ~ cyl,
        xlab = "Quantity of cylinders",
        ylab = "Miles per Gallon",
        main = "Boxplot with formulas",
        col = "yellow",
        border = "black"
        )

# Boxplot using notch 
# In R, we can draw a boxplot using a notch. 
# It helps us to find out how the medians of different data groups match with each other.

boxplot(mpg ~ cyl,
        data = mtcars,
        xlab = "Quantity of cylinders",
        ylab = "Miles per Gallon",
        main = "Boxplot with Notch,different named value and color",
        notch = TRUE,
        varwidth = TRUE,
        col = c("green","yellow","red"),
        names = c("HIGH","MID","LOW")
        )








