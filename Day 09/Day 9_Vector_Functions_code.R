# VECTOR FUNCTION IN R PROGRAMMING LANGUAGE

# 🔄 Repeat function
# This function replecates the functions in R Vectors.

# rep(any vector , times/time[ℹ️both work] = count of the repetetion )
rep(c(1,2,3,5),time = 4 )

# rep(any vector say (1,3), time = c(2,4))
# ▶️so then in the output 1 will repeat 2 times and 3 will repeat 4 times
rep(c(47,69),time = c(2,5))

# rep(any vector , each = repeats each values on the value set)
rep(c(1,4,7,8,9,3,2),each = 3)

# rep(any vector/series, length.out = it gives the count of the total length of the output repeated till the length count is covered)
# ⚠️Beware of the = if it is <- then vector will be printed times the count has been set to length.out 
rep(1:4,length.out = 8) 
rep(c(1,8,3,7,2,9,6,4,5), length.out = 14) #⛔ Doesn't serve the purpose

# Sequence Function
# This function is used to generate the regular sequences.
# seq(from = say 1,to = say 10, by= 0.5)
# ▶️ Output will be like this⤵️
#[1]  1.0  1.5  2.0  2.5  3.0  3.5  4.0  4.5  5.0
#[10]  5.5  6.0  6.5  7.0  7.5  8.0  8.5  9.0  9.5
#[19] 10.0
seq(from=4.8,to=1.2,by=-0.2)
seq(from=1,to=10,by=0.5)

# seq(from = say 1,to = say 10,length.out = 3)
# It will basically divide and give us the segment of the range including from and to values along with the middle segment combiningly matching the value of the length.out set.
# ▶️ Output will be like this⤵️
# [1]  1.0  5.5 10.0
seq(from=4.9,to=1.4,length.out= 16)


# Any and All Function
# Any Function: At one value which satisfies the condition so that it gives us TRUE at least one. if none then FALSE.
series <- 5:20
any(series>20) #FALSE
any(series<10) #TRUE

# All Function: All values should satisfies the condition so that it gives us TRUE , even if one value doesn't satisfy the condition then it will return FALSE.
all(series>1) #FALSE
all(series<100) #TRUE
all(series<20) #FALSE, because 20 itself contradicts the condition.
