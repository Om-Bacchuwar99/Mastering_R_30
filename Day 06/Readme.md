# Day 06: Built-in and User-Defined Functions



### 📝 Overview

Today’s learning focused on the core concept of functions in R. Functions are reusable blocks of code designed to perform specific tasks. The study was divided into exploring the vast library of R's pre-existing built-in functions and learning how to create custom user-defined functions to handle unique requirements.





### 🛠️ User-Defined Functions

User-defined functions allow you to wrap a set of statements into a single named unit that can be called whenever needed.





### 📝 Syntax \& Structure

* Naming: It is important to choose names that are different from existing built-in functions.
* Definition: A function is defined using the function() keyword followed by a code block {}.
* Arguments: These are values passed into the function to be processed.
* Without Arguments: A function can run a fixed task without needing outside data.
* With Arguments: You can pass specific values (e.g., x, y, z) which the function uses in its calculations.
* Default Arguments: You can assign default values (e.g., x = 7) within the function definition. If the function is called without arguments, it uses these defaults; if values are provided, they overwrite the defaults.







### 📚 Built-in Functions

R provides a rich set of built-in functions for mathematical, string, and statistical operations.





### 🔢 Mathematical Functions

* abs(): Calculates the absolute value (distance from zero).
* sqrt(): Finds the square root of a value.
* floor() \& ceiling(): floor() rounds down to the nearest integer, while ceiling() rounds up.
* trunc(): Simply removes the decimal part of a number without rounding.
* sin(), cos(), tan(): Standard trigonometric functions.
* log(): Calculates the logarithmic value.





### 🔡 String Manipulation Functions

* substr(): Extracts a specific part of a string based on start and stop positions.
* toupper() \& tolower(): Converts text to all uppercase or all lowercase.
* grep(): Searches for specific patterns within a string or vector of strings.





### 📊 Vector \& Statistical Functions

* sum(): Returns the total sum of all values in a vector.
* max() \& min(): Identifies the highest and lowest values in the provided arguments.
* Vector Primitives: You can combine ranges and single values easily, such as c(1:14, 20), to create a new vector.
