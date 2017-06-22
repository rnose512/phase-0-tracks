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