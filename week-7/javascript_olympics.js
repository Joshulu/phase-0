 // JavaScript Olympics

// I paired [by myself] on this challenge.

// This challenge took me [#] hours.


// Warm Up
var list = [
  Me = {name: "Me", event: "Video Games"},
  You = {name: "You", event: "Comics"},
  They = {name: "They", event: "Cartoons"},
];



// Bulk Up
var athlete_list = function(list) {
  var win_holder = "";
  var winner = function(element) {
    element.win = (element.name + " wins " + element.event);
    console.log(element.win);
  };
  list.forEach(winner);
};


athlete_list(list);

// Jumble your words
var flip = function(some_string) {
  var flipped = some_string.split("").reverse().join("");
  console.log(flipped);
  return flipped;
};

flip("Hello there!");

// 2,4,6,8
var only_even = function(some_array) {
  var check_even = function(element, index, array) {
    if (element % 2 == 1) {
      array.splice(index, 1);
    };
  };
  some_array.forEach(check_even);
  console.log(some_array);
  return some_array;
};

only_even([1, 2, 3, 4, 5, 6, 7, 8, 9]);


// "We built this city"
function Athlete (name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
/*
•What JavaScript knowledge did you solidify in this challenge?

A little bit on the differences between constructor and literal
notation.  Object property assignment.  Easier to navigate the docs
with each challenge as practice.

•What are constructor functions?

Constructor functions are very similar to Ruby classes.  You can
create multiple instances without interfering with one another.
That's probably the best I can answer.  I'll have to look over the
article provided for more understanding of the differences and
similarities.

•How are constructors different from Ruby classes (in your research)?

It doesn't look like there's much of a difference, if any.
All I can see is that perhaps with JavaScript's loose ruleset
you might end up with more reactive 'classes' than you would in
Ruby which would not be able to initialize the class without the
right number of arguments.







*/