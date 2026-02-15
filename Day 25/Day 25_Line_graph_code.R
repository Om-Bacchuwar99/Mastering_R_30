# LINE GRAPHS IN R PROGRAMMING LANGUAGE

# This graph, there are points connecting the data to show the continuous change.
# Te lines in a line graph can move up and down based on the data.
# R provides plot() function, which has the following syntax:
# syntax:
# plot(v,main,type,col,xlab,ylab)

# here,
# v : It is the vector which contains the numeric values.
# main : It is the title of the chart.
# type : This parameter takes the value 
#          "l" to draw only the lines.
#          "p" to draw only the points.
#          "o" to draw both lines as well as points.
# xlab : It is the label for the x-axis.
# ylab : It is the label for the y-axis.

v <- c(16,38,21,55,17,22)
v
plot(v, main = "Line Graph with points only")
plot(v, main = "Line Graph with lines only",type = "l")
plot(v, main = "Line Graph with both lines and points", type = "o")

plot(v,main = "Line Graph with color and labels",col = "red",type = "o",xlab = "Days", ylab = "Temperature")



# Line charts containing multiple lines

x <- c(13,22,28,7,31)
y <- c(11,13,32,6,32)
z <- c(12,22,16,36,32)
plot(x,main = "Line Graph with Multiple lines",col = "red",type = "o",xlab = "Days", ylab = "Temperature")
lines(y, type = "o", col = "green")
lines(z, type = "o", col = "cyan")
