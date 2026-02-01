# PROPERTIES OF VECTOR IN R PROGRAMMING LANGUAGE


#1] ACCESIBILITY
# Accessing elements of vector
# i) by indexing[] 
#   We use square parenthesis for indexing [].
#   ⚠️indexing in R programming starts from 1 not 0.
omd7_14 <- seq(5,18)
omd7_14
omd7_14[4] #if we want to access the 4th element of the given sequence. 

# ii) by assigning the key manually
# Now here we have assigned each character with key.
omd7_15_char <- c("John"=14,"Jack"=16,"Borris"=45,"Peter"=23)
omd7_15_char
omd7_15_char["Jack"]
omd7_15_char[14] #we cannot access the character with it's assigned key.
omd7_15_char["14"] #still cannot

# iii) by logical values
# Now here we have assigned each number with logical value.
omd7_16 <- c(2:12)
length(omd7_16)
omd7_16[c(TRUE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,TRUE)]
# ⚠️⚠️only the TRUE assigned to the integer will be printed and will be drawn in the output.

# iv)⚠️⚠️ Negative indexing
omd7_17 <- c("John","Jack","Borris","Peter","Stewie") 
omd7_17[2] #Jack
omd7_17[12] #NA 
omd7_17[-2] # Everything except Jack
omd7_17[2:4] 
omd7_17[1,3] # incorrect⤵️ 
omd7_17[c(1,3)] # correct we are indexing with reference to the vector
omd7_17[c(1,1)] #repetation is also allowed


#2] VECTOR OPERATIONS
# i) Combining the Vector
omd7_16 <- c(1:10)
omd7_17 <- c(TRUE,FALSE,FALSE,TRUE)
omd7_20 <- c(omd7_16,omd7_17) # Combining the vector using vector itself.
omd7_20 # we have obtained the combined vector.

# ii) Performing the arithmetic  operations on the vectors
omd7_21 <- c(12,35,54,8,986,23,12,3,35,8)
omd7_21 + omd7_17
omd7_21 - omd7_17
omd7_21 / omd7_17
omd7_21 * omd7_17


#3] Naming of Vector

omd7_22 <- c("Jack","Peter","Stewie")
omd7_22
names(omd7_22) = c("o1","o2","o3")
omd7_22
names(omd7_22) <- c("x1","x2","x3")
omd7_22
# "=" and "<-" both works while assigning the name of the elements in the vector.

# Using this also we can access the elements
omd7_22["x3"]



























































