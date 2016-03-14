/*
Gradebook from Names and Scores

I worked on this challenge [by myself]
This challenge took me [#] hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

// var gradebook = {};

// var addStudents = function (element, index, array) {
//   gradebook[students[index]] = {};
// };
// var addScores = function (name, score) {
//     gradebook[name].testScores.push(score);
// };
// var average = function (arr) {
//   var count = arr.length;
//   var temp = 0;
//   for (var counter = 0; counter < count; counter += 1){
//     temp += arr[counter];
//   };
//   var avg = temp / count;
//   return avg;
// };
// var gAvg = function(name) {
//   var temp = gradebook[name].testScores;
//   return average(temp);
// };

// students.forEach(addStudents);

// var index = 0;
// for (var prop in gradebook) {
//   var student = gradebook[prop];
//   student.testScores = scores[index];
//   index += 1;
// };

// gradebook.addScore = addScores;
// gradebook.getAverage = gAvg;

// __________________________________________
// Refactored Solution

var gradebook = {};

var addStudents = function (element, index) {
  gradebook[students[index]] = {};
};

var addScores = function (name, score) {
    gradebook[name].testScores.push(score);
};

var average = function (arr) {
  var count = arr.length;
  var temp = 0;
  for (var counter = 0; counter < count; counter += 1){
    temp += arr[counter];
  };
  return temp / count;
};

var gAvg = function(name) {
  return average(gradebook[name].testScores);
};

students.forEach(addStudents);

var index = 0;
for (var prop in gradebook) {
  var student = gradebook[prop];
  student.testScores = scores[index];
  index += 1;
};

gradebook.addScore = addScores;
gradebook.getAverage = gAvg;


// __________________________________________
// Reflect

/*
•What did you learn about adding functions to objects?

I'm not really sure.  It didn't work at first, but I didn't know why.  It took a
while to figure it out, and by then I had lost track of my initial mistake.  I
think it was as simple as spelling it correctly.  Otherwise, it was the same as
I anticipated it to be, with adding anything else as a property.

•How did you iterate over nested arrays in JavaScript?

Using a for...in loop.  It iterates through each property in an object and executes
whatever code you place in the expression.

•Were there any new methods you were able to incorporate?
  If so, what were they and how did they work?
  
No new methods this time.  I very much dislike the layout of MDN and i found
devdocs.io but that is only slightly better in terms of design.  It lets me search
still, but the function/method names are not super clear all the time.
  
*/






// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)

