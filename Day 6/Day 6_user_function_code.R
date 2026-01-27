# FUNCTIONS IN R PROGRAMMING LANGUAGE(USER FUNCTIONS)

# FUNCTIONS: Set of statements or block of codes which is excuted to perform a specific task.
# It has been classified into 2 types.
#1] USER-DEFINED FUNCTIONS
#2] BUILT-IN FUNCTIONS

#1] USER-DEFINED FUNCTIONS
# Functions which are created by the user
# ⚠️ The naming  of the  function should be different than the builtin-functions.
# Syntax:
# function_name<-function(arguement1,arguement2,arguement3,....arguementn){
#                   body of the function
#                   codes or statement that need to performed during the execution of the function if it gets called.
#                   }

# Function without Arguements
omd6_1 <- function(){
  for(x in 2:22){
    print(x-2)
  }
}
omd6_1()

# Function with Arguements
omd6_2 <- function(x,y,z){
  cat("Addition of ",x,"", y,"", z,"is ",x+y+z)
}
omd6_2(10,20,30)

# Function Aruguement with names: we can also call the function arguement by names.
omd6_3 <- function(x=7,y=8,z=9){
  total <- x*y*z
  cat("Multiplication of ",x,"", y,"", z,"is ",total)
}
omd6_3()

#
omd6_4 <- function(x=14,y=25){ #in the function there are default arguements
  total2 <- x*y
  print(total2)
}
omd6_4()    #<------- it has no arguement so then hence it will run the default arguement.
omd6_4(3,2) #<------- the arguements will be overwritted by the provided arguement, in simple words it will revalue the arguements in the arguements.


