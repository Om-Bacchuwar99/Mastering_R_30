# DATA VISUALIZATION IN R PROGRAMMING LANGUAGE PIE CHART

# What is Data Visualization ?
# Data Visualization is an efficient technique for gaining insight about data through a visual medium.
# With the help of visualization techniques a human can easily obtain information about hidden patterns in data that might be neglected.

# This works on the graphics package.

# Pie-Charts
# Pie-chart is a representation of values in the form of slices of a circle with different colors.
# The Pie charts are created with the help of pie() function, whihc takes positive numbers as vector input.

# Syntax: pie(x, Labels, Radius, Main, Col, Clockwise)

# Here,
# x is vector that contains the numeric values used in the pie chart.
# Labels are used to give the description to the slices.
# Radius describes the radius of the pie chart.
# Main describes the title of the chart.
# Col defines the color palette.
# Clockwise is a logical value that indicates the clockwise or anti-clockwise direction in which slices are drawn.


y <- c(23, 32, 30, 15)
labels <- c("USA","India","Ireland","Japan")
pie(y,labels) # it has default color now 
pie(y,labels,main = "Country Pie Chart",col=rainbow(length(y)))
colors <- c("blue","orange","green","red")
pie(y,labels,main = "Country Pie Chart",col = colors)



# Slice percentage and Chart legend

legend(y,x=NULL,legend,fill,col,bg)

# here,
# y and x are the coordinates to be used to position the legend.
# Legend is the test of legend fill is the color to use for the filling the boxes beside the legend text.
# col defines the color of the line and points besides the legend text.
# bg is the background color for the legend box.

legend("bottomright", c("USA","India","Ireland","Japan"),cex = 0.8, fill = colors)

# 3-Dimensional pie chart
# R provides a plotrix package whose pie3D() function is used to create an attractive 3D pie chart.
# The parameters of pie3D() function remain same as pie() function.
install.packages(plotrix)
library(plotrix)

y2 <- c(5,10,15,20,25,25)
labels2 <- c("India","UK","USA","China","Japan","Ireland")
pie3D(y2,labelslabels = labels2,explode = 0.2,main = "Country Pie Chart 3D")


y3 <- c(20,6,14,50,10)
labels3 <- c("India","USA","Nepal","Russia","Ireland")
pie_percent <- round(100*y3/sum(y3),1)
pie3D(y3,labels3,main = "Country Pie Chart 3D in %",col =rainbow(length(y3)),edges = 200)
legend("bottomright",c("India","USA","Nepal","Russia","Ireland"))
