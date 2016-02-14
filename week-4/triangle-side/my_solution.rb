# I worked on this challenge [by myself, with: Hanna Taylor ].


# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!
  
  if a <= 0 or b <= 0 or c <= 0
    return false
    
  elsif (a ** 2) + (b ** 2) == (c ** 2)
    return true
  elsif (b ** 2) + (c ** 2) == (a ** 2)
    return true
  elsif (c ** 2) + (a ** 2) == (b ** 2)
    return true
    
  elsif a == b and b == c and a == c
    return true
    
  elsif a + b < c
    return false
  elsif b + c < a
    return false
  elsif c + a < b
    return false
    
  elsif a == b or b == c or a == c
    return true
    
  else
    return false
  end
end

valid_triangle?(3, 4, 5)