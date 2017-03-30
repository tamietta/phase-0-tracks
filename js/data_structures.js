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