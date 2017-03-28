// FUNCTION: reverse a string

// Declare function to take string as argument.
// Create new empty string.
// FOR each character in reverse in input string:
  // Add to empty string.
// Return new string.

function reverse(str) {
  var reverseStr = '';
  for (var i = (str.length - 1); i >= 0; i--) {
    reverseStr += str[i];
  }
  return reverseStr;
}

// TEST CODE

// console.log(reverse('hello'))


// DRIVER CODE

var reversed = reverse("Please reverse this string!");

if ("abc" === "ABC".toLowerCase()) {
  console.log(reversed);
}