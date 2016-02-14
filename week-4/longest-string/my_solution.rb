# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  # Your code goes here!
  list_of_words.each do
    
    if list_of_words.at(0).length > list_of_words.at(-1).length
      list_of_words.pop
    else
      list_of_words.delete_at(0)
    end
    
    if list_of_words.length > 1
      list_of_words.each do
        
        if list_of_words.at(0).length > list_of_words.at(-1).length
          list_of_words.pop
        else
          list_of_words.delete_at(0)
        end
      end
    end
  end
  puts list_of_words
end

my_list = ['smooch', 'spouse', 'toes', 'fingers']
longest_string(my_list)


