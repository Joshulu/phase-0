# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Jack Baginski]

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? array
# What is the output? (i.e. What should the code return?) a new array 
# What are the steps needed to solve the problem?
# Create empty container
# count all instances of array
# =>store count and instance together in container
# =>get rid of instances with lowest count, keeping ties
# return instances with highest count in a container


# 1. Initial Solution
=begin
def mode(array)
  hash = Hash.new(0)
  array.each { |key| hash[key] += 1 }
  hash = hash.select { |key, value| value == hash.values.max }
  print hash.keys
  return hash.keys
end
=end

# 3. Refactored Solution

def mode(array)
  hash = Hash.new(0)
  array.each { |key| hash[key] += 1 }
  hash = hash.select { |key, value| value == hash.values.max }

  return hash.keys
end


# 4. Reflection
=begin
-Which data structure did you and your pair decide to implement and why?

We decided to convert the array into a hash, so we could have a way to count it easier(at least we thought it was easier/more accessable).

-Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 

I don't think we were more successful either with my last pair or alone(vague question? unsure what exactly it's asking).  Even if an idea did get out of place, we were able to explain it to each other well enough that we agreed on it being in pseudocode

-What issues/successes did you run into when translating your pseudocode to code?

A lot.  Actually implementing it in a basic logic format proved extremely challenging.  We tried a lot and could almost get it to work.  We didn't actually succeed in creating a "good" initial solution.  But we were able to research the docs to find useful methods.

-What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

We used .select, .values, .keys, and .max.
They were all pretty self explanitory so they weren't that difficult to use.
I would say that they were all good ones for sure.  .select for removing unnecessary key/values, .values  to set a comparison, .max to help set the comparison for select, and .keys to return the hash keys as an array.

=end


