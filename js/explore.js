// Write a function that reverses a string
// input: string
// steps:
  // declare an empty reversed string variable
  // declare an index variable and assign it 0
  // while the index is less than the length of the string
  // add the index of the string to the reverse string variable
// ouput: string reversed

function reverseString(string) {
  reversedString = ''
  for (var i = 0; i < string.length; i++) {
    reversedString = string[i] + reversedString;
  }
  return reversedString;
}

var noMatter = reverseString("No matter what");
if (1 + 1 == 2) {
  console.log(noMatter);
}

var never = reverseString("Never give up");
if (9 % 3 === 0) {
  console.log(never);
}