# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [.5] hours on this challenge.

# 0. Pseudocode

# Input: Integer
# Output: integer
# Steps:
# create argument error
# initialize sides with number of sides
# sides method needs to return number of sides
# roll method needs to return random number from 1 to number of sides


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     # code goes here
#     unless sides >= 1
#       raise ArgumentError.new("Number of sides must be at least 1")
#     end
#     @sides = sides
#   end

#   def sides
#     # code goes here
#     return @sides
#   end

#   def roll
#     # code goes here
#     return rand(1..@sides)
#   end
# end

# 3. Refactored Solution

class Die
  def initialize(sides)
    # code goes here
    unless sides >= 1
      raise ArgumentError.new("Number of sides must be at least 1")
    end
    @sides = sides
  end

  def sides
    # code goes here
    return @sides
  end

  def roll
    # code goes here
    return rand(1..@sides)
  end
end


# 4. Reflection

=begin
•What is an ArgumentError and why would you use one?

it's pretty much a barrier users of your code have to pass, other wise it, at the least, won't run properly.

•What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

There weren't any new ones except for raise.  But that was very simple to use.  No real challenges this assignment.

•What is a Ruby class?

A Ruby class is an object like most things in Ruby.  Just like "Fred" is an instance of a String class and 1 is an instance of Integer.

•Why would you use a Ruby class?

Well, like "Fred" and 1, we want to be able to define several things.  It would be nearly useless if all we could do with strings was "Fred" and if we only could use the number 1.  So we create ways to make multiple instances.  "Fred" "Mike" "Sara" "Smile" 1 2 3 4 5 etc.  We want all of those things to be different, but act in a similar way.

•What is the difference between a local variable and an instance variable?

a local variable is one that is only accessable within its scope.  An instance variable is technically a global variable but when used within the confines of the class and only the class, we can use these variables across methods we want to create within the class.

•Where can an instance variable be used?

Like above:anywhere within the class. Although technically anywhere at all, that defeats the purpose of a class.

=end


