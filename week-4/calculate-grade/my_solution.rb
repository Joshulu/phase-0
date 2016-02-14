# Calculate a Grade

# I worked on this challenge [by myself, with: Hanna Taylor].


# Your Solution Below

def get_grade(score)
  if score >= 90
    return "A"
  elsif score >=80 and score <90
    return "B"
  elsif score >=70 and score <80
    return "C"
  elsif score >=60 and score <70
    return "D"
  else score <60
    return "F"
  end
end