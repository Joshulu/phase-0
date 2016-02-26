# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [
  [1,2],
  ["inner", 
    ["eagle", "par", 
      ["FORE", "hook"]
    ]
  ]
]

# attempts: 2
# ============================================================
#p array[1][1][2]
#p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 1
# ============================================================

#p hash[:outer][:inner]['almost'][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================

# p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# number_array.map! do |value|
#   if value.kind_of?(Array)
#     value.map! do |sub_value|
#       sub_value += 5
#     end
#   else
#     value +=5
#   end
# end
# p number_array

# Bonus:

startup_names = ["bit",
  ["find", "fast",
    ["optimize", "scope"]
  ]
]

startup_names.map! do |word|
  if word.kind_of?(Array)
    word.map! do |sub_word| 
      if sub_word.kind_of?(Array)
        sub_word.map! do |sub_word_2| 
          sub_word_2 + "ly"
        end
      else
        sub_word + "ly"
      end
    end
  else
    word + "ly"
  end 
end

p startup_names

=begin

•What are some general rules you can apply to nested arrays?

Always build a way to access nested data, especially when dealing with iteration.

•What are some ways you can iterate over nested arrays?

You can iterate over nested arrays just the same as any array but, like above, you have to worry and plan a way to access the data in a nested array.

•Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

We didn't find anything new to use today, but we did use #map!.  We thought it'd be a good option since it is destructive and it returns the array with any adjustmets we made.



=end



