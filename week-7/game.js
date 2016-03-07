 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Survive the Day
// Overall mission: Wake up and make it to bed time.
// Goals:
// Characters: player,
// Objects: clothes, coffee, watch, sugar
// Functions: get clothes, get watch, get coffee, get sugar, go to work, go home go to sleep

// Pseudocode
// run through alerts that stage the scene of each phase of the game
// simple options lead to your death or not.
// 
//
//

// Initial Code
var player = {
  dead: "no",
};
var coffee = {
  
};

var get_clothes = function(char) {
  alert("You awake in your room to the drone of your alarm clock.  You shamble out of bed and realize you've slept in the past hour!\nCurse Daylight Savings!");
  
  var dressed = prompt("You shuffle for your clothes and regret skipping laundry duty yesterday do you want to wear\n\"dirty clothes\" or your \"duck pyjamas\"");
  
  char.clothes = dressed;
  return;
};

var get_coffee = function(beverage) {
  var drink = prompt("Well hurry up now!  You haven't much time!  You might want a cup of Joe before you go.  How about it, Coffee Breath?\n\"Yes\" or \"No\"");
  beverage.caffeine = drink;
  return;
};

var get_sugar = function(beverage) {
  var sweets = prompt("Would you like sugar with that coffee?\n\"Yes\" or \"No\"");
  beverage.sugar = sweets;
};

var go_to_work = function(char, beverage) {
  if (beverage.caffeine == "No") {
    alert("Yaaaaaaawwwwwnnn...you know, it's really dangerous to drive tired.  That's probably why you couldn't make it to work.  I bet a bear made it and took your job.");
    
    alert("You crash car to death.  You die.  Bear has job.");
    return char.dead = "yes";
  };
  
  if (beverage.sugar == "Yes") {
    alert("Wow...did not see that coming.  It seems bears have as much a sweet tooth as you.  It looks like sweet and savory for the bear tonight!");
    
    alert("The bear eats you to death.  You die.");
    return char.dead = "yes";
  };

  alert("You get to your interview...")
  
  if(beverage.caffeine == "Yes" && char.clothes == "dirty clothes") {
    alert("As you walk by the cubicles of the office you hear the screams of what could have been future co-workers.  You see paint pealing, flowers wilting, eyeballs melting...with your coffee breath and dirty clothes I'm surprised you survived this long.");
    
    alert("Oh wait...you didn't.  Your smelly corpse has just been carried here by the blood caffeine content.");
    
    alert("You stink to death...undeath.  No one has job anymore.");
    return char.dead = "yes";
  };
  
  alert("Your potential boss looks you over for a moment.\n\"Good thing it is Casual Friday because those pyjamas are awesome.  Congrats, you start work now!\"");
  
  var drink = prompt("Working is going well for you.  But as the day goes on you get that 2pm tired feeling...grab another cup of coffee?\n\"Yes\" or \"No\"");
  
  beverage.caffeine = drink;
  
  if (beverage.caffeine == "Yes") {
    get_sugar(beverage);
  };
  
};

var go_to_bed = function(char, beverage) {
  alert("You made it home.  It's late.  It's probably best to go to sleep now...")
  
  if (beverage.caffeine == "Yes") {
    alert("But...what's going on...oh no.  Remember that last cup of coffee you had?  Now that you think about it...that was a full cup of espresso.  There's no way you'll fall asleep now.\nNot now...not ever...");
    
    alert("You stay up to death.  You die.  You get fired.");
    return char.dead = "yes";
  };
  
  alert("Yeah that's it...get comfy...you had a long day at work.  You deserve a good night's rest.");
  
  alert("Game Over:\nYou Win");
  return;
};

var run_game = function(){
  alert("You're dreaming a little dream.\n\nSound asleep...\n\nsomething...something is gnawing at your consciousness...\n\n...oh yeah...you have a job interview today\n");
  
  get_clothes(player);
  get_coffee(coffee);
  
  if (coffee.caffeine == "Yes") {
    get_sugar(coffee);
  };
  
  go_to_work(player, coffee);
  
  if (player.dead == "yes") {
    return;
  };
  
  go_to_bed(player, coffee);
  
  if (player.dead == "yes") {
    return;
  };
  
  return;
};

run_game();
// Refactored Code
// There's probably several ways to refactor this.  I spent about 7 hours on the project
// from a previous attempt that I accidentally made to large to handle and this one.
// I did research for about 1.5 hours looking at different ways to print out to the user
// and collect information and found stuff about readline and stdin but they didn't work
// natively.  

// So for the sake of my sanity, I'll skip a refactor attempt.

// If I were going to, I would find a way to check for player death more concisely.
// I would consider a single fail message instead of unique ones for readability...but
//    I like it for the game that it is.
// I would also add more features/paths to take




// Reflection
/*
•What was the most difficult part of this challenge?

Limiting the scope of the challenge.  If it were in Ruby, I would feel much more comfortable.
But it being in JavaScript, I am limited by it being a new language and having ultimate
challenge freedom.

•What did you learn about creating objects and functions that interact with one another?

Sometimes it doesn't interact the way you want.  I had to remove a watch feature within
the player clothes.  It wasn't working quite the way I expected it to.  Which seems to
be a theme of JavaScript.

•Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

N/A

•How can you access and manipulate properties of objects?

you can access them using the following format:

object.property.value

and you can have any number of sub-values there-after

if you enter a property that doesn't exist and assign it a value
JavaScript will create a new property for the object and assign it
that value


*/


