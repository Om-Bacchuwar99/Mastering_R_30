#OPERATORS IN R PROGRAMMING

#Types of Operators⤵️
#1]ARITHMETIC OPERATORS:  + - * / %%  %/% ^
#2]RELATIONAL OPERATORS: >  < ==  >=  <=  != 
#3]LOGICAL OPERATORS: & | ! &&  ||
#4]ASSIGNMENT OPERATORS: =  <- ->  <<-(also valid) ->>(also valid)

#1]ARITHMETIC OPERATORS
a<-40
b<-2
print(a + b) #Addition(+)
print(a - b) #Subtraction(-)
print(a * b) #Multiplication(*)
print(a / b) #Division(/)
print(a %% b) #Reminder(%%)
print(a %/% b) #Quotient(%/%)
print(a ^ b) #Power(^)

#If we want to use this on Vector(it is a collection of similar datatypes)
#⚠️WE HAVE TO USE c BEFORE ENTERING THE VALUES OF SAME DATATYPE IN PARENTHESIS()
c1 <- c(4,5,6,2)
c2 <- c(6,5,4,8)


print(c1 + c2) #Addition(+)
print(c1 - c2) #Subtraction(-)
print(c1 * c2) #Multiplication(*)
print(c1 / c2) #Division(/)
print(c1 %% c2) #Reminder(%%)
print(c1 %/% c2) #Quotient(%/%)
print(c1 ^ c2) #Power(^)

#2]RELATIONAL OPERATORS
#It's output will be TRUE or FALSE
a<-9.6
b<-3
print(a > b) #Greater than(>)
print(a < b) #Less than(<)
print(a == b) #Equal to(==)
print(a >= b) #Greater than equal to(>=)
print(a <= b) #Less than equal to(<=)
print(a != b) #Not equal to(!=)

c1 <- c(4,5,6,2)
c2 <- c(6,5,4,8)
print(c1 > c2) #Greater than(>)
print(c1 < c2) #Less than(<)
print(c1 == c2) #Equal to(==)
print(c1 >= c2) #Greater than equal to(>=)
print(c1 <= c2) #Less than equal to(<=)
print(c1 != c2) #Not equal to(!=)



#3]LOGICAL OPERATORS
c3<-c(7.5,TRUE,89+7i)
c3
c4<-c(56.7,TRUE,12-98i)
c4

#As you can see there is the hierarchical types in Vector in R language 
#⚠️⚠️The Hierarchy is ordered as: LOGICAL < INTEGER < NUMERIC < COMPLEX < CHARACTER
#And as in the output you can see that the complex is more prioritize so then all of them will be in complex value format.

print(c3 & c4)
print(c3 | c4)
print(!c3) # ! it is a uniary operator so it operates only on 1 operator only.
print(!c4)

#but for these they evaluate whole output with each other.
c5 <- TRUE
c6 <- 6>2    #TRUE
c7 <-FALSE
c8 <- 10<9   #FALSE

# Let's check for &&
print(c5 && c6) #Both value true output true
print(c5 && c7) #Single value false whole output false
print(c7 && c8)v #both false overall false
#Let's take this to next level by performing this on 3 values
print(c5 && c6 && c7) #so here we can conclude that one FALSE can change the overall output to FALSE

#Let's check for ||
print(c5 || c6) #Both value true output true
print(c5 || c7) #Single false value doesn't affect the overall output cause there is one TRUE
print(c7 || c8) #both false overall false
#Let's take this to next level by performing this on 3 values
print(c5 || c6 || c7) #so here we can conclude that one FALSE cannot change the overall output to FALSE so then the output will be TRUE.

cat(c1," ",c2)
print(c1 && c2)
print(c1 || c2)
#⚠️&& and || are short-circuit logical operators that evaluate only the first element of each argument, return a single TRUE or FALSE, stop as soon as the result is determined, and throw an error if given vectors longer than length 1, they are designed for single-value conditions (like inside if() or while()), not for element-wise vector operations.

#4]ASSIGNMENT OPERATORS
#Basically these are the operators used for assigning the different values to variables.
#⚠️These are shocking but <<- and ->> are also valid while assigning.
a = 5
a
a <- 55
a
555 -> a
a
a <<- 5555
a
55555 ->> a
a
