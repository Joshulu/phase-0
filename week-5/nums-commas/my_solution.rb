# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

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
def seperate_comma(any_int)
  int_s = any_int.to_s
  int_arr = int_s.split(//)
  counter = 4
  digit_place = -4
  
  # if int_arr.length == 0
    # return nil
    
  # elsif int_arr.length > 3
    until counter > int_arr.length do
      int_arr = int_arr.insert(digit_place, ",")
      counter += 4
      digit_place -= 4
    end
    p int_arr.join
    return int_arr.join
  # else
    # return int_s
  # end
end

seperate_comma(9999999999)
# 2. Refactored Solution




# 3. Reflection
