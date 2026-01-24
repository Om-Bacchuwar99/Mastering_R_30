# IF-ELSE in R PROGRAMMING 
#IF
#Syntax : if(condition) 
#           {
            # any code/task  
#           }
            
            
om <- 654L
if(is.integer(om))
{
  print("om is an integer number")
}

om1 <- 789
om1 <- as.integer(om1) # so here we have used the conversion of numeric to integer
if(is.integer(om1))
{
  print("om is an integer number")
}

#ELSE
#Now if the condition is not satisfied so then it should run the else section
om2 <- 126
if(is.integer(om2))
{
  print("om is an integer number")
}
else
{
  print("om is not an integer number it is ",typeof(om2))
}
#NOW this is not correct it will not give us the output that we expect because of the syntax error, the correct syntax is as follows:
#Syntax: if(condition)
#         {
           #any code/task
#         }else               #⚠️else should be written after the end of if parenthesis '}' 
#           {
              #other code/alternate task
#           }
            
om2 <- 126
if(is.integer(om2))
{
  print("om is an integer number")
}else
{
  cat("om is not an integer number it is ",typeof(om2))
}   #It worked👍✅   


om3 <- c("I","am","coding","in","R","programming","language")
om3
# Now we will learn to search a particular element in the vector, to check if that exist in the vector that we have created or not.
#Syntax: if("element_to_be_found" %in% the_elements)
#         {
#           any code/task
#         }else                
#           {
#           other code/alternate task
#           }
if("R" %in% om3)
{
  print("R is found in our vector named om3")
}else
{
  print("R is not found in our vector")
}

#NESTING
#Now we will nest the if-else
#Syntax: if(condition1)
#         {
#           task1
#         }else if(condition2)                
#           {
#           task2
#           }else if(condition3)
#           {
#           task 3
#           }....else if(condition n)
#           {
#           task n
#           }else             #⚠️
#           {
#           alternate/last task
#           }

marks <- 45
if(marks>70)
{print("First class pass")
  }else if(marks>65)
  {print("Second class pass")
  }else if(marks>35)
  {print("Third class pass")
  }else
  {print("FAILED")}

#We can also use if , else-if for the vector.