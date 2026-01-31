# Day 02: Variables \& Data Types and it's Conversions





### 📝 Overview

Today’s learning focused on the fundamental building blocks of R: how to store data in variables, the various atomic data types available, and how to convert (cast) one data type into another.





### 📦 Variables in R Programming

Variables are used to store data that can be referenced and manipulated in a program.

#### 

#### **🏷️Naming Rules \& Conventions**

* **Start Character**: A variable name must start with a letter or a dot (`.`).
* **Underscore Restriction**: A variable name can **never** start with an underscore (`\_`).
* **Special Symbols**: Special symbols (e.g., `\*`) are not allowed in variable names.
* **Numbers**: A variable name cannot start with a number, though numbers can be used elsewhere in the name (e.g., `v7ar\_name` is valid, but `5var\_name` is not).

#### 

#### **🎯Assignment Methods**

* **Standard Assignment**: `<-` (e.g., `var1 <- 963`) is the most common and preferred method.
* **Equals Assignment**: `=` (e.g., `var2 = 25`) is valid but not preferred in R.
* **Right Assignment**: `->` (e.g., `10 -> var3`) is also a valid way to assign values.

#### 

#### **📤Output Functions**

* **`print()`**: Used to display a single value.
* **`cat()`**: Combines multiple values into a single print output. Use `\\n` within `cat()` to create a new line.



### 

### 🔢 Data Types (Atomic Vectors)

R operates on several basic data types. The operating system allocates memory based on these types.

|Data Type|Description|Example|
|-|-|-|
|**Numeric**|The default type for numbers; includes decimals. Stored as "double" in memory.|`15.654`|
|**Integer**|Whole numbers without decimals. Created by adding an `L` suffix.|`789L`|
|**Complex**|Numbers with an imaginary part.|`45 - 65i`|
|**Logical**|Boolean values representing truth (`TRUE` or `FALSE`).|`TRUE`|
|**Character**|Text strings. Can be enclosed in single (`'`) or double (`"`) quotes.|`"Hello R"`|
|**Raw**|Used to hold raw bytes (non-useful information).|`as.raw(40)`|

* **Checking Types**: Use `class()` to check the data type and `typeof()` to see how it is represented in the memory.







### 🔄 Type Conversion (Casting)

R allows you to convert one data type into another using the `as.` family of functions.



#### **1. To Numeric (`as.numeric`)**

* **Integer to Numeric**: Removes the `L` suffix (e.g., `26L` becomes `26`).
* **Complex to Numeric**: Discards the imaginary part.
* **Logical to Numeric**: `TRUE` becomes `1`, `FALSE` becomes `0`.
* **Character to Numeric**: Works if the string contains only numbers; otherwise, results in `NA` (Not Applicable).
* 

#### **2. To Integer (`as.integer`)**

* **Numeric to Integer**: Directly removes the decimal part without rounding (e.g., `1.99` becomes `1`).
* **Character to Integer**: Results in `NA` if any text is present in the string.
* 

#### **3. To Complex (`as.complex`)**

* **Numeric/Integer to Complex**: Adds a `0i` imaginary component.
* **Logical to Complex**: `TRUE` becomes `1 + 0i`.
* 

#### **4. To Logical (`as.logical`)**

* **Numbers to Logical**: Any number except `0` becomes `TRUE`.
* **Strings to Logical**: Converting any string (even those with numbers) results in `NA`.
* 

#### **5. To Character (`as.character`)**

* Converts any value (Numeric, Integer, Complex, or Logical) into its string representation.



### 💡 Key Takeaways

* Always use `<-` for assignment to follow R community standards.
* The `L` suffix is critical for defining integers; otherwise, R defaults to numeric.
* Converting non-numeric strings to numbers or logicals will result in `NA`.
