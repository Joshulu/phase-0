# Factorial

# I worked on this challenge [by myself, with: Hanna Taylor].


# Your Solution Below
def factorial(number)
  # Your code goes here
  i = number - 1
  if number == 0
    return 1
  elsif number < 0
    return nil
  else
    while i > 0 do
      number = number * i
      i-=1
    end
    return number
  end
end


factorial(5)

