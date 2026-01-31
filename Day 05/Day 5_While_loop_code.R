# WHILE LOOP IN R PROGRAMMING LANGUAGE

# WHILE LOOP:
# It is the conditional loop which will execute till the condition gets false.
# Syntax:
# while(condition){
#   # code that runs as long as condition is TRUE
#   # usually update some variable inside to avoid infinite loop
# }
#⚠️⤵️
# it is important to specify the variable which will be used in the condition of the while loop.
# say the "c" is the variable that will be used for condition  
# while (conditions with "c"){
#   # Code inside the loop
#   # It is optimal to update the variable so the condition would change at each iteration leading it be false hence breaking the loop.
# }
# print(xyz) ←───────────────── ⚠️any optional code that would run after the break of the while loop.

omd4_4 <- c("Hello","My","Name","Is","Om")
omd4_5 <- 3 # variable for the condition
while(omd4_5<13){ #←─────────────────this condition would be false when the value of condition will be 14,so 14<13 it is false leading to breaking of the loop.
  print(omd4_4)
  omd4_5<-omd4_5+1
}
cat("Loop has been breaked. It has executed ",omd4_5-3," times.")

