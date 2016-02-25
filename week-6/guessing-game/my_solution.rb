# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:integer
# Output: boolean, symbols
# Steps:
=begin
initialize with an integer
guess function should also take an integer
  function evaluates whether its integer is less-than, greater-than, or equal to initialized integer.
  function gives feedback to user about whether they were too high, too low, or that they answered correctly.
solved? function should evaluate if guess was correct or not, returing true or false respectively

=end


# Initial Solution

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
  end

  # Make sure you define the other required methods, too
  def solved?
    
  end
  
  def guess(guess)
    @guess = guess
    if @guess == @answer
      return :correct
    elsif @guess > @answer
      return :high
    else
      return :low
    solved?
  end
  

end




# Refactored Solution






# Reflection

