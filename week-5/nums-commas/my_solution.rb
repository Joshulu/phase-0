# Numbers to Commas Solo Challenge

# I spent [4] hours on this challenge. (But got it correct in about 1 *see below)

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? 
# integer
# What is the output? (i.e. What should the code return?)
# integer with appropriate commas (e.g.: 1,000,000)
# What are the steps needed to solve the problem?
=begin
create counter variable

take and seperate an integer into an empty container

IF integer length is greater than 3(or integer is greater than 999)

  WHILE counter is less than (or equal to?) length of integer
  
    starting from back of integer
    iterate through and place commas after every third digit
    count up/down counter
    
  END WHILE
  
ELSE return value of integer without commas
END IF

or
IF ^^as above ^^

  UNTIL counter is equal to integer length
  
    from last digit, place commas every third digit
    count up/down counter
    
  END UNTIL
  
ELSE ^^as above^^
END IF ^^as above^^
notes: 3 digit numbers do not produce commas...add IF flow control
=end


# 1. Initial Solution
=begin
this was my initial solution which does indeed add commas in the appropriate

places for any sized integer (at least as large as holding down any numbers

key for several seconds) but for some reasons the tests fail it.  I wrote it in

about 45 minutes, but kept tweaking and testing it over and over for about 2 or

more hours.  I will attempt rewriting it below to more closely follow week 5

recap from Andrew Larson (more as a step by step process of flow-control and writing

to pass the tests)
=end

# initial solution (not passing tests, functional)
# ****spelling error, entire code now passes tests****used 'seperate' not 'separate'
=begin
def separate_comma(any_int)
  int_s = any_int.to_s
  int_arr = int_s.split(//)
  counter = 4
  digit_place = -4
  
  until counter > int_arr.length do
    int_arr.insert(digit_place, ",")
    counter += 4
    digit_place -= 4
  end
  return int_arr.join
end
=end

# new solution below (not passing tests, incomplete, functional for what is complete)
# ****fixed initial solution*****
=begin
def seperate_comma(any_int)
  int_s = any_int.to_s
  int_arr = int_s.split(//)
  length = int_arr.length
  
  if length <= 3
    p int_s
    return int_s
  elsif length > 3 && length <= 6
    int_arr.insert(-4, ",")
    p int_arr.join
    return int_arr.join
    # see reflection, code does not work to pass test, but I will leave it here for reference
  else
    return nil
  end
end
=end

# 2. Refactored Solution


def separate_comma(any_int)
  int_arr = any_int.to_s.split(//)
  counter = 4
  digit_place = -4
  
  until counter > int_arr.length do
    int_arr.insert(digit_place, ",")
    counter += 4
    digit_place -= 4
  end
  return int_arr.join
end

# 3. Reflection
=begin
-What was your process for breaking the problem down? What different approaches did you consider?

I just tried to do it step by step.  Noted what the input and output would be.  Realized that I had to do a conversion in the middle somewhere.  Having both the start and end made it easy to work towards the middle.

-Was your pseudocode effective in helping you build a successful initial solution?

Definitely, I tried to do it line for line at first.  I ended up tweaking at the same time because of my spelling mistake making the code not test correctly.  So most of my old solution is gone.

-What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

The new method would be .insert which allows me to specify an index in an array for which I want to insert a new object.  Over the weeks I've grown quite fond and comfortable with Ruby docs.

-How did you initially iterate through the data structure?

I suppose if we take my second attempt as my initial solution, I tried using flow control to go through the integer.  I didn't iterate through at all really, except with .insert to place the comma.  

-Do you feel your refactored solution is more readable than your initial solution? Why?

Definitely.  If I continued my second solution without realizing my mistake: I would've ended up with a lot of lines and it would be quite DRY.  I separated variables where I think they should be.

=end









