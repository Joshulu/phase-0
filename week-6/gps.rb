# Your Names
# 1) Joshua Lugo
# 2) Saralis Rivera

# We spent [2] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  if library.key?(item_to_make) == false
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size

  if remaining_ingredients == 0
    p "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    p "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items:"
    library.each do |food, size|
      if size <= remaining_ingredients
        amount = remaining_ingredients / size
        puts "You can make #{amount} of #{food}."
      end
    end
    
  end  
  
end



# serving_size_calc("pie", 7)
# serving_size_calc("pie", 8)
# serving_size_calc("cake", 5)
# serving_size_calc("cake", 7)
# serving_size_calc("cookie", 1)
# serving_size_calc("cookie", 10)
# serving_size_calc("THIS IS AN ERROR", 5)
# serving_size_calc("cookie", 0)
serving_size_calc("pie", 12)
#  Reflection
=begin

•What did you learn about making code readable by working on this challenge?

Condensing code isn't always the best idea.  Sometimes separating it makes it more readable.  Having elements separated by blank space can make it easier on the eyes.  It's as much technical as it is esthetic

•Did you learn any new methods? What did you learn about them?

I learned about Hash#key?(some_key) method.  It looks through a hash's keys and compares it to some_key.  It returns true if the hash has the key and false if it doesn't.

•What did you learn about accessing data in hashes? 

I didn't really learn much more from this challenge.  Accessing the value through hash[key], or in a #each case, you can say something like
    hash.each do |key, value|
      stuff...stuff...stuff
    end
  key is the key and value the value for each key value pair.

•What concepts were solidified when working through this challenge?

Definitely, accessing hash data.  I knew a decent amount before, but it's always good to hear that I do indeed know how to access a hash correctly.

=end



