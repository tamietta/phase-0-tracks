### Review and Reflect: Classes and Modules

**What are classes? Be sure to define the following terms in your explanation and describe the relationships between them:**

- **Class**
    - A class is an inheritable object, which acts as the blueprint for instances of that class.  
    - Instance variables and methods defined on the class determine the features and behavours inherited by all instances of that class. 
    - All Ruby classes have as their default parent class, the Object class. Object is itself a subclass of the root class, BasicObject. Different parent classes can be specified using the following syntax:

``` ruby
    class Subclass < ParentClass
    end
```

- **State**
    + The state of a class instance refers to the particular set of values assigned to its instance variables at a point in time.

* **Behavior**
    - The behaviour of a class instance is determined by the instance methods defined for that instance.

* **Instance Variable**
    - An instance variable is a variable particular to the instance, and accessible across all its instance methods.
    - An instance variable is denoted with a preceding `@` sign, `@instance_variable`, and must be declared within an instance method. 
    - Instance variables cannot be accessed from outside of the instance scope, unless getter, setter, or `attr` methods are defined.

* **Instance Method**
    - An instance method is a method which is inherited by and available from all instances of a class.
    - Instance methods function as the interface between an instance and an external environment.
    - An instance method is invoked using the dot notation: `instance.method`

**What are attributes?**

+ Attributes describe the state of an instance, and are determined by the values assigned to its set of instance variables.

  
**Give an example of a real world object, and describe how you might assign its attributes if you were to design a class to represent that object.**

+ **Object**: Umbrella
- **Attributes**
    * `@length`: integer denoting length in centimetres, e.g. `60`
    * `@colour`: string denoting name of colour, e.g. `"red"`
    * `@canopy_span`: integer denoting span in centimetres, e.g. `70`
    * `@weight`: float denoting length in kilograms, e.g. `0.6`
    * `@open_botton`: boolean denoting whether an umbrella has an open button

+ These attributes can be assigned at instantiation by declaring instance variables within the body of the `initialize` method.

``` ruby
    class Umbrella
        def initialize(length, colour, canopy_span, weight, open_button)
            @length = length
            @colour = colour
            @canopy_span = canopy_span
            @weight = weight
            @open_button = open_button
        end
    end

    umbrella = Umbrella.new(60, "red", 70, 0.6, true)
```

**What is the purpose of the initialize method? When does it run?**

+ The `initialize` method controls the attributes set, and instance methods invoked at instantiation.
+ The method executes concurrently with calls to the class instance constructor: `Class.new`

**What are modules?**

+ Modules are objects which collate an arbitrary number of related methods and constants within a coherent namespace. 
+ Modules differ to classes in being non-inheritable, and have no instantiation functionality.
+ Classes are implemented for the purpose of replications, whereas modules are implemented for the deployment of their methods and constants. 

**What are the different ways you can use a module?**

+ **Namespace Modules**
    * A module provides a separate namespace to contain a group of related methods and constants.
    * This enables a module to be used across any number of scopes or programs, by calling the `require` or `require_relative` methods with the name of its file.
    * Modules designed for such uses must define its methods as singleton methods to be called via the dot notation: `Module.method`

``` ruby
    module Module
        def self.method_name
        end
    end

    Module.method_name
```

+ **Mixin Modules**
    * A mixin module can be used to "mix in" a pre-defined set of instance methods into a class definition, by calling the `include` method with the name of the module.
    * This module type facilitates code re-use of instance method implementation across different classes.
    * Methods in mixin modules are defined in the same way as instance methods in classes.

``` ruby
    module Mixin
        def instance_method
        end
    end
```


