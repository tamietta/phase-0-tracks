**Name at least three categories of CSS adjustments (example: colors)?**

1. Margins
2. Background Color
3. Font
4. Text Alignment
5. Position

**What are the three ways to link a CSS rule to an HTML document? Which one is the best and why?**

* **External Style Sheet**    
This is done by referencing the location of the external style sheet in a `<link>` tag. This must be included within the HTML's `<head>` element. This is most advisable method of the three. External style sheets facilitate reuse across an arbitrary number of HMTL files. They are also easily edited, independent of the HTML files, to which they are linked. In addition, they enable code modularity, essential for clean code maintenance. 
```
<head>
    <link rel="stylesheet", href="CSS_file_location", type="text/css">
</head>
```

* **Internal Style Sheet**  
This refers to the declaration of style rules for the whole HTML file within the file itself. These rules are outlined using the `<style>` tags, which must be contained within the `<head>` tags. Internal styles sheets have equal precedence to external style sheets. Cascading is determined by whichever is the most recently referenced within `<head>`.


```
<head>
    <style>
        body {
            background-color: linen;
        }

        h1 {
            color: maroon;
            margin-left: 40px;
        } 
    </style>
</head>
```

* **Inline Styles**  
Inline styles are style rules which are passed as values to an element's `style` attribute. Thus these rules are specfic only to element within which they are declared. They have the highest precedence of the three methods.


```
<h1 style="font-size: 2em; padding: 10px;">Main Heading</h1>
```

**What is a selector? Give examples of at least three types of selectors.**

* **Tag Selector**    
The code below selects all `section` elements.

```
section {
    height: 80%;
}
```

* **Class Selector**   
The first code selects all `<section>` elements with the `class` attribute value of `first`. The second code selects all elements with the `class` attribute value of `first`. Targeted `<section>` elements will adhere to the first code, since its higher specificity gives it higher priority.

``` 
    section.first {
        height: 80%;
    }

    .first {
        height: 90%;
    }
```

* **Pseudo-Selector**  
Pseudo-selectors are comprised of pseudo-classes and pseudo-elements. Pseudo-elements target a specific *portion* of an element (e.g the first line of a paragraph), whereas pseudo-classes target a state of an element (e.g. a visited link).

``` 
    /* pseudo-element*/
    article::selection {
        color: blue;
    }
    
    /* pseudo-element*/
    li:nth-child(even) {
        background-color: yellow;
    }
```

**What is the box model?**  

* Every HTML element consists of the following layers, which can be manipulated using CSS properties.

![box model](https://www.washington.edu/accesscomputing/webd2/student/unit3/images/boxmodel.gif)_

**Explain and give an example of the cascading effect of CSS.**    

* Multiple style sheets can be used to control the formatting of a HTML document. When rules targetting the same CSS property of the same element conflict with one another, a hierarchy of compliance is followed, cascading priority from the lowest to the highest. The hierachy can divided into three categories:

    - **CSS Ownership**
        1. Website author (Highest)
        2. Website reader
        3. User agent settings (Lowest)

    - **Style Specification**
        1. Inline styles
        2. Internal style sheets (if conventionally defined after `<link>` tags)
        3. External style sheets (if `<link>` tags conventionally defined prior to `<style>`)
        
    - **CSS Selector**
        2. ID
        3. Class
        4. Text sequence

**Cascading Example**

* The element with the selected ID will be pink from the code below. Since `element#id` is more precisely defined, it will be given precedence.

```
element#id {
    color: pink
}

#id {
    color: blue
}
```



**Name two CSS techniques that assist in responsive design.**

* **Fluid Widths and Maximum/Minimum Widths**    
    - **Fluid** widths are widths defined in percentages of an element's parent element.
    - **Maximimum/Minimum** widths use the `max-width` or `min-width` property, which allow flexible rendering depending on the screen size.

* **Media Queries**
Media queries enable the definition of a different set of style rules for different media types and viewport sizes. The implementation of the new set of rules will be triggered upon a user-defined condition being met. All media queries must be defined as the last rules within the style sheet.

The condition in the code below will be evaluated as true for mobile screens.

```
@media only screen and (max-device-width: 480px) {
    h1 {
        width: 90%;
        font-size: 2 em;
    }
}
```