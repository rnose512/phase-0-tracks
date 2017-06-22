var colors = ["blue", "green", "brown", "purple"];
var horseNames = ["Ed", "Charlie", "Donald", "Shirley"];

colors.push("yellow");
horseNames.push("Stephanie");

function createHorse() {
  for (var i = 0; i < horseNames.length; i++) {
    var horse = new Object();
    horse.name = horseNames[i];
    horse.color = colors[i];
    console.log(horseNames[i] + " is " + colors[i]);
  }
}

createHorse();

// Write constructor function for car
// Give it a few different properties of various data types
// include at least 1 function
// Demonstrate that functions work by creating a few cars

function Car(model, year, color, fourWheelDrive) {
  this.model = model;
  this.year = year;
  this.color = color;
  this.fourWheelDrive = fourWheelDrive;

  this.horn = function() {console.log("BEEP!"); };

}

var anotherCar = new Car("Sonata", 2014, "white", false);
console.log(anotherCar);
anotherCar.horn();

console.log("-------------");

var secondCar = new Car("Beetle", 1995, "yellow", false);
console.log(secondCar);
secondCar.horn();