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
=begin
class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
  end

  # Make sure you define the other required methods, too
  def solved?
    if @last_guess == :correct
      return true
    else
      return false
    end
  end
  
  def guess(guess)
    @guess = guess
    if @guess == @answer
      @last_guess = :correct
      return @last_guess
    elsif @guess > @answer
    @last_guess = :high
      return @last_guess
    else
      @last_guess = :low
      return @last_guess
    end
  end

end
=end
# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def solved?
    @last_guess == :correct ? true : false 
  end
  
  def guess(guess)
    if guess == @answer
      @last_guess = :correct
    elsif guess > @answer
      @last_guess = :high
    else
      @last_guess = :low
    end
    return @last_guess
  end

end

# Reflection
=begin

•How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

Well let's look at our code here: our instance variables are both the answer and the guessing(well, the guess results).  If we think about creating a new instance of our class, we initialize it with an integer that needs to be guessed; that sounds exactly like what someone would do if they thought of a number and started a real world guessing game.  The game can't start if you don't have something to be guessed.  Our guessing works the same.  We give the code(our brain) our guess and hold on to it.  When we call solved?, we're asking "Hey, is this number correct?" and they'll say "yes" or "no" accordingly.

•When should you use instance variables? What do they do for you?

You should use them when you would want your information to be accessed by other methods in your class definition.  They let other methods access and manipulate the data the variable points to.

•Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Flow control is like building some sort of water purifier.  We tell the code(water) "hey, if you're what I'm looking for(clean water) then you can do this, otherwise you need to get treated this way(because it's dirty water)."  

I didn't really have any trouble with it this time.  The goal was pretty straight forward.

•Why do you think this code requires you to return symbols? What are the benefits of using symbols?

Symbols load more quickly than strings and are stored in a bank of symbols along with built in symbols.  Other than their immutability and load speed, I'm not sure why symbols are important to use here.



=end