# Day 04: Advanced Control Flow \& String Manipulation





### 📝 Overview

Today’s learning focused on advanced control flow mechanisms in R. This included using switch() for multi-way branching, implementing for loops for repetitive tasks, and using next and break statements to fine-tune loop execution. Additionally, we explored the repeat loop structure and the paste() function for string manipulation.





### 🛠️ Key Functions: repeat() \& paste()



#### 🔄 The repeat Loop

* The repeat loop is used to execute a block of code iteratively. Unlike for or while loops, it does not have a built-in condition to stop.
* Infinite Nature: A repeat loop will run forever unless it is manually stopped using a break statement.



* Syntax:



&nbsp;		repeat { 

&nbsp;		  *# code to execute* 

&nbsp;		  if (condition) {

&nbsp;		      break  *# Crucial to prevent infinite loops*

&nbsp;		  }

&nbsp;		}





#### 🔗 The paste() Function

* The paste() function is a powerful tool used to concatenate (link together) multiple strings or variables into a single character string.
* Usage in Loops: It is frequently used inside loops to create dynamic messages, such as combining a label like "Number: " with the current loop index.



* Syntax: 

&nbsp;		paste("String1", variable, "String2").



* Output: It automatically combines the elements, making the output readable. *paste("2025", "01", "25")   ➔ "2025 01 25"*







### 🔀 Switch Case in R

The switch() function provides an efficient way to select one of many code blocks to be executed based on either an index or a matching value.



#### 1\. Indexing-Based Switch

* The expression evaluates to a number, and R selects the case corresponding to that index.
* Example: switch(2, "Om", "Tejash", "Vedant") returns "Tejash" because it is the second item in the list.



#### 2\. Matching Value-Based Switch

* The expression evaluates to a character string, which is then matched against named cases.
* Example:



&nbsp;		omd4\_2 <- "25"

&nbsp;		switch(omd4\_2, "36"="Om", "456"="Tejash", "25"="Vedant") 

* Output: "Vedant"







### 🔁 For Loops

* A for loop is used to execute a block of code a specific number of times based on a range or the elements of a vector.
* Vector Iteration: When a loop iterates over a vector (e.g., a list of names), it will execute exactly as many times as there are elements in that vector.
* Range Iteration: Using syntax like 1:15 tells the loop to run 15 times, incrementing the variable from 1 to 15 in each step.



### ⏭️ Loop Control: Next and Break

#### 🔄 Next Statement (Skip)

* The next statement is used to skip the remaining statements in the current iteration and jump immediately to the next cycle of the loop.
* Use Case: Skipping specific values during processing, such as excluding the number 3 or 11 from a sequence of 1 to 18.





#### 🛑 The break Statement (Stop)

* The break statement immediately terminates the loop entirely.
* If the condition for a break is met on the first iteration, the loop will exit immediately after only running once.



#### 💡 Key Takeaways

* Concatenation: Always use paste() when you need to combine text with variables for output.
* Loop Safety: Never use a repeat loop without a break statement, or you will create an infinite loop that crashes the session.
* Selective Logic: Use switch() as a cleaner alternative to multiple if-else statements when dealing with many possible outcomes.
