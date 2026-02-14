# HISTROGRAM IN R PROGRAMMING LANGUAGE

# Histrogram is a type of bar chart which shows the frequency of the number of values which are compared with a set of values ranges.
# It is used for distribution , whereas a bar chart is used for comparing different entities.
# In histrogram each bar represents the height of number ov values present in the given range.


# Syntax:
# hist( v, main, xlab, ylab, xlim, ylim, breaks, col, border)

# here,
# v : It is vectore that contains numeric value.
# main : It indicates the title of the chart.
# col : It is used to set the color of the bars.
# border : It is used to set the border color of each bar.
# xlab : It is used to describe the x-axis.
# ylab : It is used to describe the y-axis.
# xlim : It is used to specify the range of vallues on the x-axis.
# ylim : It is used to specify the range of vallues on the y-axis.
# breaks : It is used to mention the width of each bar.

v <- c(12,24,16,38,21,13,55,17,39,10,60,59,57)
v
library(graphics)
 
hist(v,main = "Histogram Default", xlab = "Weight", ylab = "Frequency", col = "lightblue", border = "black")

# so we can see the gap between 40 and 50.

# Use of xlim and ylim parameter
hist(v,main = "Histogram with Limit", xlab = "Weight", ylab = "Frequency", col = "cyan", border = "black",
     xlim = c(0,40), ylim = c(0,3),breaks = 5 )
# you can think cropping or say limiting the histogram
# it can be use to ignore the outliers or even locate the outliers in the data.

hist(v,main = "Histogram with Limit_extending", xlab = "Weight", ylab = "Frequency", col = "gray", border = "black",
     xlim = c(0,70), ylim = c(0,15),breaks = 5 )


