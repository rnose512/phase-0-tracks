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

console.log(longestPhrase(["long phrase","longest phrase","longer phrase"]))

/* keyValueMatch method: checks if two objects have anything in common
   input: 2 objects
   output: true or false
   steps:
     compare keys and values of both objects, return true if they match */

function keyValueMatch(obj1, obj2) {
  if
}

/* randomStrings method creates an array of random strings to use for other methods
   input: integer for length
   output: array of strings of the given length
   steps:
     declase output array
     equivalent of int.times do
     push into output array strings of randomly varying length, minimum of 1 letter and max of 10
   add driver code that does the following 10 times:
   generates an array, prints the array, feed the array to your "longest word" function, print the results. */

function randomStrings(arrayLength) {

}