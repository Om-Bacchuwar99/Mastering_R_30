# MATRIX IN R PROGRAMMING LANGUAGE

# It is 2 dimensional dataset that is row and column.
# We have to use matrix function matrix().
# Syntax:
#     matrix(data,nrow,ncolumn,byrow,dim_name)
# data : that will the input vector.
# nrow : number of rows.
# ncolumn : number of columns. 
# byrow : It is the boolean parameter which shows the arrangement of the elements.
# ----------> byrow is FALSE by default so that the arrangement of the elements are by column.
# dim_name : It is the parameter used for naming of the rows and columns.


sample_matrix <- matrix(c(1:16),nrow = 3, byrow = TRUE)
sample_matrix
sample_matrix1 <- matrix(c(1:16),nrow = 4, byrow = TRUE)
sample_matrix1
sample_matrix2 <- matrix(c(1:16),nrow = 4) # here byrow = FALSE by default.
sample_matrix2
sample_matrix3 <- matrix(c(1:16),ncol = 8) # and now we have set the matrix by column
sample_matrix3

# Naming of Matrix

sample_matrix4 <- matrix(c(5:16),nrow = 4,byrow = TRUE) 
sample_matrix5 <- matrix(c(9:20),nrow = 4,byrow = FALSE)
sample_matrix4
sample_matrix5

row_name <- c("r1","r2","r3","r4")
column_name <- c("c1","c2","c3")
named_matrix <- matrix(c(5:16),nrow = 4,byrow = TRUE,dimnames = list(row_name,column_name))
named_matrix


# Accessing the Elements within Matrix

print(named_matrix[2,1]) # 2nd row 1st column
print(named_matrix[1,2]) # 1st row 2nd column
print(named_matrix[4,])  # accessing all the 4th row
print(named_matrix[,3])  # accessing all the 3rd column

# Modifying the Elements within Matrix

named_matrix
named_matrix[3,3] <- 1 # by assignment we can modify the element
named_matrix[named_matrix == 9] <- 1 # here it will parse and look for the conditioned element if it get's found it will be changed to the assigned value.
# In the 2nd elements we have used the relational operators.
named_matrix
named_matrix[named_matrix<7] <- 1 # here the element will get replaced which will satisfy the given condition.
named_matrix


# Operations within the Matrix

# Here we will use the functions below add the elements within the matrix
# cbind() and rbind( are used to add a columns and rows respectively.)
# Initally let's add addtional row to the matrix.
# rbind(matrix,c(elements according to the dimension of row))

named_matrix <- rbind(named_matrix, c(17,18,19))
named_matrix

# cbind(matrix,c(elements according to the dimension of column))

named_matrix <- cbind(named_matrix,c(20,21,0,22))
named_matrix

# t function is used to find the transpose of the matrix
t(named_matrix)


# Operations on the matrix
m1 <- matrix(c(9:20),nrow = 4,ncol=3,byrow = TRUE)
m1
m2 <- matrix(c(10:21),nrow = 4,ncol=3,byrow = TRUE)
m2

m3 <- m1 + m2 # addition of matrix
m4 <- m1 - m2 # subtraction of matrix
m5 <- m1 * m2 # multiplication of matrix
m6 <- m1 / m2 # division of matrix
m3
m4
m5
m6

