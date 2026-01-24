# Day 03: Operators \& Control Flow



### 📝 Overview

Today’s learning focused on the various types of operators available in R for performing calculations, comparisons, and logical evaluations. Additionally, it covered the implementation of conditional logic using `if`, `else`, and nested `if-else` statements.





### 🛠️ Operators in R Programming

Operators are symbols that tell the compiler to perform specific mathematical or logical manipulations.





### 🔢 Arithmetic Operators

* Used to perform mathematical operations on single values or vectors.



|Operator|Description|Example|
|-|-|-|
|+|Addition|Adds two values|
|-|Subtraction|Subtracts the second value from the first|
|\*|Multiplication|Multiplies two values|
|/|Division|Divides the first value by the second|
|%%|Remainder|Returns the remainder of a division|
|%/%|Quotient|Returns the integer quotient of a division|
|^|Power|Raises the first value to the power of the second|

### 



⚖️ Relational Operators

* Used to compare values. The output is always a logical value: `TRUE` or `FALSE`.



|Operator|Meaning|
|-|-|
|>|Greater than|
|<|Less than|
|==|Equal to|
|!=|Not equal to|
|>=|Greater than or equal to|
|<=|Less than or equal to|

### 





🎯 Assignment Operators

* Used to assign values to variables.



|Type|Operators|Example|
|-|-|-|
|Standard|<-, =, ->|x <- 25, y = 10, 5 -> z|
|Advanced|<<-, ->>|Used for assigning values in different environments|

### 



### 🧠 Logical Operators \& Short-Circuiting

* Logical operators are used to combine multiple conditions.
* R distinguishes between **element-wise** and **short-circuit** operators.



|Operator|Type|Behavior|Best Use Case|
|-|-|-|-|
|\&|Logical AND|Evaluates every element in a vector|Vectorized data operations|
|\|||Logical OR|Evaluates every element in a vector|
|\&\&|Short-Circuit AND|Evaluates only the first element; stops if a `FALSE` is found|Single-value conditions (e.g., `if` statements)|
|\|\||||Short-Circuit OR|
|!|Logical NOT|Unary operator that reverses the logical state|Negating a single condition|

⚠️ **Warning:** `\\\\\\\&\\\\\\\&` and `||` evaluate only the first element and will throw an error if given vectors longer than length 1.







## 🚦 Control Flow: If-Else Statements

* Conditional statements execute different blocks of code based on whether a condition is `TRUE` or `FALSE`.

#### 

### 🛠️ Standard If-Else Syntax



##### ℹ️Review the example code snippets carefully and trace them line by line to understand how each condition is evaluated and which output is produced in different scenarios. 



* The `else` keyword must be written on the same line as the closing brace `}` of the `if` block to avoid syntax errors.



if (condition) {
Task to perform if TRUE
} else {
Task to perform if FALSE
}

