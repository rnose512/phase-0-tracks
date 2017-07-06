/* longestPhrase method: returns longest phrase or word in an array
   input: array of words/phrases
   output: longest word/phrase
   steps:
     declare longest word/phrase variable
     iterate through the array
     IF the length of the word/phrase is greater than the length of the longest word/phrase, reassign it to the longest word/phrase variable
     return longest word/phrase */

function longestPhrase(array) {
  var longest = ""
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > longest.length) {
      longest = array[i];
    }
  }
  return longest;
}

/* keyValueMatch method: checks if two objects have anything in common
   input: 2 objects
   output: true or false
   steps:
     compare keys and values of both objects, return true if they match */

function keyValueMatch(obj1, obj2) {
  for (var prop in obj1) {
    if (obj1[prop] === obj2[prop]) {
      return true;
    }
  }
  return false;
}


/* randomStrings method creates an array of random strings to use for other methods
   input: integer for length
   output: array of strings of the given length
   steps:
     declare output array
     equivalent of int.times do
     push into output array strings of randomly varying length,
     minimum of 1 letter and max of 10
   add driver code that does the following 10 times:
   generates an array, prints the array, feed the array to your "longest word" function, print the results. */

function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min)) + min;
}

function randomStrings(arrayLength) {
  var outputArray = [];
  var chars = "ABCDEFGHIJKLMNOPQRSTUVWXTZabcdefghiklmnopqrstuvwxyz";

  for (var i = 0; i < arrayLength; i++) {
    string = '';
    stringLength = getRandomInt(1,10);
    while (string.length < stringLength) {
      string += chars[Math.floor(Math.random()*chars.length)];
    }
    outputArray[i] = string;
  }
  return outputArray;
}


// DRIVER CODE

// For longest phrase method
console.log(longestPhrase(["long phrase","longest phrase","longer phrase"]))

// For key-value match method
keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54}); //  true
keyValueMatch({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}); //  true

// For random test data generator
var phrases = randomStrings(10);
console.log(randomStrings);
console.log(longestPhrase(phrases));