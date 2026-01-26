# REPEAT LOOP IN R PROGRAMMING LANGUAGE

# It is the type of loop where specification or implication of the conditions is not mandatory.
# We can exit the loop using the break.

# Syntax:
# repeat{
#        # code that runs forever until you explicitely break
#        # almost always includes a break condition.
#       }

# Taking example let's take a Vector
# vector <- c("Hello","My","Name","Is","Om")
# variable_temp <- 1 ←───────────────── This is the value that we have initiated as 1
# repeat {        ←───────────────── ⚠️
#   print(vector)
#   variable_temp<-variable_temp+1
#   if(variable_temp>5){
#     break
#   }
# }
# Output: Vector will on print 4 times

omd4_1 <- c("Hello","My","Name","Is","Om")
omd4_2 <- 1 
 repeat {        
   print(omd4_1)
   omd4_2<-omd4_2+1
   if(omd4_2>3){
     break
   }
 }

# Again if we raise the limit to 5
omd4_3 <- 1
repeat {        
  print(omd4_1)
  omd4_3<-omd4_3+1
  if(omd4_3>8){
    break
  }
}

# Now as we can see the condition in if function is set to 8 so then it will execute the repeat function 8 times.
