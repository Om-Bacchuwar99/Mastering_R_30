#Variables in R Programming
#a variable name must start with a letter or a dot(.) 
#⚠️But never with the underscore(_)
.var_name <- 159 #✅valid  

var_name <- 156 #✅valid 
var.name <- 123 #✅valid 
_var_name <- 126 #❌not valid
#⚠️speacial symbol is also not allowed while naming variable
var_name* <- 147  #❌not valid
#⚠️while naming the variable it cannot be initiated with the number
#but number can be in better the name of the variable
5var_name  <- 456 #❌not valid
v7ar_name <- 654 #✅valid 

#Assignment of variables
var1 <- 963 #✅valid 
var2 = 25 #✅valid  , but  not preferred
10 -> var3 #✅also valid 
print(var1)


#cat function it combines multiple values in print output
cat(var1," ",var2) #with the space in between " "
cat(var1,var2) #without space
cat(var1," ",var2,"\n",var3) #\n is used to have the new line 
