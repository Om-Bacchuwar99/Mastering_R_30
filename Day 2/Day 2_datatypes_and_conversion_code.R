# DATATYPES IN R PROGRAMMING LANGUAGE
#Operating Systems allocates some memory based on the datatypes

#Basic Types of data Types
##Logical, Numeric, Integer, Complex, character, raw
num <- 10 #default datatype is numeric
#NUMERIC
#numeric = 12,4,-93669,126.45, -65.26365
num <- 15.654
class(num)
typeof(num) #the numeric type is basically stored in double.



#INTEGER
#integer = 36 #so this is numeric
#integer = 36L now after putting an L in the preffix it will be an "Integer". 
int1<- 789L #The L must be written in the capital letter
class(int1)
typeof(int1)
int2 <- 456
class(int2) #it is numeric
int2 <- as.integer(int2)
class(int2) #now it is converted into integer
  
  
#COMPLEX
#the imaginary comes under the complex numbers.
#complex = 5+9i
comp <- 45- 65i
class(comp)
typeof(comp)


#LOGICAL
#Logical= TRUE, FALSE
logi<-TRUE
class(logi)
typeof(logi)



#CHARACTER
#In this there are 2 types that is single quoted and double quoted.
#If the character is written in single quoted character it is considered as single value character.
#If the character is written in double quoted character it is considered as string.
#Chracter = 'a' , "Hello R","FALSE", '28.6546', "hello this is a 9966.3FM**"
char <- "random_text1"
class(char)


#RAW
#Raw is used to hold the raw bytes(non-useful information).

#ℹ️class function is used to check the type of the data type the variable is acquired.
#ℹ️️type of function is used to check the type of the data type the variable is acquired and represented in the memory).


#CONVERSION OF DATATYPES
#If we want to convert into the numeric for that we use:
#as.numeric , this function other datatypes into numerical datatypes.
#All the type of values have been converted into Numeric.
num1 <- as.numeric(26L) #converting an integer into numeric.
num1 # now you can see in the output(i.e 26) the L has been culled out.
class(num1) #it is now numeric
num2 <- as.numeric(45 + 23i)
num2 #here the imaginary parts has been removed so then it will be 45.
class(num2) #it is now numeric
num3 <- as.numeric(TRUE)
num4 <- as.numeric(FALSE)
cat(num3," ",num4)
cat(class(num3)," ",class(num4))
#⚠️now important cause we are trying to convert character into numeric.
num5 <- as.numeric("random_text2") # The String only has TEXT. resulted into---⤵︎ 
num5 #It is not possible to convert the character into numeric so it will show NA(Not Applicable).
num6 <- as.numeric("789456132") # The String only has NUMBERS. resulted into ⤵︎
num6 #As the string has only numbers so then the output will the numbers i.e 789456123.
num7 <- as.numeric("456789kkk") #here the string also has NUMBERS along with the TEXT. resulted int -⤵︎
num7 #As the string has numbers but along with that it has the text so then the output will only --->NA(Not Applicable).


#All the type of values have been converted into integer.
int1 <- as.integer(56.1233) #here the value is decimal.
int1 #in the output the decimal part has been reduced.
class(int1) #it has been changed to integer.
int2 <- as.integer(1.999999999999) #checking if it directly removes decimal or just round of till the nearest number.
int2 #it can be seen that it doesn't rounded-off the decimal value it directly removes the decimal part.
int3 <- as.integer(456 - 8i) #here the complex number will be converted to integer.
int3 #now the imaginary part has  been discarded in the output
class(int3) # class has been also changed to integer.
int4 <-as.integer(TRUE) #here we converting the logical into the integer.
int4 #AS for TRUE it will "1" and for FALSE it will be "0".
class(int4) # class has been also  changed to integer.
int5<- as.integer("145698723") #as we have entered the character values without any text.
int5 # It will be converted as it doesn't have any text.
class(int5) # class has been also changed to integer as all the character values were numbers.
int6 <- as.integer("456789asd") #as we have entered the character values with numbers as well as text.
int6 #It will not be converted hence the output will be NA.
class(int6) #despite of getting an output as NA the class will be always integer.
 

#All the type of values have been converted into complex value.
comp1 <- as.complex(789.66523) #we are converting the numeric into the complex value.
comp1 # As in the output the 0i will be added as the numeric value has been changed to complex value.
class(comp1) #without doubt the class has been also changed to complex.

comp2 <- as.complex(32135L) #we are converting the integer into the complex value.
comp2 #As in the output the L will be removed and again 0i will be added changing it to complex.
class(comp2) #the class has been also changed to complex.

comp3 <-as.complex(TRUE) #we are converting the logical into complex value.
comp4 <-as.complex(FALSE) #same as the above just the value is FALSE.
cat(comp3," ",comp4) #as the value is changed to binary and it will be 1 + 0i for TRUE and 0 + 0i for FALSE as the complex number.
cat(class(comp3)," ",class(comp4)) #the classes of both will also be changed to complex.

comp5 <- as.complex("456789") # as we have entered only number in the string.
comp6 <- as.complex("123456bkl") #as we have also entered the text along with the number in the string.
cat(comp5," ",comp6) #the string value with text has the output NA another value will be printed.
cat(class(comp5)," ",class(comp6)) #despite having NA it will be complex.


#All the type of values have been converted into logical value.
log1 <- as.logical(135.879) # any number except 0 will give us the output as TRUE
log1
log2 <- as.logical(789L) #as the number is integer.
log2
log3 <- as.logical(0+ 789i) #as we have entered the value anything except 0 it will be TRUE
log3
log4 <- as.logical("456789") # we have entered the string value with only number.
log5 <- as.logical("132jnl") # we have entered the string value with text as well as number.
cat(log4," ",log5) #⚠️⚠️⚠️⚠️ℹ️ℹ️ℹ️ so now despite of anything the  if the value is string then the  output will NA only.
cat(class(log1)," ",class(log2)," ",class(log3)," ",class(log4)," ",class(log5)) # all the class of the log wil be logical.


#All the type of values have been converted into character.
char1 <- as.character("456.789999") #we are converting the numeric value into character.
char1 #All the numeric value has been characterized.
class(char1)
char2 <- as.character("789111L") #we are converting the integer value into character.
char2 #All the integer value has been characterized.
class(char2)
char3 <- as.character("45+ 123i") #we are converting the complex value into character.
char3 #All the complex value has been characterized.
class(char3)
char4 <- as.character("TRUE") #we are converting the logical value into character.
char4 #All the logical value has been characterized.
class(char4)
