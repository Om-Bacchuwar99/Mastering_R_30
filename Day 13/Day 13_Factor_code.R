# Factors in R Programming Language.

dir <- c("North","West","East","South")
dir
is.factor(dir) #FALSE
typeof(dir) # character

factor(dir)
dir <- factor(dir) # assigning the factor to the variable 
is.factor(dir) #TRUE
dir

# Editing/rearranging the levels within the factor
# say if we want to exchange the positions of the directions West and East.
factor(dir,levels = c("North","East","West","South")) #setting 
dir <- factor(dir,levels = c("North","East","West","South")) #assigning it to dir
dir

# Giving the lables to each levels
# ⚠️remember to pass it through the vector
factor(dir,levels = c("North","East","West","South"),labels = c("N","E","W","S"))
dir


# Exclude
factor(dir,levels = c("North","East","West","South"),exclude = "South") # excluding single values
factor(dir,levels = c("North","East","West","South"),exclude = c("South","East")) # excluding multiple values

# gl()
# used for the factor label generation
# it takes 3 arguements
# n, k, labels
# n : It is the integer given to the number of labels. Basically the number of labels to be produced by user.
# k : It is the number given to replicates. Basically the replication(copies) of the labels that the user wants to be produced.
# labels : It is the labels to be mentioned.

sample_label <- gl(4,5,labels = c("Joe","Ross","Chandler","Gunther"))
sample_label


# Accessing the components within Factors
dir <- c("North","West","East","South")
data <- factor(dir) # it has been saved as factor in variable named data.
# accessing single
data[1] # North
data[2] # West
data[3] # East
data[4] # South
data[-1] # All except North
data[-2] # All except West
data[-3] # All except East
data[-4] # All except South
# accessing multiple
data[c(1,4)]

# Modifying the elements within vector
data[3] <- "West"
data[3]

# Extra important snippet to be known

is.factor(data) # It checks whether the input is in the form of vector, returns a boolean value(TRUE or FALSE).
is.ordered(data) # It checks if the factors is ordered and returns the boolean value(TRUE or FALSE).
as.factor(data) # Takes the input and convert the input(mostly vector) to factor.
as.ordered(data) # It takes an unordered function and return a factor that is arranged in order.
