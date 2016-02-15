# Simple Substrings

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def welcome(address)
  welcoming = "Welcome to California"
  moving = "You should move to California"
  value = address.include?"CA"
  
  if value == true
    return welcoming
  else
    return moving
  end
end