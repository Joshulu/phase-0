# Numbers to English Words


# I worked on this challenge [by myself, with: Joseph Yoo ].
# This challenge took me [1.5] hours.


# Pseudocode
# INPUT: an integer
# 1. IF the integer is between 0-20, return the unique string
# 2. IF the integer is between 21-99, return the tens place string and attach the unique ones place string
# OUTPUT: a string representing the integer


# $arr = ["zero","one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
# $arr2 = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
# # Initial Solution
# def in_words(integer)
#   if integer < 20
#     p $arr[integer]
#   elsif integer > 20 && integer < 100
#     temp_arr = integer.to_s
#     if temp_arr[-1].to_i == 0
#       p $arr2[temp_arr[0].to_i]
#     else
#       p $arr2[temp_arr[0].to_i] + " " + $arr[temp_arr[1].to_i]
#     end
#   end
# end

# Refactored Solution

$under_twenty = ["zero","one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
$tens_arr = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

def in_words(integer)
  if integer < 20
    p $under_twenty[integer]
  elsif integer > 20 && integer < 100
    index_tens = (integer/10).floor()
    index_ones = integer % (index_tens * 10)
    
    if index_ones != 0
      p $tens_arr[index_tens] + " " + $under_twenty[index_ones]
    else
      p $tens_arr[index_tens]
    end
  end
end

# p (56/10).floor()
# gets us 5 in front
# p (56%50)
# gets us 6 in back

in_words(18)
in_words(50)
in_words(77)
in_words(16)
in_words(45)




# Reflection

=begin

•What concepts did you review in this challenge?

We went through a lot of flow control ideas, as you can see we still do have
nested if statements.  We also worked on modifying data into other data, numbers
to strings to arrays and back.  But our final solution was able to stray away
from messy conversions.

•What is still confusing to you about Ruby?

Nothing is too confusing at the moment.  I get the concepts behind the challenges.
I'm worried I'm not getting the full depth of it, but it's reassuring to come to
a point where your code looks nice and functions well.

•What are you going to study to get more prepared for Phase 1?

General object oriented design probably, a little more JavaScript.  Refresh HTML
and CSS.

=end


