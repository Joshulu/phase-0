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
