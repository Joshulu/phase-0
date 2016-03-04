// Eloquent JavaScript


// Run this file in your terminal using `node my_solution.js`(eloquent.js). Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var energy = 100
var chore_energy = 20
energy = energy - chore_energy

// Prompt program
var food = String(prompt("What's your favorite food?"));
alert("That's my favorite food too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
for(var sign = "#"; sign.length < 8; sign = sign + "#")
  {console.log(sign);}


// Functions

// Complete the `minimum` exercise.

var minimum = function(x, y){
  if (x < y)
    return x;
  else
    return y;
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Joshua",
  age: 22,
  fav_foods: ["pho", "tacos", "shrimp"],
  quirk: "I'm always happy to be somewhere, but never happy to leave where I am.",
  };

