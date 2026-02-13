# BAR CHART IN R PROGRAMMING LANGUAGE

# A bar chart is a pictorial representation in which numerical values of variables are represented by length or height of lines or rectangles of equal length.
# It is used for summarizing a set of categorical data.
# The data is shown through rectangular bars having the length of the bar having the length of the bar proportional to the value of the variable.

# Syntax: barplot(h,xlab,ylab,main,names.arg,col)


# here,
# 1] h: A vector or matrix which contains numeric values used in the bar chart.
# 2] xlab: Label for the x-axis.
# 3] ylab: Label for the y-axis.
# 4] main: A title of the bar chart.
# 5] names.arg: A vector of names that appear under each bar.
# 6] col: It is used to give colors to the bars in thee graph.

h1 <- c(66,46,82,23,41)
barplot(h1) #based bar-plot

h2 <- c(12,54,31,41,35)
m2 <- c("Cadbury","Skittles","Gems","5-Star","KitKat")
barplot(h2,names.arg=m2,xlab ="Chocolate",ylab="Sold Today",col="chocolate",main="Chocolate Revenue Bar chart",border="brown")
# here, border is color of the border of the rectangular bar.


# Group Bar chart and Stacked Bar chart

months <- c("Jan","Feb","March","Apr","May")
regions <- c("East","North","West")
values <- matrix(c(21,32,33,14,95,67,78,39,11,22,22,95,14,17),nrow = 3 ,ncol = 5,byrow = TRUE)
barplot(values,main="Monthwise Revenue", names.arg = months,
        xlab = "Month",ylab = "Revenue",
        col =c("lightgreen","cyan","green")) # Stacked Bar Chart


install.packages("ggplot2")
library(ggplot2)
barplot(values,main="Monthwise Revenue", beside= TRUE,
        names.arg = months,
        xlab = "Month",ylab = "Revenue",
        col =c("red","skyblue","green"))

legend("topright", regions, cex = 0.4, fill = c("red","skyblue","green"))



