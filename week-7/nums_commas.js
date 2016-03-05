// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// Input: Integer
// Output: String
// Steps:
// Convert integer to string
// Determine string length (num of digits)
// Iterate through each digit in string, starting from the end and working backward
// Every three digits place a comma
//   we want it to overwrite our string
// Return the string


// Initial Solution

var separateComma = function(integer){
  var int_string = integer.toString();
  var string_length = int_string.length;
  var int_array = int_string.split("");
  var temp_array;
  
  if (string_length <= 3)
    return int_string;
  else 
    for (var x = 3; x < string_length; x += 4){
    // pop last 3 digits off
      for (var y = x; y > 0; y -= 1){
        temp_array = int_array.pop()
      }
    // push "," onto original
      temp_array.push(",");
    // push the last 3 back on
      for (var y = x + 1; y > 0; y -= 1){
        int_array = temp_array.pop();
      }
    }
  int_array[-x] == undefined
}



// Refactored Solution




// Your Own Tests (OPTIONAL)

























/* 
Your previous Ruby content is preserved below:

items = "carrots apples cereal pizza"

def grocery_list(items)
  list = items.split(" ")
  grocery_hash = Hash.new
  list.each do |items| 
    grocery_hash[items] = 1
  end
  return grocery_hash
end

p grocery_hash = grocery_list(items)

def grocery_add(item, quantity)
  new_hash = grocery_hash
  new_hash[item] = quantity
  return new_hash
end

p grocery_add("lemon", 2)




# 
# Your previous JavaScript content is preserved below:
# 
# 
# // Here is your final terah object:
# var terah = { name: 'Terah',
#   age: 32,
#   height: 66,
#   weight: 125,
#   hairColor: 'brown',
#   children:
#    { carson: { name: 'Carson' },
#      carter: { name: 'Carter' },
#      colton: { name: 'Colton' } } }
# 
# var adam = {name: 'Adam', age: 32, spouse: terah, children: terah.children}
# 
# terah.spouse = adam;
# 
# 
# console.log(terah.children.carson.name)
# 
# 
# 

# 
# 
# 
# 
# 
# /* 
# Your previous Ruby content is preserved below:
# 
# STATE_DATA = {
#   "Alabama" => {population_density: 94.65, population: 4822023},
#   "Alaska" => {population_density: 1.1111, population: 731449},
#   "Arizona" => {population_density: 57.05, population: 6553255},
#   "Arkansas" => {population_density: 56.43, population: 2949131},
#   "California" => {population_density: 244.2, population: 38041430},
#   "Colorado" => {population_density: 49.33, population: 5187582},
#   "Connecticut" => {population_density: 741.4, population: 3590347},
#   "Delaware" => {population_density: 470.7, population: 917092},
#   "Florida" => {population_density: 360.2, population: 19317568},
#   "Georgia" => {population_density: 172.5, population: 9919945},
#   "Hawaii" => {population_density: 216.8, population: 1392313},
#   "Idaho" => {population_density: 19.15, population: 1595728},
#   "Illinois" => {population_density: 231.9, population: 12875255},
#   "Indiana" => {population_density: 182.5, population: 6537334},
#   "Iowa" => {population_density: 54.81, population: 3074186},
#   "Kansas" => {population_density: 35.09, population: 2885905},
#   "Kentucky" => {population_density: 110.0, population: 4380415},
#   "Louisiana" => {population_density: 105.0, population: 4601893},
#   "Maine" => {population_density: 43.04, population: 1329192},
#   "Maryland" => {population_density: 606.2, population: 5884563},
#   "Massachusetts" => {population_density: 852.1, population: 6646144},
#   "Michigan" => {population_density: 174.8, population: 9883360},
#   "Minnesota" => {population_density: 67.14, population: 5379139},
#   "Mississippi" => {population_density: 63.50, population: 2984926},
#   "Missouri" => {population_density: 87.26, population: 6021988},
#   "Montana" => {population_density: 6.86, population: 1005141},
#   "Nebraska" => {population_density: 23.97, population: 1855525},
#   "Nevada" => {population_density: 24.8, population: 2758931},
#   "New Hampshire" => {population_density: 147.0, population: 1320718},
#   "New Jersey" => {population_density: 1205, population: 8864590},
#   "New Mexico" => {population_density: 17.16, population: 2085538},
#   "New York" => {population_density: 415.3, population: 19570261},
#   "North Carolina" => {population_density: 200.6, population: 9752073},
#   "North Dakota" => {population_density: 9.92, population: 699628},
#   "Ohio" => {population_density: 282.5, population: 11544225},
#   "Oklahoma" => {population_density: 55.22, population: 3814820},
#   "Oregon" => {population_density: 40.33, population: 3899353},
#   "Pennsylvania" => {population_density: 285.3, population: 12763536},
#   "Rhode Island" => {population_density: 1016, population: 1050292},
#   "South Carolina" => {population_density: 157.1, population: 4723723},
#   "South Dakota" => {population_density: 10.86, population: 833354},
#   "Tennessee" => {population_density: 156.6, population: 6456243},
#   "Texas" => {population_density: 98.07, population: 26059203},
#   "Utah" => {population_density: 34.3, population: 2855287},
#   "Vermont" => {population_density: 67.73, population: 626011},
#   "Virginia" => {population_density: 207.3, population: 8185867},
#   "Washington" => {population_density: 102.6, population: 6724540},
#   "Washington,D.C."=> {population_density: 10357, population: 632323},
#   "West Virginia" => {population_density: 77.06, population: 1855413},
#   "Wisconsin" => {population_density: 105.2, population: 5726398},
#   "Wyoming" => {population_density: 5.851, population: 576412}
# }
# # Virus Predictor
# 
# # I worked on this challenge [by myself, with: ].
# # We spent [#] hours on this challenge.
# 
# # EXPLANATION OF require_relative
# # It is a path to another document containing data that is able to be used in the current document
# #
# # require_relative 'state_data'
# 
# class VirusPredictor
# # initializes all the arguments the class will be passed
#   attr_reader :state, :population, :population_density
#   def initialize(state_of_origin, population_density, population)
#     @state = state_of_origin
#     @population = population
#     @population_density = population_density
#   end
# # using single responsibility to be able to call predicted_deaths & speed of spread.
#   def virus_effects
#     predicted_deaths#(@population_density, @population, @state)
#     #speed_of_spread#(@population_density, @state)
#   end
# # hides methods below so the are unable to be called.
# private
# # comparing population density among states to calculate predicted deaths utlizing floats and rounding using floor method.
# # prints the state and result.
#   def predicted_deaths#(population_density, population, state)
#     # predicted deaths is solely based on population density
#     speed = 0.0
#     if population_density >= 200
#       number_of_deaths = (population * 0.4).floor
#       speed += 0.5
#     elsif population_density >= 150
#       number_of_deaths = (population * 0.3).floor
#       speed += 1
#     elsif population_density >= 100
#       number_of_deaths = (population * 0.2).floor
#       speed += 1.5
#     elsif population_density >= 50
#       number_of_deaths = (population * 0.1).floor
#       speed += 2
#     else
#       number_of_deaths = (population * 0.05).floor
#       speed += 2.5
#     end
# 
#     print "#{state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
# 
#   end
# end
# # uses a counter starting at 0.0 (as a float for months)
# # compares population_density. Higher density = faster speed of spread
# # puts out a string containing result
# #   def speed_of_spread#(population_density, state) #in months
# #     # We are still perfecting our formula here. The speed is also affected
# #     # by additional factors we haven't added into this functionality.
# #     speed = 0.0
# 
# #     if population_density >= 200
# #       speed += 0.5
# #     elsif population_density >= 150
# #       speed += 1
# #     elsif population_density >= 100
# #       speed += 1.5
# #     elsif population_density >= 50
# #       speed += 2
# #     else
# #       speed += 2.5
# #     end
# 
#     # puts " and will spread across the state in #{speed} months.\n\n"
# 
# #   end
# 
# # end
# 
# #=======================================================================
# 
# # DRIVER CODE
#  # initialize VirusPredictor for each state
# 
# STATE_DATA.each do |k, v|
#   VirusPredictor.new(k, v[:population_density], v[:population]).virus_effects 
# end
# 
# # ASK GUIDE: attr_reader changes the scope of the program? Does it impact the private method?
# # Can we combine the variables used in predicted_deaths and speed of spread methods?
# 
# # alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# # alabama.virus_effects
# 
# # jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# # jersey.virus_effects
# 
# # california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# # california.virus_effects
# 
# # alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# # alaska.virus_effects
# 
# 
# #=======================================================================
# # Reflection Section
# 
# 
# 
# # ==========================================================================================================================
# 
# #population density is number of people per square mile as of 2012
# #this data is updated every year with estimates from a 10 year census
# 
# 
# 
#  */

