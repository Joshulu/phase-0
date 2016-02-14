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
  
  list_of_nums.each do
    if list_of_nums[0] > list_of_nums[-1]
      list_of_nums.pop
    else
      list_of_nums.delete_at(0)
    end
    if list_of_nums.length > 0
      list_of_nums.each do
        if list_of_nums[0] > list_of_nums[-1]
          list_of_nums.pop
        else
          list_of_nums.delete_at(0)
        end
      end
    end
  end
  puts list_of_nums
end

list = [30, 10, 400, 40]
largest_integer(list)



=begin
refactored:

def largest_integer(list_of_nums)
  new_list = list_of_nums.sort
  puts new_list[-1]
end

=end
