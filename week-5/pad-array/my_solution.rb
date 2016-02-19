# Pad an Array

# I worked on this challenge [by myself, with: Greg Toprak]

# I spent [.75] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# > an array, integer, optional value arg
# What is the output? (i.e. What should the code return?)
# > the array having been padded
# What are the steps needed to solve the problem?

# > check size of array, compare to pad length
# > if shorter, then append the bonus values until correct length.
# > return padded array


# 1. Initial Solution
=begin
def pad!(array, min_size, value = nil) #destructive
    size = array.length
    if size >= min_size
        return array
    else
        (min_size - size).times { array.push(value) }
        return array
    end
end

def pad(array, min_size, value = nil) #non-destructive
    new_array = []
    array.each { |x| new_array.push(x) }

    size = array.length
    if size >= min_size
        return new_array
    else
        (min_size - size).times { new_array.push(value) }
        return new_array
    end
end

=end

# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
    size = array.length
    remaining_size = min_size - size
    
    if remaining_size > 0
        remaining_size.times { array.push(value) }
    end
    return array
end

def pad(array, min_size, value = nil) #non-destructive
    new_array = Array.new.concat(array)
    
    size = array.length
    remaining_size = min_size - size
    
    if remaining_size > 0
        remaining_size.times { new_array.push(value) }
    end
    return new_array
end

# 4. Reflection
=begin
-Were you successful in breaking the problem down into small steps?

Yes I think so.  Small enough to not be a word for word solution, but big enough to have wiggle room.

-Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

Definitely.  We knew what we wanted to do and with our combined skill level, at least one of us knew how to procede.  

-Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

Yes, it was.  I think we had a good understanding of how to handle arrays (at least for this challenge).  Our psuedocode may be a bit bare, but we interpreted it into a working piece.

-When you refactored, did you find any existing methods in Ruby to clean up your code?

Yes, we looked at concat for the non-destructive method.

-How readable is your solution? Did you and your pair choose descriptive variable names?

I think it is pretty readable.  For the scope of the solution, the variables are named adequately.  We don't have a small army of varialbes to keep track of, so I thought simple was better.

-What is the difference between destructive and non-destructive methods in your own words?

Destructive methods take an object argument and change that object throughout the code.  For example, if pi = 3.14 and you run it through a method, bakery!, it would(could) return our same pi, but instead of pi = 3.14, pi = "yummy" .
If it was non-destructive, we would take our pi, run it through our bakery, and out comes our "yummy" but pi = 3.14 still.

=end


