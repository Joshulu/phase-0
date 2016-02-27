# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: David Ramirez].
# I spent [2] hours on this challenge.

# Pseudocode

# Input: 16 digits
# Output: tru or false
# Steps: if number = 16 and argument error
# slit the 16 nums into individual digits
# double every even
# if new number becomes double digit split agin 
# add all the digits
# module by 10
# if remainder = false else = true


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(numbers)
#     if numbers.to_s.length != 16
#       raise ArgumentError.new('Numbers should be 16 digits long')
#     end
#     @numbers = numbers
#     @card_nums = @numbers.to_s.split(//)
#   end
  
#   def check_card
#     multiply_even
#     sum_nums
#     return multiple
#   end
  
#   def multiply_even
#     counter = 0
#     i = -2
#     while counter < 8 do
#       @card_nums[i] = @card_nums[i].to_i * 2
#       i -= 2
#       counter += 1
#     end
#   end
  
#   def sum_nums
#     @sum = 0
#     @card_nums.each do |num|
#       if num.to_s.length == 2
#         num.to_s.split(//)
#       end
#     end
    
#     @card_nums.each do |num|
#       @sum += num.to_i
#     end
#   end
  
#   def multiple
#     if @sum % 10 == 0
#       return true
#     else
#       return false
#     end
#   end
  
# end

# Refactored Solution

class CreditCard
  def initialize(numbers)
    if numbers.to_s.length != 16
      raise ArgumentError.new('Numbers should be 16 digits long')
    end
    @numbers = numbers
    @card_nums = @numbers.to_s.split(//)
  end
  
  def check_card
    multiply_even
    sum_nums
    multiple
  end
  
  def multiply_even
    @card_nums.map! do |num|
      if @card_nums.index(num).even?
        num.to_i*2
      else
        num = num.to_i
      end
    end
  end
  
  def sum_nums
    @sum = 0
    @card_nums.each do |num|
      if num > 9
        @sum += (num-10+1)
      else
        @sum += num
      end
    end
  end
  
  
  def multiple
    return @sum % 10 == 0 ? true : false
  end
  
end

credit_card = 1234567891234567
card = CreditCard.new(credit_card)
card.check_card

# Reflection
=begin

•What was the most difficult part of this challenge for you and your pair?

I think the hardest part was the doubling and adding together portion.  It was tricky to get it right(We didn't get it right until we refactored).  After refactoring it was easier to see where we went wrong earlier.

•What new methods did you find to help you when you refactored?

even? and map!
We used even? instead of counting back from index -2, since it would produce the same result.
And we used map! in order to change our card number array from strings back to integers.

•What concepts or learnings were you able to solidify in this challenge?

We spent half the time trying to figure out why our code was failing without knowing where it was failing or how exactly it was failing.  We did print tests throughout, but we must have skipped that portion somehow.
The take-away from that is, even if you tested something right after you wrote it, retest it at the end.  Make sure it works consistently and properly.


=end