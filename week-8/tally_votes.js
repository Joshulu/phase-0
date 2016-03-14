// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Saralis Rivera
// This challenge took me [5] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}


/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
/* 1. iterate through votes
   2. iterate through votes properties
   3. tally vote count
   4. identify largest number of votes for each position
   5. assign winners via officers object



*/

// __________________________________________
// Initial Solution
// var arr = [];

// for (var voter in votes) {
//   var position = votes[voter];
//   for(var prop in position){
//     var name = position[prop];
//     arr = arr.concat(name);
//   };
// };

// var counter = -1;
// var counter2 = 0;
// for (var prop in voteCount) {
//   var position = voteCount[prop];
//   // for (var tally in position) {
//     for (counter += 1; arr[counter] != undefined; counter += 4) {
//       if (position[arr[counter]] == undefined) {
//         position[arr[counter]] = 1;
//       }
//       else {
//         position[arr[counter]] += 1;
//       };
    
//     // };
//   };
//   counter = counter2;
//   counter2 += 1;
//   if (counter2 == 4) { continue; };
// };


// var arr2 = [];
// counter2 = 0;

// for (var positions in voteCount) {
//   var candidates = voteCount[positions];

//   for (var nominee in candidates) {
//     var tally = candidates[nominee];
//     arr2.push([nominee, tally]);
//   };

//   while (arr2.length > 1) {
//     if (arr2[0][1] < arr2[1][1]) {
//       arr2.splice(0, 1);
//     }
//     else {
//       arr2.splice(1, 1);
//     };
//   };
    
//   var winner = arr2[0][0];
//   switch (counter2) {
//     case 0:
//       officers.president = winner;
//       break;
//     case 1:
//       officers.vicePresident = winner;
//       break;
//     case 2:
//       officers.secretary = winner;
//       break;
//     case 3:
//       officers.treasurer = winner;
//       break;
//   };
//   arr2.splice(0, 1);
//   counter2 +=1
// };
// console.log(officers);


// __________________________________________
// Refactored Solution

var selectWinner = function(some_string, property){
//   for (property in officers) {
//     var propOff = officers[property];
 
//     if (propOff != undefined){
//       continue;
//     };
//     console.log(officers.property);
//     propOff = some_string;
//   };
  
    switch (counter2) {
    case 0:
      officers.president = winner;
      break;
    case 1:
      officers.vicePresident = winner;
      break;
    case 2:
      officers.secretary = winner;
      break;
    case 3:
      officers.treasurer = winner;
      break;
  };
};

var arr = [];

for (var voter in votes) {
  var position = votes[voter];
  for(var prop in position){
    var name = position[prop];
    arr = arr.concat(name);
  };
};

var counter = -1;
var counter2 = 0;
for (var prop in voteCount) {
  
  var position = voteCount[prop];
  for (counter += 1; arr[counter] != undefined; counter += 4) {
    if (position[arr[counter]] == undefined) {
      position[arr[counter]] = 1;
      continue;
    };
    position[arr[counter]] += 1;
  };
  
  counter = counter2;
  counter2 += 1;
};


var arr2 = [];
counter2 = 0;

for (var positions in voteCount) {
  var candidates = voteCount[positions];
  
  for (var nominee in candidates) {
    var tally = candidates[nominee];
    arr2.push([nominee, tally]);
  };

  while (arr2.length > 1) {
    if (arr2[0][1] < arr2[1][1]) {
      arr2.splice(0, 1);
    }
    else {
      arr2.splice(1, 1);
    };
  };
    
  var winner = arr2[0][0];
  selectWinner(winner, positions);

  arr2.splice(0, 1);
  counter2 +=1
};
console.log(officers);




// __________________________________________
// Reflection

/*
•What did you learn about iterating over nested objects in JavaScript?

That it isn't as easy as it seems.  commented out, above, we tried accessing nested
data, but it wouldn't work the way we thought it would.  We tried everything we could
think of from educated guesses to random changes just to try to get something working.
We weren't able to get it to work how we wanted, but we did get it to work in some way.

•Were you able to find useful methods to help you with this?

Certainly splice helped a lot.  We couldn't find much else as JavaScript is docs
aren't as easy to navigate as the Ruby docs.  And things are named in a way I'd be
familiar with in Ruby, but in JavaScript it works differently.

•What concepts were solidified in the process of working through this challenge?

Giving up is sometimes the best thing to do.  Well, giving up on a path you've taken
to try a different approach.  We got stuck in a rut of hmmmmmmm and couldn't get out
of it.  This challenge took a long time for us because we were trying to get it
perfectly how we wanted it, even though it was a lost cause.

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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)

