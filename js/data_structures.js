var colors = ["blue", "red", "green", "yellow"]
var names = ["Ed", "Star", "Pegasus", "Sky"]

colors.push("pink");
names.push("Blue Ribbon");

horse = {};

for (var i = 0; i < colors.length; i++) {
    horse[names[i]] = colors[i];
}

//console.log(horse);

function Car(colour, make, truck_or_car) {
  console.log("Initialising new car ...");
  this.colour = colour;
  this.make = make;
  this.truck_or_car = truck_or_car;

  this.accelerate = function(speed) {
    console.log("This car is accelerating at " + speed + " miles per hour.")
  }
}

honda = new Car("blue", "Honda", false);
ford = new Car("black", "Ford", true);

console.log(honda);
console.log(ford);

honda.accelerate(160)

// Assigment Questions

// 1. If you wanted to loop through the keys and values of an object, how would you do that?

obj = {a: 1, b: 2, c: 3}

// Key-Value Iteration Method #1

for (var k in obj) {
  if (obj.hasOwnProperty(k)) {
    console.log(k, ": ", obj[k]);
  }
}

// Key-Value Iteration Method #2

for (var [k, v] in Object.entries(obj)) {
  console.log(k, ":", v);
}

// 2. Are there advantages to using constructor functions to create objects? Disadvantages? 

// Advantage:
//  - Facilitates replication of objects with same set of properties
//  - Enables inheritance of properties in prototype chain (if desired).
//  - Enables declaration of private properties and methods.

// Disadvantage:
//  - If replication not needed, constructor method is superfluous code.
//  - Property names between instance-owned and prototype properties can inadvertently collide.
//  - Use of for..in loops will iterate over prototype properties, unless conditional is set (i.e. < if (object.hasOwnProperty(key)) {} >).

