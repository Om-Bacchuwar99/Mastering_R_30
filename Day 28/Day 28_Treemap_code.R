# TREE MAP IN R PROGRAMMING LANGUAGE.

install.packages("treemapify")
library(ggplot2)
library(dplyr)
library(treemapify)

# A Treemap is a hierarchical data visualization that represents values as a set of nested rectangles. 
# The area of each rectangle is proportional to its value, while the color usually represents a specific category or group. 
# It is designed to show part-to-whole relationships.
# It is highly efficient at displaying large amounts of data in a single view without wasting space.
# syntax :
# ggplot(data, aes(area, fill, subgroup, label)) + geom_treemap()
# data     : The data frame containing your variables.
# area     : The numerical column that determines the size of the boxes (required).
# fill     : The column used to determine the color of the boxes (usually a factor/category).
# subgroup : The column used to group individual boxes into larger "neighborhoods" or blocks.
# label    : The column containing the text names to be printed inside each box.
# main (via labs) : Used to give a title to the graph.

View(mtcars)
names(mtcars)
# basic treemap
ggplot(mtcars, aes(area = hp, fill = cyl)) +
  geom_treemap()

# grouped treemap
ggplot(mtcars, aes(area = hp, fill = cyl,subgroup = cyl)) +
  geom_treemap()


# adding more definitions for the partitions of subgroup
ggplot(mtcars, aes(area = hp, fill = cyl,subgroup = cyl)) +
  geom_treemap() +
  geom_treemap_subgroup_border(color = "grey", size = 4)


# adding label of each model for each block 
ggplot(mtcars, aes(area = hp, fill = cyl,subgroup = cyl,label = rownames(mtcars))) +
  geom_treemap() +
  geom_treemap_subgroup_border(color = "grey", size = 3)+
  geom_treemap_text(colour = "antiquewhite", place = "centre")

# adding axis labels, theme , titles, subtitles and captions to map
ggplot(mtcars, aes(area = hp, fill = cyl,subgroup = cyl,label = rownames(mtcars))) +
  geom_treemap() +
  geom_treemap_subgroup_border(color = "red", size = 3)+
  geom_treemap_text(colour = "antiquewhite", place = "centre") +
  labs( title = "Tree Map for mtcars",subtitle = "Grouped by Cylinders and Sized(Area) by Horsepower.",caption = "This is caption section of the map. Here End remarks or details can be added like the trademark. ",fill = "Cylinders") +
  theme(legend.position = "bottom")




  
  

