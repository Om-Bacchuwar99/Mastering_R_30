# SWITCH-CASE IN R PROGRAMMING LANGUAGE

# Syntax: switch(expression,case1,case2,....case n)
# It is taken based on the index value and matching value.

#1] INDEXING BASED SWITCH CASE:
omd4_1<-switch(2,
               "Om",
               "Tejash",
               "Vedant"
               )            #Based on the expression value

# Here, now 2 is the expression
# Om onwards is the case indexed from 1
# But the expression is 2 so then THE OUTPUT will be Tejash.


print(omd4_1) #output is Tejash


# Now if we want output as Vedant then we have to set the expression as 3
omd4_1<-switch(3,
               "Om",
               "Tejash",
               "Vedant"
) 
print(omd4_1)


#2] MATCHING VALUE BASED SWITCH CASE:
omd4_2 <- "25"        #This is the matching value set to 25
omd4_3 <- switch(omd4_2,
                 "36" ="Om",
                 "456"="Tejash",
                 "25"="Vedant"
                 )
print(omd4_3)

# Just need to remember that instead of traditional indexing we can set the indexed value of any instance to any certain number,that will be called by the variable , which has been already stored and compiled before the switch case so that the expression will be valid.
# So  now if we want to get Om as the output so then we have to change in the switch case with the variable assigned for value of Om
omd4_4 <- "36"
omd4_5 <- switch(omd4_4,
                 "36" ="Om",
                 "456"="Tejash",
                 "25"="Vedant"
)
print(omd4_5)


# ⚠️No default case is available , if no case is matched then unamed case is used.
# If your expression type is a character string then the string is matched to the listed cases.
# If there no more than 1 match then 1st element is used.

