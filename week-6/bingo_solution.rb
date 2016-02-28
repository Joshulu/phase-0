# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [2] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here:
  # create empty containers for b,i,n,g,o, and use random number 1-100.
  # pair those two together(perhaps as key value?)

# Check the called column for the number called.
  #fill in the outline here
  # IF letter matches a column, search for the number in the column.(iterate through multiple stacks perhaps)

# If the number is in the column, replace with an 'x'
  #fill in the outline here
  # IF number is there, #map! it, or otherwise replace with an 'x'

# Display a column to the console
  #fill in the outline here
  # same as display board but with more arguments?

# Display the board to the console (prettily)
  #fill in the outline here
  # just print it out nicely with BINGO at top
  
# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end
  
#   def num_and_letter
#     @num = rand(1..100)
#     @letter = rand(0..4)
#     @p_letter
    
#     case @letter
#     when 0
#       @p_letter = "B "
#     when 1
#       @p_letter = "I "
#     when 2
#       @p_letter = "N "
#     when 3
#       @p_letter = "G "
#     else
#       @p_letter = "O "
#     end
    
#     puts @p_letter + @num.to_s
#   end

#   def check_board
#     @bingo_board.each do |row|
#       if row[@letter] == @num
#         row[@letter] = "X"
#       end
#     end
#   end
  
#   def show_board
#     @bingo_board.each do |row|
#       p row
#     end
#     puts
#   end
# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end
  
  #optional
  def create_board
    @legal_board = Array.new(5) { Array.new(5) }
    b_list = [
      [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],
      [16,17,18,19,20,21,22,23,24,25,26,27,28,29,30],
      [31,32,33,34,35,36,37,38,39,40,41,42,43,44,45],
      [46,47,48,49,50,51,52,53,54,55,56,57,58,59,60],
      [61,62,63,64,65,66,67,68,69,70,71,72,73,74,75]]
    b_counter = 0
    
    @legal_board.each do |row|
      while b_counter < 5
        row[b_counter] = b_list[b_counter].sample
        
        del_formula = row[b_counter] - (1 + (15 * b_counter))
        
        b_list[b_counter].delete_at(del_formula)
        b_counter += 1
      end
      b_counter = 0
    end
    @legal_board[2][2] = "X"
  end
  
  def num_and_letter
    @num = rand(1..100)
    @letter = rand(0..4)
    
    case @letter
    when 0
      p_letter = "B "
    when 1
      p_letter = "I "
    when 2
      p_letter = "N "
    when 3
      p_letter = "G "
    else
      p_letter = "O "
    end
    
    puts p_letter + @num.to_s
  end

  def check_board
    @bingo_board.each do |row|
      if row[@letter] == @num
        row[@letter] = "X"
      end
    end
  end
  
  def show_board
    puts "[B   I   N   G   O]"
    @bingo_board.each do |row|
      p row
    end
    puts
  end
  
  def show_legal
    puts "[B   I   N   G   O]"
    @legal_board.each do |row|
      p row
    end
    puts
  end
  
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.show_board
# repeat these three until game win,(copy paste a bunch below, although we could loop it until some condition)
new_game.num_and_letter
new_game.check_board
new_game.show_board

two_game = BingoBoard.new(board)
two_game.create_board
two_game.show_legal

#Reflection
=begin

•How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

It was pretty difficult this time around, but not for
technical reasons.  The 'pseudocode' given at the top
was way too distracting for me to write better
psuedocode.  Besides the distraction though, I think I
still need to work on going through each small step.

•What are the benefits of using a class for this challenge?

You could create multiple bingo boards and compare them
all to one letter number combo.  Creating your own bingo
hall, essentialy.

•How can you access coordinates in a nested array?

array[index][sub_index]..etc.  As deep as you want to make it technically.

•What methods did you use to access and modify the array?

I used #each and #delete_at mostly.  Otherwise, to replace data with an 'x' I
just reassigned the value at that index

•Give an example of a new method you learned while reviewing the Ruby docs.
  Based on what you see in the docs, what purpose does it serve, and how is it called?

#delete_at(1) would delete the value at index one of the array it was called on.
that is it's purpose, it doesn't replace with nil or anything like that, it just
removes it from your array.  It is called like as : array.delete_at(index)

•How did you determine what should be an instance variable versus a local variable?

Anything I needed to use outside of the method it was defined in, I made an instance
Everything else I made local.

•What do you feel is most improved in your refactored solution?

I didn't feel like there was anything to improve.  I looked at a couple methods
like @map! , but they wouldn't have simplified the code nor would they have made
it easier to read.  I thought about the ternary, but it doesn't really make sense
to use in this code (at least the way I set it up).

So I'd have to say that most imporoved goes to the optional release that I completed
since it wasn't in my initial solution!




=end