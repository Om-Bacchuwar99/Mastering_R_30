# SCATTERPLOTS IN R PROGRAMMING LANGUAGE

# The scatterplots are used to compare variables.
# A comparsion between variables is requred when we need to define how mych one variable is affected by another variable.
# In a scatterplot, the data is represented as a collection of points. 
# Each point on the scatterplot defines the values of the 2 variables.
# One variable is selected for the vertical axis and other for the horizontal axis.

# In R, there are 2 ways of creating scatterplot,
# Using plot() function 
# Using ggplot2() packages functions.


# Syntax: using plot() function
# 1️⃣Using plot() function.
plot(x, y, main, xlab, ylab, xlim, ylim, axes)

# here,
# x : It is the dataset whose values are the horizontal coordinates.
# y : It is the dataset whose values are the vertical coordinates.
# main : It is the title of the graph.
# xlab : It is the label on the horizontal axis.
# ylab : It is the label on the vertical axis.
# xlim : It is the limits of the x values which is used for plotting.
# ylim : It is the limits of the y values which is used for plotting.
# axes : It indicates whether both axes should be drawn on the plot.

View(mtcars) # It is the predefined dataframe in R.
names(mtcars)
dim(mtcars)

# Fetching 2 column from mtcars 
data <- mtcars[,c("wt","mpg")]
data
View(data)


plot(x = data$wt, y = data$mpg, xlab = "Weight", ylab = "Mileage",
     main = "Weight vs. Mileage")

# Plotting the chart for cars with 
# weight between 2.5 to 5 
# and mileage between 15 and 30.

plot(x = data$wt, y = data$mpg, xlab = "Weight", ylab = "Mileage",
     xlim = c(2.5,5), ylim = c(15,30),
     main = "Weight vs. Mileage")


# 2️⃣Using gglplot2 package.

install.packages("ggplot2")

# In R, there is another way for creating scatterplot with the help of ggp10t2 package.
# The ggplot2 package provides ggplot() and geom—point() function for creating a scatterplot.
# The ggplot() function takes a series of the input item.
# The first parameter is an input vector, and the second is the aes() function in which we add the x-axis and y-axis.
# here aes() is asthetics function

# Loading ggplot2 package
library(ggplot2)
names(mtcars)
# Plotting the chart using ggplot() and geom_point() functions.
ggplot(mtcars, aes(x = drat, y = mpg)) + geom_point()

# The aes() function inside the geom_point() function controls the color of the group.
ggplot(mtcars, aes(x = drat, y = mpg)) + 
  geom_point(aes(colour = factor(gear)))
# it colors the point accordingly the significant values of the other variable in the same dataframe.

# The aes() function inside the geom_point() function controls the color of the group.
ggplot(mtcars, aes(x = log(mpg), y = log(drat))) + 
  geom_point(aes(colour = factor(gear)))


