// longestPhrase method: returns longest phrase or word in an array
// input: array of words/phrases
// output: longest word/phrase
// steps:
//   declare longest word/phrase variable
//   iterate through the array
//     IF the length of the word/phrase is greater than the length of the longest word/phrase, reassign it to the longest word/phrase variable
//     return longest word/phrase

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