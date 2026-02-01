# LIST IN R PROGRAMMING LANGUAGE

# It is similar to Vector
# We have to use the list function for making the list
simple_vec <- c(4,6,9)
character_vec <- c("Lois","Stewie","Peter")
logical_vec <- c(FALSE,TRUE,TRUE)
list_1 <- list(simple_vec,logical_vec,character_vec)
list_1

list_2 <- list(logical_vec,simple_vec,character_vec)
list_2 #It makes the list according to the order.

list_3 <- list("Sam","Ash","James",c(7,8,9,6,3,2),FALSE,TRUE,789.42,960L)
list_3


list_4 <- list("Sam","Ash","James",simple_vec,FALSE,TRUE,789.42,960L)
list_4


length(list_4[4]) #1
# Double bracket [[ ]] → extract → fetch the object within (vector, number, list, dataframe )
length(list_4[[4]]) #3


# ℹ️NAMING OF LIST

# we have to use the names function for naming the function.
# names()

list_5 <- list(c("Sam","Ash","Stewie","Peter"),c(45,90,100,20),list("B.Tech","B.Tech","B.Tech","B.Tech"))
list_5
# so we have provide the naming for each function.
names(list_5) <- c("Name of Student","Gradepoint","Courses")
list_5


# 🔑ACCESSING LIST
# With the help of indexing also we can access the list.
# lets take list 3 again⤵️
list_5[2] #second element of list
# Now if we want to get the items within the list of the first element of the list.
list_5[1][1]   #❌
list_5[[1]]    #❌
list_5[[1][1]] #❌
list_5[[1]][1] #✅
# As we have named each vector/list within the list_5
list_5$`Name of Student`
list_5$Gradepoint
list_5$Courses


# 🚮 UNLIST FUNCTION
# The function converts the list into the vector.
# As we are converting the list into vector cause we cannot perform the arithmetic operations on list.
# We can perform the arithmetic operations on vector.
# unlist(list_name)
list_6 <- list(8:17)
list_6
list_7 <- list(10:19)
list_8 <- list(10:20)
list_7
list_8
list_6 + list_7 # It will show error.

vector1 <- unlist(list_6)
vector2 <- unlist(list_7)
vector3 <- unlist(list_8)
cat(class(vector1),class(vector2),class(vector3))
cat(typeof(vector1),typeof(vector2),typeof(vector3))

vector1 + vector2 # works ✅
vector2 + vector3 # not work because the length of both vectors are not equal

# 🔀 MERGING LIST
# List functionis used to merge the multiple list
list_9 <- list(10:15)
list_10 <- list(15:20)
merged_list <- list(list_9,list_10)
merged_list
