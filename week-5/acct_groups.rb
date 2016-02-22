# 1. Psuedocode
=begin

input: array of strings
output: array of arrays/ hash with array for value
steps:
create empty container
evaluate size of input container
compare size to integers 3, 4, and 5 via modulus and division
IF size % 3 == 0
  THEN we know we can have even groups of 3
ELSIF size % 4 """"""
ELSIF size % 5 """"""
ELSE
END
^^^Within if statement:
^^^IF size % x != 0
^^^ THEN we know there are left over people who need to be reasigned to other groups

iterate through input array and separate groups of blank size based on comparison above

=end

# 2. Initial Solution
def acct_groups(list)
  length = list.length
  rand_list = list.shuffle
  groups = []

  d_by_5 = length / 5
  d_by_4 = length / 4
  d_by_3 = length / 3
  
  if length % 5 == 0
    min = 0
    max = 4
    # split off in groups of 5
    d_by_5.times do 
      groups.push(rand_list[min..max])
      min += 5
      max += 5
    end
    
  elsif length % 5 == 4
    # ^^^ remainder assigned to last group
    min = 0
    max = 3
    d_by_5.times do
      groups.push(rand_list[min..max])
      min += 5
      max += 5
    end
    min += 5
    max += 4
    groups.push(rand_list[min..max])
  elsif length % 5 == 3
    # ^^^ remainder assigned to last group
    min = 0
    max = 2
    d_by_5.times do
      groups.push(rand_list[min..max])
      min += 5
      max += 5
    end
    min += 5
    max += 3
    groups.push(rand_list[min..max])
  else
    
    if length % 4 == 0
      # split off in groups of 4
      min = 0
      max = 3

      d_by_4.times do 
        groups.push(rand_list[min..max])
        min += 4
        max += 4
      end

    elsif length % 4 == 3
      # ^^^, remainder assigned to last group
      min = 0
      max = 3
      d_by_4.times do
        groups.push(rand_list[min..max])
        min += 4
        max += 4
      end
      min += 4
      max += 3
      groups.push(rand_list[min..max])
    
    else
      if length % 3 == 0
        # split off in groups of 3
      min = 0
      max = 2

      d_by_3.times do 
        groups.push(rand_list[min..max])
        min += 3
        max += 3
      end
      
      end
    end
  end
  groups.each do |group|
    p group
  end
end

cohort = ["Adam Pinsky", "Afaan Naqvi", "Alana Farkas", "Andrew Crowley", "Andrew Vathanakamsang", "Anna Lansfjord", "Benjamin Heidebrink", "Blair White", "Brad Lindgren", "Brian Donahue", "Brittney Braxton", "Camila Crawford", "Charlie Lee", "Chunyu Ou", "Daniel Homer", "Daniel Shapiro", "David Kaiser", "David Ramirez", "Emily Osowski", "Emmet Garber", "Eric Gumerlock", "Gregory Toprak", "Hanna Taylor", "Dave Hostios", "Jack Baginski", "Jaclyn Feminella", "Jasmeet Chatrath", "Jason Allen", "Jon Norstrom", "Jonathan Nicolas", "Joseph Yoo", "Joshua Lugo", "Joshua Wu", "Julia Giraldi", "Kari Giberson", "Katherine Broner", "Kevin Fowle", "Kevin Niu", "Kevin Perkins", "Leo Kukhar", "Li-Lian Ku", "Erica Lloyd", "Marita Deery", "Michael Verthein", "Milorad Felbapov", "Brian Mosley", "Nick Russo", "Noah Schutte", "Oscar Delgadillo", "Ryan Dempsey", "Ryan Wilkins", "Sami Zhang", "Saralis Rivera", "Sean Norton", "Shyh Hwang", "Syndey Rossman-Reich", "Theo Paul", "Tomasz Sok", "Wesley El-Amin"]

acct_groups(cohort)

# 3. Add comoplexity (Optional)

# 4. Refactor




















