# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  # Your code goes here!
  list_of_words.each do
    
    if list_of_words.at(0).length < list_of_words.at(-1).length
      list_of_words.pop
    else
      list_of_words.delete_at(0)
    end
    
    if list_of_words.length > 1
      list_of_words.each do
        
        if list_of_words.at(0).length < list_of_words.at(-1).length
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
shortest_string(my_list)


