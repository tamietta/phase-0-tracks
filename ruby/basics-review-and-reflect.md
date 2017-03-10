### Ruby Basics: Review and Reflect

#### Variables

**What is a variable? Why might a programmer use a variable?**

* Variables are names or identifiers, which reference a data object stored in a specific memory location.
* Variables offer the following functionalities to programmers:

    - **Object Recall**
        + Invoking the variable's identifier enables the assigned data object to be retrieved for use and re-use in code.
    - **Memory Efficiency**
        + If a certain object value is continually re-used in code (e.g. evaluation of a `while` loop condition), it is much more memory efficient to store the value in a variable, fixing it to a specific memory location, rather than necessitate the re-creation of the object to different memory locations on every call.
    -  **Descriptive Object Identifiers**
        + Variables enable the significance of the value of a data object to be made apparent in a program. 
        + The value, `5` signifying a limit can be more clearly referenced by the identifier, `limit`. This creates code which is easier to understand.
    -  **Variable Re-Assignment**
        + Variables are identifiers assigned to objects, and thus are separate to the object. This means that variables can be re-assigned to different objects, should the need arise.
        + Using variable in code instead of literal values allows ease in code maintenance. If the value of a variable needs to be change, the value re-assignment need only happen once, and all subsequent invocations of that variable will reflect the new, modified value.

#### Data Types

**For each of the following data types, write a short definition and give at least one example of when you might use the data type in a program. (Don't use an example we've already provided.)**

* **String**
    - A string is a unit of text, made up of an arbitrary number of individual characters. String characters include alphanumeric characters, as well as punctuation marks. 
    
    - **Example: Greeting to User**

```ruby
    # Prints the string as text to the console. This appears as a greeting to program users.
    puts "Hello! Welcome to the program."
```

* **Integer**
    - Ruby integers, in versions earlier than Ruby 2.4, separate Integers into Fixnum and Bignum classes. These classes represent the internal implementation of different types of integers for speed optimisation. Bignum is reserved for extremely large numbers (e.g. 10**100). Fixnum represents all other integers.
    - Integers are defined as numerical values of whole numbers. They may take both positive and negative values.
    
    - **Example: Addition of Two Integers**

```ruby
    sum = 100 + 200
```

* **Float**
    - Floats are numerical values of non-whole numbers. Any decimal number whose value must be represented using a decimal point are considered floats.
    - The term, "float" is derived from the concept of the floating decimal point, which may move to any position in a certain sequence of digits to represent different values.
    - Floats in Ruby must always include a digit before the decimal point. `0.5` is valid, whereas `.5` is illegal.
    - Any numerical calculation involving at least one float coerces the returned value to a float. This is especially relevant in division. Unlike float division. division exclusively between integers is always a *floor division*, returning the lower-bound integer value.
    
    - **Example: Float Division vs. Integer Division**

```ruby
    # The calculation below returns 1.5 as expected.
    3 / 1.0
    # The integer division below returns 1.
    3 / 1
```

* **Nil**
    - `nil` represents a data object of no value. It is its own distinct data type. It is the Ruby-object equivalent of the input, "N/A".
    - `nil` is always the return value of side-effect methods.
    
    - **Example:** `nil` **as Return Value of Side-Effect Method `puts`**

```ruby
    # puts will implicitly return nil
    puts "The object returned by this line of code will be the nil object"
```

* **Boolean**
    - The Boolean data types hold the binary values of `true` or `false`, asserting the truth or otherwise of a logical statement.
    
    - **Example: Boolean Value Returned by Comparison Expression**

```ruby
    # The greater-or-equal-to comparison below will return false. The statement is not true.
    1 >= 2
```

#### Algorithms

**What is an algorithm?**

* An algorithm describes the sequence of steps used to perform a computational operation. It holds the "recipe" for the actions performed and values returned by a particular program.

**What are two common categories of algorithm in computer science?**

* **Search Algorithms**
    - Search algorithms perform the search for a match of a specific value from amongst a collection of values.
    - The algorithms behind the BASH commands, `find` and `grep`, and the operations performed by the Google search engine are considered search algorithms.
* **Sort Algorithm**
    - Sort algorithms sort values in a collection according to a specific criteria, e.g. alphabetically, in ascending numerical order, etc. 
    - The options to display Amazon's product search results by price or reviews is implemented using sort algorithms.

#### Methods

**What is a method? Why might a programmer choose to use a method?**

* A method describes the encapsulation of a block of code implementing a certain set of operations, into a callable object.
* Method definitions can declare parameters, which enable them to take a pre-specified number of arguments as values to be used in their implementation.
* Methods are useful for the following reasons:
    - **Code Re-Use**
        + Code captured within a method can be re-used in other parts of the program without the need for re-writing the exact implementation every time.
    - **Argument Variability**
        + Defining parameters as placeholder variables means that different argument values can be passed for different method calls. 
    - **Code Modularity**
        + Methods are a key way of enabling code modularity. This refers to the structuring of code into self-contained units, separate to one another. 
        + This is essential to stable code maintenance. Bugs particular to one unit can be contained and corrected in one place. This principle also holds when modifications to units need to be made.

**Define the following terms as they relate to a method.**

* **Return Value**
    - Ruby implicitly returns an object for every line of executed code. With the regards to methods, the object returned by a method's last executed line of code is its return value.
    - Methods can also explicity return value via the `return` keyword. Use of this should be restricted to cases where the object desired is returned by a line of code, which is *not* the naturally executed last line.

* **Side Effect**
    - The side effect of a method refers to the actions enacted by a method's implementation on the environment outside of its local namespace.
    - These actions can be modifications to non-local variables, or an observable action in an external environment.
    - A method can have both side effects and a return value. However, the term, "side-effect method" conventionally refers to methods whose return value is `nil`.

* **Parameter**
    - Parameters refer to the declared argument identifiers in a method definition. 
    - Parameters act as placeholder variables for argument values passed during a method call.

* **Argument**
    - Arguments are values passed to a method during a method call. The values are assigned to the parameter variables prior to a method's code execution.
    - Parameters differ from arguments in that parameters refer to the placeholder variables declared during a method's definition, and have no concrete value.
    - Arguments, in contrast, refer to concrete values passed to a method during its invocation.

* **Implicit Return**
    - Implicit return in a method refers to the automatic designation of a method's return value as the object returned by its last executed line of code.

**What are global scope and method scope? How do those scopes impact the availability of data at different points in a program?**

* **Global Scope**
    - Global scope refers to the accessibility of a variable from any scope within a program, regardless of the scope, in which the variable is declared.

* **Method Scope**
    - The definition of a method initialises it own local scope, whereby variables defined within thos scope are only recognised when called from within the scope.
    - Calling a such a variable defined outside of the method scope results in a NameError.

#### Control Flow

**What is control flow? Why might a programmer choose to use flow control?**

* Control flows describes the path through a program, designating the execution sequence of its lines of code.
* A straight-line program refers to a linear execution path, from the first line of code to the last line, without interruption. Without control flow statements, this limits functionality.
* Flow control enables the manipulation and modification of this default linear flow of execution. 
* Programs can be instructed to repeat a section of code an arbitrary number of times, without the need to re-write the intended section (loops), or choose between two or more sets of code dependent on pre-defined conditions (conditional clauses).

**Define the following terms as they relate to flow control.**

* **Loop**
    - The repeated execution of a section of code.
    - Conditional dependent loops include, `while` and `until`.
    - Iterative loops include `for` loops, the `each` Array method, and the `times` Integer method.

* `if`
    - The `if` statement evaluates the boolean expression following it, and executes its defined code block only when that boolean value is `true`.

* `else`
    - The `else` statement is the optional counterpart to the `if` statement. Accordingly, an `else` statement can only be used preceded by an `if` statement.
    - The code block of an `else` statement is executed in all cases where the `if` conditional is evaluated as `false`.

* `elsif`
    - `elsif` statements enable additional conditionals to be verified in additional to the `if` condition. 
    - An arbitrary number of `elsif` statements can be used, when preceded by an initial `if` statement.
    - The code block of an `elsif` statement is only executed when the conditional statements (`if` or other `elsif` statements) preceding it are evaluated as `false`, and its own condition is evaluated as `true`.

* `while`
    - A `while` loop repeatedly executes a block of code dependent on the evaluation on each loop of a condition being `true`.

* `until`
    - An `until` loop is the counterpart to the `while` loop. `until` loops will only execute a block of code in repetition when the `until` condition evaluates as `false`. In other words, the looping of code will continue `until` its condition is evaluated as `true`.
