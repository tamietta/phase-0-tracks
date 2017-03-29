// ARRAYS AND OBJECT LITERALS

// Create two arrays
var colours = ['sapphire', 'fuchsia', 'amber', 'mauve'];

var horses = ['Zephyr', 'Regalia', 'Jupiter', 'Midnight'];

// Add new item to arrays
colours.push('teal');

horses.push('Odysseus');

// Create object literal from two arrays
var horse_colour = {};

for (var i = 0; i < horses.length; i++) {
  horse_colour[horses[i]] = colours[i]; 
}

console.log(horse_colour);


// CONSTRUCTOR FUNCTION

// FUNCTION: Car Constructor
function Car(brand, year, type, colour) {
  this.brand = brand;
  this.year = year;
  this.type = type;
  this.colour = colour;

  this.age = function(current_year) {
    return current_year - this.year
  }

  console.log("CAR INTIALISATION COMPLETE");
}

// DRIVER CODE

// Initialise new Car object
var z3 = new Car("BMW", 2014, "sports car", "dark green");
var teana = new Car("Nissan", 2012, "sedan", "black");
var modelX = new Car("Tesla", 2016, "hybrid sports utility vehicle", "gunmetal");

cars = [z3, teana, modelX];

cars.forEach(
  function(car) {
    console.log("This", car.brand, "is " + car.age(2017) + " years old.");
})
