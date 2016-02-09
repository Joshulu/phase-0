puts "Please enter your first name: "
first_name = gets.chomp
puts "Please enter your middle name: "
middle_name = gets.chomp
puts "Please enter your last name: "
last_name = gets.chomp

puts "Hello there, #{first_name} #{middle_name} #{last_name}!"


puts ""
puts "What's your favorite number?"
number = gets.chomp
bigger_number = number.to_i + 1
puts "Well how about #{bigger_number}? It's bigger AND better!"


=begin

links:

https://github.com/Joshulu/phase-0/blob/master/week-4/address/my_solution.rb

https://github.com/Joshulu/phase-0/blob/master/week-4/math/my_solution.rb


How do you define a local variable?

Define a variable, but inside of a method.:

def method_name
  x = 2
end

How do you define a method?

def method
  code code code
end

What is the difference between a local variable and a method?

a method is a set of code that can be run repeatedly simply by stating its name later on in the code.  A local variable is just something a method might use.  You might have a method like so:

name = Joshulu
puts name

def name_method
  name = Josh
  puts name
end

name_method
puts name


this method would return Josh, but the two seperate name variables will stay seperate: Output:

Joshulu
Josh
Joshulu
  

How do you run a ruby program from the command line?

ruby file-name.rb

How do you run an RSpec file from the command line?

rspec file-name.rb

you need to set up an rspec file that actually does the testing you want it to do though.

What was confusing about this material? What made sense?

It was all review from before so none of it was confusing really.  It was a good review for me.


=end