// FUNCTION: return the longest string item in an array

// Declare a function which takes an array of strings as argument.
// Create a length-comparison variable set to 0.
// Create a item-tracking variable set to empty string.
// FOR each item in the array:
  // IF item length is greater than comparison variable:
    // Assign length to comparison variable.
    // Assign item to item-tracking variable.
// RETURN item-tracking variable.

longestItem = function(array) {
  var maxLength = 0;
  var maxItem = '';

  array.forEach (function(str) {
    if (str.length > maxLength) {
      maxLength = str.length;
      maxItem = str;
    }
  })
  return maxItem
}

// TEST CODE: longestItem()

console.log(longestItem(["long phrase","longest phrase","longer phrase"]));
console.log(longestItem(["a phrase","12948543204","abc"]));
console.log(longestItem(["Javascript","Ruby","HTML"]));


// FUNCTION: returns true or false for if at least one key-value
//           pair exists in both input objects

// Declare a function that takes in two objects.
// Determine the shorter-length object.
// FOR each property in the the shorter-length object:
  // IF property exists in longer-length object;
    // IF value of property in shorter-length is equal to value in longer-length:
      // RETURN true
// RETURN false

function shareKeyValue(obj1, obj2) {
  if (Object.keys(obj1).length < Object.keys(obj2).length) {
    var small = obj1, large = obj2
  } else {
    var small = obj1, large = obj2
  }

  for (var key in small) {
    if (key in large) {
      if (small[key] === large[key]) {
        return true;
      }
    }
  }
  return false;
}

// TEST CODE FOR: shareKeyValue()

var objA = {name: "Emily", age: 5, fav_hobby: "swimming"};
var objB = {name: "Natasha", age: 5, fav_hobby: "drawing"};

console.log(shareKeyValue(objA, objB));

var objC = {fruit: "Apple", furniture: "Chair", book: "Birdsong"};
var objD = {Apple: "Apple", Chair: "Chair", Birdsong: "Birdsong"};

console.log(shareKeyValue(objC, objD));


// HELPER FUNCTION: generate a randomly-generated integer between a min integer
//                  and max integer.

// LOGIC: Use Math.random to generate a float in the interval, 0 <= float < 1.
//        Scale the float to the interval of min and max.
//        Use Math.floor to obtain integer value from float.
//        Off-set the integer with min.

function randomInteger(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}


// FUNCTION: take an input integer, and return an array of strings of
//           length of the integer

// Declare a function taking an integer as argument.
// Create a variable for array of strings of lengths, 1 to 10, in ascending order.
// Create a variable for an empty array.
// FOR each integer in the range 1 to input integer:
  // Generate a random integer between 0 and 9 to index array of strings.
  // Add indexed string to the empty array variable.
// RETURN modified array variable.

function strArray(int) {
  var words = ['a', 'bc', 'def', 'ghij', 'klmno', 'pqrstu', 'vwxyzab', 
               'cdefghij', 'klmnopqrs', 'tuvwxyzabc']
  var strArray = []; 
  
  for (var i = 1; i <= int; i++) {
    strArray.push(words[randomInteger(0, 9)]);
  }
  return strArray
}

// TEST CODE FOR: strArray()

console.log(strArray(3))
console.log(strArray(10))


// DRIVER CODE

// FOR each integer from 1 to 10:
  // Generate a random integer between 3 and 10.
  // Create a string array of length of random integer.
  // Print array.
  // Filter out the longest word in the array.
  // Print the word.

for (var i = 1; i <= 10; i++) {
  var arr = strArray(randomInteger(3, 10))
  console.log("Array #" + i)
  console.log(arr)
  console.log(longestItem(arr), '\n')
}