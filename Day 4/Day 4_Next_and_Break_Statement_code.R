# NEXT AND BREAK STATEMENT IN R PROGRAMMING LANGUAGE

# ℹ️NEXT : It is used to skip the any remaining statement in the loop continuing execution.
# It basically skips the current iteration without stopping the loop and loop runs till the condition gets false.

# Syntax: say we have range from 1 to 15 in variable named range_variable
# range_variable <- 1:15
# for(value in range_variable ){
#    if(value == 6){
#     next ←─────────────────────⚠️
#    }
#    print(value)    #It will print all the value except the value which we speacially selected to be skipped and that is 6
# }
# Example is shown below

# SKIPPING SINGLE ITERATION
omd4_6 <- 1:18
for(omd4_7 in omd4_6){
  if(omd4_7==3 ){
    next
  }
  print(omd4_7)
}

# SKIPPING MULTIPLE ITERATIONS
omd4_8 <- 1:18
for(omd4_9 in omd4_8){
  if(omd4_9==3 ){
    next
  }else if(omd4_9== 11){
    next
  }
  print(omd4_9)
}


# ℹ️BREAK:It stops or break the execution of the loop if the condition which has been set gets matched.

# For example
# take a variable value set to 3
# temp_var <- 1
# repeat{
#   print("This will repeat only 6 times")
#   if(temp_var>=6)
#     break  ←─────────────────────⚠️
#   temp_var<-temp_var+1 #it will increament the value of a.
}

# Let's see it's working
omd4_10 <- 1
repeat{
   print("This will repeat only 10 times")
   if(omd4_10>=10)
     break 
   omd4_10<-omd4_10+1 
}

omd4_11 <- 1
repeat{
  print("This will repeat only 11 times")
  if(omd4_11>10)
    break 
  omd4_11<-omd4_11+1 
}
# The execution working of the above code is
# In the if condition it says that if the variable value will rise above 10 it will break the loop.
# ℹ️Look the next example for clearing the confusion.
omd4_12 <- 1
repeat{
  print("This will repeat only 11 times")
  if(omd4_12<10)
    break 
  omd4_12<-omd4_12+1 
}
# Here it has only printed the value only once.
# Because in the 1st iteration itself the value 1 is less than 10 so then it already satisfy the condition which results into the complete escape from the loop.
