# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: Hanna Taylor].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of numbers
# Output: array elements added together
# Steps to solve the problem.
=begin

get each element seperated
.each ?
.size and iterate/loop through?

add them up
iterate w/.each or .times, and add the individual elements together

=end

# 1. total initial solution

def total(list_of_numbers)
  array_total = 0
  i = list_of_numbers.length - 1
  
  while i > -1 do
    array_total += list_of_numbers[i]
    puts array_total
    i -= 1
  end
  return array_total
end

array_numbers = [1, 2, 3, 4, 5]
total(array_numbers)

# 3. total refactored solution

def total(list_of_numbers)
  array_total = 0
  i = list_of_numbers.length - 1
  
  while i > -1 do
    array_total += list_of_numbers[i]
    puts array_total
    i -= 1
  end
  return array_total
end

array_numbers = [1, 2, 3, 4, 5]
total(array_numbers)
# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of words/strings
# Output: one string
# Steps to solve the problem.
=begin

seperate each element,
join the elements into a string

=end

# 5. sentence_maker initial solution

def sentence_maker(list_of_words)
  complete_sentence = ""
  
    complete_sentence = list_of_words.join(" ")
  return complete_sentence.capitalize.<<"."
end

array_words = ['1', '2', '3', '4', '5.']
sentence_maker(array_words)


# 6. sentence_maker refactored solution

def sentence_maker_2(list_of_words)
  complete_sentence = list_of_words.join(" ")
  return complete_sentence.capitalize<<"."
end

array_words_2 = ['The', 'bear', 'ate', 'some', 'honey.']
sentence_maker_2(array_words)

