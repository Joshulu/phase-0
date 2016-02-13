# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  # Your code goes here!
  list_of_nums.sort!
  puts list_of_nums[-1]
end

largest_integer([30, 10, 400, 40])

=begin
same as before, could add new array and store sorted list
in that array instead of writing over it.  But, as before,
they should be seperate arrays (one is inside the method,
and the other is outside; list_of_nums is already temporary
place holder.
=end