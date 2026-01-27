# FUNCTIONS IN R PROGRAMMING LANGUAGE(BUILT-IN FUNCTIONS)

# Built-in functions are the functions which are already present in the library

#1] Absolute function: It is the function used to calculate the absolute value of any numeric value, vector (representing teh distance from zero).
# abs()
omd6_5 <- -89
print(abs(omd6_5))

#2] Square root function: It is used to find the square root of the value.
# sqrt()
omd6_6 <- 81
print(sqrt(omd6_6))
print(sqrt(789))
print(sqrt(abs(omd6_5 - 1)))

#3] Floor function: Rounds the number down to the nearest integer.
# floor()
omd6_7 <- 456.99999999
print(floor(omd6_7))
print(floor(sqrt(789))) #sqrt(789) is 28.08914

#4] Ceiling function: Rounds the number up to the nearest integer. 
# ceiling()
omd6_8 <- 89.11111
print(ceiling(omd6_8))
print(ceiling(sqrt(789))) #sqrt(789) is 28.08914

#5] Truncate function: Used to remove the decimal part of number.
# trunc()
omd6_9 <- c(90.654,900.3,9.046)
print(trunc(omd6_9))
print(trunc(omd6_8))

#6] Sin function: gives the sine value of the provided value.
# sin()
omd6_10 <- 90
print(sin(omd6_10))
# like sine we do have all the trigonometric functions
# cos(), tan()

#7] Logarithmic function: gives the logarithmic value of the provided value.
# log()
print(log(omd6_10))


# String related functions
#8] Sub-String function: Find the string within the string.
# substr(any_variable, start, stop)
omd6_11 <- "9876546213"
substr(omd6_11, 2, 8)

#9] To-Upper function: convert all the lower-case string into upper-case string.
# toupper()
omd6_12 <- "Om Bacchuwar"
toupper(omd6_12)

#10] To-Lower function: convert all the upper-case string into lower-case string.
# tolower()
tolower(omd6_12)

#11] Grep function: Function used to identify the pattern in a string.
# grep(pattern_to_searched_from_target,target_variable,)
omd6_13 <- c("atmkbfg","atmison","amisnotworking")
omd6_14_pat <- '^atm' # ^ used for the pattern to searched from the target string.
grep(omd6_14_pat,omd6_13)
omd6_15 <- c("atmkbfg","amison","amisnotworking")
grep(omd6_14_pat,omd6_15)

#12] Primitive function in vector: the value gets added back to the vector after the last element.
# trial_vector <- c(1:3,4)
# output will be 1 2 3 4
omd6_16 <- c(1:14,20)
omd6_16

#13] Sum function: Gives the sum of all value present in the arguement.
# sum(all the values )
omd6_17 <- c(1:10)
sum(omd6_17)
omd6_18 <- sum(omd6_16)
print(omd6_18) #<-- here the primitive functioned value will also gets added cause it is inside the arguement.

#14] Max function: Return the maximum values from the values present in the arguements.
# max()
omd6_19 <- c(21:29,50)
max(omd6_17)
max(omd6_16)
max(omd6_17,omd6_19)

#15] Min function: Return the minimum values from the values present in the arguements.
# min()
omd6_20 <- c(0,40:48)
min(omd6_17)
min(omd6_16)
min(omd6_20,omd6_17,omd6_19)

