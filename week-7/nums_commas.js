// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// Input: Integer
// Output: String
// Steps:
// Convert integer to string
// Determine string length (num of digits)
// Iterate through each digit in string, starting from the end and working backward
// Every three digits place a comma
//   we want it to overwrite our string
// Return the string


// Initial Solution

// var separateComma = function(integer){
//   var int_string = integer.toString();
//   var string_length = int_string.length;
//   var int_array = int_string.split("");
//   var temp_array = new Array();
  
//   if (string_length <= 3)
//     return int_string;
//   else 
//     for (var x = 3; x < string_length; x += 4){
//       // pop last 3 digits off
//       for (var y = x; y > 0; y -= 1){
//         temp_array = temp_array.concat(int_array.pop())
//       }
//       // push "," onto original
//       temp_array.push(",");
//       // push the last 3 back on
//       for (var y = x + 1; y > 0; y -= 1){
//         int_array = int_array.concat(temp_array.pop());
//       }
//       string_length = int_array.length;
//     }

//   console.log(int_array.join(""));
// }

// separateComma(12345678901234567890)


// Refactored Solution

var separateComma = function(integer){
  var int_array = integer.toString().split("");
  var array_length = int_array.length;
  
  if (array_length <= 3){
    return integer.toString;
  }
  else {
    for (var x = -3; x > (array_length * -1); x -= 4){
      int_array.splice(x, 0, ",");
      array_length = int_array.length;
    }

  return int_array.join(""));
  }

}

separateComma(123456789012345618901);
// Your Own Tests (OPTIONAL)


// Reflection

/*
•What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

It was definitely different.  I did approach it differently, because one of our
resources said that a negative index does not mean anything in Javascript.
But in my research it seems that a lot of things use a negative index as a way
to start from the end and work backward.

•What did you learn about iterating over arrays in JavaScript?

That it's almost exactly the same.  Just the language and syntax is a little bit
different.

•What was different about solving this problem in JavaScript?

Working around and trying to remember about, JavaScript's tendencies to not
overwrite variables with its functions.

•What built-in methods did you find to incorporate in your refactored solution?

We used length, join, and splice.  Length and join work pretty much like you'd
expect them to.  Splice is interesting because you can delete elements of an
array as well as add or replace them.  It is pretty versatile.









*/