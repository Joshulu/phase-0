What does puts do?

puts returns nil and prints to the screen

What is an integer? What is a float?

an integer is a whole number.  Negative or positive.  A float is basically any other number.  1 is an integer.  1.0 is a float.

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

float division is the mathematical version.  It gives you an exact decimal answer to your equation.  Integer division does not.  It rounds your decimal down.  Going with the example in the book, integer division is good for determining simple limits.  How many movies can you see with x dollars?  How many hot dogs can you buy?  It applies to more real world activities.  People don't really want to sell you half a hot dog or half a movie, so it doesn't matter if you could technically afford half.

'''ruby
puts 365*24

puts 60*24*365*10
'''


Links

https://github.com/Joshulu/phase-0/blob/master/week-4/defining-variables.rb

https://github.com/Joshulu/phase-0/blob/master/week-4/simple-string.rb

https://github.com/Joshulu/phase-0/blob/master/week-4/basic-math.rb

-How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby follows whatever order of operations it was designed to in terms of combining them. (There are surprisingly different versions).  But in terms of floats and integers, it handles floats like you would handle the math on paper.  Going into decimals if you have to.  Integers, on the other hand, are always rounded down to the nearest whole number.

-What is the difference between integers and floats?

As above, the difference is the amount of precision, and how math operations work with the numbers.  (0.0 is more precise than 0)  You retain that precision when working with floats, but not with integers.

-What is the difference between integer and float division?

As above, when dividing, you may end up with x.y.  If working with integers it will simply turn into x, but as a float, it will stay x.y

-What are strings? Why and when would you use them?

Strings are a series of letters, numbers, and characters.  You would use a string to do anything involving names, places, user input and computer output.

-What are local variables? Why and when would you use them?

Local variables are those that are accessed only within the area they are defined.  You could theoretically have an x = 2, but somewhere else, you could specifically use another x  but as x=100.  The idea of that is, well I'm not sure why it's useful beyond placeholding variables or temporary ones.

-How was this challenge? Did you get a good review of some of the basics?

It was a decent review.  I personally didn't feel like it was necessary, but I feel a bit more confidant since I took it as a test to see how much I remembered.


