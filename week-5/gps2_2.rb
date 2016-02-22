# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create empty container(key, value pairs)
  # seperate string into individual items
  # 
  # set default quantity
  # 
  # place items into countainer with default value
  # print the list to the console [can you use one of your other methods here?]
# output: [hash]

$grocery_list = Hash.new

def create_list(list, quantity = 1)
  list_ary = list.split(" ")
  
  list_ary.each do |key|
    $grocery_list[key] = quantity
  end
  print_list()
end

# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output:

def add_to_list(item, quantity = 1)
  $grocery_list[item] = quantity
  print_list()
end

# Method to remove an item from the list
# input:  item
# steps:
# look through each key/value pair and compare it to the item
#   IF the key is equal to the item
#     THEN we remove the key/value pair
#   ELSE return failure message
# return updated list
# output: hash

def remove_item(item)
  if $grocery_list.include?(item)
    $grocery_list.delete(item)
  end
  print_list()
end



# Method to update the quantity of an item
# input: item, quantity
# steps: 
# output: hash

def update_list(item, quantity)
  if $grocery_list.include?(item)
    $grocery_list[item] = quantity
  end
  print_list()
end


# Method to print a list and make it look pretty
# input: list(hash)
# steps:
# iterate through each key/value
  # print each key/value on a new line
# output: printed hash


def print_list()
  $grocery_list.each do |key, value|
    puts "- #{key} : #{value}"
  end
  puts
end




