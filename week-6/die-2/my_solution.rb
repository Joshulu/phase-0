# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: array
# Output: string, integer
# Steps:
=begin
argument must be array, if empty, return an error
count elements in the array and return the count for number of sides
run through the array and pick an element at random
return the string at that element


=end


# Initial Solution

=begin
class Die
  def initialize(labels)
    unless labels.length != 0
      raise ArgumentError.new("Must be an array of strings")
    end
    unless labels != nil
      raise ArgumentError.new("Must be an array of strings")
    end
    @labels = labels
    @sides = labels.length

  end

  def sides
    return @sides
  end

  def roll
    value = rand(0..(@sides - 1))
    return @labels[value]
  end
end
=end

# Refactored Solution

class Die
  def initialize(labels)
    if labels.length == 0
      raise ArgumentError.new("Must be an array of strings")
    elsif labels == nil
      raise ArgumentError.new("Must be an array of strings")
    else
      labels
    end
    @labels = labels
    @sides = labels.length

  end

  def sides
    return @sides
  end

  def roll
    value = rand(0..(@sides - 1))
    return @labels[value]
  end
end

# Reflection

=begin
•What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

The main differences were working with an array which starts at index 0 and raising multiple argument errors.  Besides that, everything else is the same.

•What does this exercise teach you about making code that is easily changeable or modifiable? 

Well, it's easy to change and therefore easy to trace when something breaks, when you use global variables like the instance variables.  Sometimes though it doesn't make sense to change them even if you are granting access to them.

•What new methods did you learn when working on this challenge, if any?

N/A

•What concepts about classes were you able to solidify in this challenge?

I don't think it solidified anything in particular.  Except that it's a lot of work to create good, reusable code that works for each instance of a class.

=end


