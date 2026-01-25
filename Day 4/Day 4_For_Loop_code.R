# FOR LOOP IN R PROGRAMMING LANGUAGE

# FOR LOOP :If we want to print any certain statement not only to print if we want to run any certain task or piece of code at certain decided times so then it will be executed multiple times without manual work.
# syntax:
#         for(any_variable in certain_range_say_for_now->1:10){
#           print(paste("Number: ",any_variable)) ←───────────────── Paste is the function used to concat the various strings.
#         }
# Example is shown below

for(omd4_13 in 1:15){
  print(paste("Number: ",omd4_13))
}

omd4_14 <- c("Arpit","Gaurav","Nikhil","Aditya")
for(i in omd4_14){
  print(omd4_14)
}

# As in the above code we can see that the vector is printed the number of times the elements are present in the vector.
omd4_15 <- c("Arpit","Gaurav","Nikhil")
for(i in omd4_15){
  print(omd4_15)
}
# Again taking things to next level
omd4_16 <- c("1","2","3","4")
omd4_17 <- c("5","6")
for(i in omd4_17){
  print(omd4_16)
}
# As the max index value of omd4_17 is 2 so then it will only print the omd4_16's whole vector only 2 times , though it has 4 elements but in the condition for loop the it is omd4_17 which has the max index 2.