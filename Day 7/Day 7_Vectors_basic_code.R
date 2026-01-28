# DATA STRUCTURES IN R PROGRAMMING LANGUAGE (VECTORS_BASICS)

# ✅DS is a way store the data efficiently in the memory.
# ℹ️If it doesn't get stored efficiently so then we are limit to perform the operations on the data.
# Types of Data Structures in R ⤵️
#1] VECTORS
#2] MATRIX
#3] ARRAY
#4] LIST
#5] DATA FRAMES


# ATOMIC VECTOR
# ❓What is vector?
# It is the basic data structure in R plays an important role.
# In R , it is the sequence of elements which share the same datatypes.
# It supports all the datatypes.
# All the elements in the vector are known as components.
# We can also check the type of vector using the typeof() function.

# length(): The length function is used to find the number of elements in vector.

# ❓What are the types vector?
#1] ATOMIC VECTOR
#2] LIST (YES IT ALSO A PART/TYPE OF A VECTOR)

# ❓How we create a vector ?
# syntax: 
# variable_name_of_vector <- c(1st element, 2nd element, 3rd element,...,nth element)
omd7_1 <- c(1,2,4,5,7,8)
omd7_1

# We also set the multiple elements in the elements section of the vector of the if we have any definite range.
# variable_name_of_vector <- c(range like 1:10 from 1 to 10)
# ⚠️Note that the range gets defined by the : it is seperated by colon.

omd7_2 <- c(-10:3) #negative also works
omd7_2


# SEQUENCE 
# It basically prints the sequence of the of any defined range provided in the parenthesis/arguement.
# seq()
# Syntax:
# sequence_variable <- seq(starting point, ending point, by=the gap between each numbers within the range)
# sequence_variable <- seq(starting point, ending point, length.out= divides the number in such a way so that the length of the sequence will be set to the number declared).
omd7_3 <- seq(3,11)
omd7_4 <- seq(-3,6) # also works in negative
omd7_3 
omd7_4
omd7_5 <- seq(4, 13, by=2) #gap between each number is by 2.
omd7_5
omd7_6 <- seq(6, 14, by=0.4) #gap also works with the decimals.
omd7_6
omd7_7 <- seq(7, 21, length.out = 6) #it divided the and showed the output so that they will have the same gap with length of 6.
omd7_7

# In atomic vector we have 4 types.
#1] Numeric Vector
# It stores the multiple numeric values in the vector.
# syntax:
#   variable_name_of_vector <- c(all the numeric values)
omd7_8 <- c(1,2,4,5,7,8,9,113,12.3696)
omd7_8
class(omd7_8) # the vector is numeric.

#2] Integer Vector
# It only stores the integer values in the vector.
omd7_9 <- c(1,2,4,5,7,8) #supposed to be integer
omd7_9
class(omd7_9) #numeric which  is wrong.
omd7_9 <- as.integer(omd7_9) # changing the numeric into integer by self declaring.
class(omd7_9)
omd7_10 <- c(1L,2L,4L,5L,7L,8L) #basic by adding L in the suffix of the numeric to make it integer.
class(omd7_10)

#3] Character Vector
# It only stores the character/string values in the vector.

omd7_11 <- c(7,8,9,4,5,6,1,2,3) #obviously it's a numeric
omd7_11 <- as.character(omd7_11) # changing the numeric into character by self declaring.
class(omd7_11)

omd7_12 <- c("45","98","63") #basic by writing the value in the double quotations.
class(omd7_12)


#4] Logical Vector
# It only stores the logical values and if there is numeric so any non-zero value is TRUE.
omd7_13 <- c(4,5,0,7,8,1,2,0,3) # numeric values
omd7_13 <- as.logical(omd7_13)
omd7_13
class(omd7_13)

