# I worked on this challenge [by myself].
# This challenge took me [#] hours.

# Pseudocode
=begin
sequence is num += previous num

for comparison number
IF number == fibNum
  return true
ELSE
  return false
check number against fibNum each time fibNum iterates to next highest fibNum.
IF fibNum > number
  return false


=end


# Initial Solution

# def is_fibonacci?(num)
#   fibNum = [1, 1]
#   index = 1
  
#   while fibNum[index] < num do
#     fibNum.push(fibNum[index] + fibNum[index - 1])
#     index += 1
#   end
#   if fibNum[index] == num
#     true
#   else
#     false
#   end
# end

# Refactored Solution

def is_fibonacci?(num)
  fibArr = [1, 1]
  
  while fibNum < num do
    fibArr.push(fibArr[1] + fibArr.shift)}
  end
  
  if fibArr[1] == num
    return true
  end
  false
end

is_fibonacci?(100)


# Reflection
=begin
•What concepts did you review or learn in this challenge?

It mostly dealt with just accessing the array that held
the fibonacci sequence.  I did play around and found
shift useful for the adding and pushing process, but also
it improves performance were this the program to venture
into the unknown of fibonacci numbers.  It keeps the
array size down to two which is much more easily
manageable.

•What is still confusing to you about Ruby?

Not much really.  I'm glad to be back at it after JS and
SQL.

•What are you going to study to get more prepared for Phase 1?

I guess just taking a stroll through the docs and doing
a few more review problems

=end
