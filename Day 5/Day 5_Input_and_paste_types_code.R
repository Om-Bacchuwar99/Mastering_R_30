# TAKING INPUT IN R PROGRAMMING LANGUAGE

# READLINE FUNCTION IS USED TO TAKE THE INPUT FROM THE  USER.
# syntax:
#   variable <- readline(prompt = "Question/Statement for the user  ?:")  ←───────────────── ⚠️the statement in prompt will be visible to user so that they can enter the input.
# for example:
username <- readline(prompt = "Enter your username: ")
age <- readline(prompt = "Enter your age: ")
cat("Username ",username,"'s age is ",age,".")
# OR
print(paste("Username ",username,"'s age is ",age,"."))
paste("Username ",username,"'s age is ",age,".") #also works.
# Paste functions concate multiple strings. 

# paste also has 2 types
#1] paste() 
paste("Username ",username,"'s age is ",age,".") # we have seen this already
# now we will use the separator , separator add the element that we need in between the strings ⚠️that can also be whitespace " ".
paste("Username ",username,"'s age is ",age,".",sep = "-")
paste("Username ",username,"'s age is ",age,".",sep = "**") # each string seperated by **.
#2] paste0()
paste("Username ",username,"'s age is ",age,".")
paste0("Username ",username,"'s age is ",age,".")
# you can clearly see the difference in the output.
# it concate the default separator which a whitespace.
# paste0() is much better and faster than paste().