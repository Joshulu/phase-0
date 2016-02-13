# Smallest Integer

# I worked on this challenge [by myself, with: by myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
  # Your code goes here!
  list_of_nums.sort!
  puts list_of_nums[0]
end

smallest_integer([30, 10, 400, 40])

=begin
to make it so the original array isn't altered
I could instead write line 16 as:

new_list = list_of_nums.sort

and line 17 as:

puts new_list[0]
=end
