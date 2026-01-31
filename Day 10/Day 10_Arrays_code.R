# ARRAYS IN R PROGRAMMING LANGUAGE

# Arrays are the data objects which allow us to store data in more than 2 dimensions.
# For creating the array we using array functions.
# array() takes the vector as input.

# ⚠️array() if we pass the values (1,3,4)️⤵️ it's called as the dim parameter.
# ✅so it means that 1,3 is size of the matrix generated.
# ✅and the number of matrixes generated will be 4.


# arrayname <- array(data , dim())

a1 <- c(4,8,2)
a2 <- c(3,6,1,10,22,49)
# here we have taken 2 vector names
# using the above vectors a1 and a2 we have to array below⤵️
o_a1 <- array(c(a1,a2), dim = c(3,3,2))
o_a1
#Output⤵️
#, , 1

#[,1] [,2] [,3]
#[1,]    4    3   10
#[2,]    8    6   22
#[3,]    2    1   49

#, , 2

#[,1] [,2] [,3]
#[1,]    4    3   10
#[2,]    8    6   22
#[3,]    2    1   49

#taking other example
o_a2 <- array(c(a1,a2), dim = c(3,4,2))
o_a2
#Output⤵️
#, , 1

#[,1] [,2] [,3] [,4]
#[1,]    4    3   10    4
#[2,]    8    6   22    8
#[3,]    2    1   49    2

#, , 2 --------> in this matrix the pattern continued from 361, where the first one ended 482

#[,1] [,2] [,3] [,4]
#[1,]    3   10    4    3
#[2,]    6   22    8    6
#[3,]    1   49    2    1


a3 <- c(10,20,40,60,80,90,70,30,50)
o_a3 <- array(c(a1,a3), dim = c(3,1,2))
o_a3
# here in the output it will discontinue as the matrix gets filled it stops the process of adding more vector values in the matrix.

# Naming of rows and columns in matrix
column_names <- c("col1","col2","col3")
row_names <- c("row1","row2","row3","row4")
matrix_names <- c("m1","m2","m3")
o_a4 <- array(c(a1,a3),dim = c(4,3,3),dimnames = list(row_names,column_names,matrix_names) )
o_a4
# so now here you can see with the help of dimnames we can give the names to the rows,columns and matrix as well.


# Accessing the arrays

# so now lets look here we have to access the matrices below 
column_names1 <- c("col1","col2","col3")
row_names1 <- c("row1","row2","row3","row4")
matrix_names1 <- c("m1","m2","m3","m4","m5")
o_a5 <- array(c(a1,a3),dim = c(4,3,5),dimnames = list(row_names1,column_names1,matrix_names1) )
o_a5
# now we are accessing the matrix so keep the order of dimnames in mind
print(o_a5[2,,4])
# above it prints whole 2nd row of the 4th matrix because we have not mentioned the columns.
print(o_a5[,1,1])
# above it prints whole 1st column of the 1st matrix as we didn't mention the row.
print(o_a5[4,3,2])
# above it prints 4th row and 3rd column element of the 2nd matrix.

# Operation on the Arrays
a6 <- c(4,2,3,6,7)
a7 <- c(1,5,8,9,0)
o_a8 <- array(c(a6,a7),dim = c(2,5,1) )
o_a8
a9 <- c(14,12,23,36,47)
a10 <- c(21,45,28,39,70)
o_a11 <- array(c(a9,a10),dim = c(2,5,1) )
o_a11

o_a12 <- o_a8 + o_a11
o_a12
o_a13 <- o_a8 - o_a11
o_a13
o_a14 <- o_a8 * o_a11
o_a14
o_a15 <- o_a8 / o_a11
o_a15
