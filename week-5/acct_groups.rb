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


def acct_groups_2(list)
  length = list.length
  rand_list = list.shuffle
  groups = []

  d_by_5 = length / 5
  d_by_4 = length / 4
  d_by_3 = length / 3
  
  if length % 5 == 0
    # split off in groups of 5
    d_by_5.times do 
      groups.push(rand_list[0..4])
      5.times do
        rand_list.delete_at(0)
      end
    end
    
  elsif length % 5 == 4
    # ^^^ remainder assigned to last group
    d_by_5.times do
      groups.push(rand_list[0..4])
      5.times do
        rand_list.delete_at(0)
      end
    end
    groups.push(rand_list[0..3])
    
  elsif length % 5 == 3
    # ^^^ remainder assigned to last group
    d_by_5.times do
      groups.push(rand_list[0..4])
      5.times do
        rand_list.delete_at(0)
      end
    end
    groups.push(rand_list[0..2])
    
  else
    
    if length % 4 == 0
      # split off in groups of 4
      d_by_4.times do 
        groups.push(rand_list[0..3])
        4.times do
          rand_list.delete_at(0)
        end
      end

    elsif length % 4 == 3
      # ^^^, remainder assigned to last group
      d_by_4.times do
        groups.push(rand_list[0..3])
        4.times do
          rand_list.delete_at(0)
        end
      end
      groups.push(rand_list[0..2])
    
    else
      if length % 3 == 0
        # split off in groups of 3
        d_by_3.times do 
          groups.push(rand_list[0..2])
          3.times do
            rand_list.delete_at(0)
          end
        end
      end
      
    end
    
  end
  groups.each do |group|
    p group
  end
end


acct_groups_2(cohort)



=begin
•What was the most interesting and most difficult part of this challenge?

For both it was definitely all the nesting I did.  Perhaps there is a way for me to further refactor, but I became too burnt out to look for one.  I did do some refactor to make what was there more readable.

•Do you feel you are improving in your ability to write pseudocode and break the problem down?

I think so.  It is a bit weird but thinking about it in English as though you  were explaining a process step by step really breaks it down in a way your mind can understand.

•Was your approach for automating this task a good solution? What could have made it even better?

Unsure what this question is for?  If by automating you mean, creating this code to create accountability groups, then I think it was a decent solution.  Not quite MVP, but far from 'perfect' or high standards.  Going through the docs and looking for specialized methods would probably cut down a lot of this code.

•What data structure did you decide to store the accountability groups in and why?

I stuck to arrays because it was more familiar and easier to work with.  I would have had to found out a way to create several keys of an unknown quantity to store all of the groups. That would have probably been more challenging and time consuming.

•What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

No, not this time.  I will definitely keep looking for more.  I did use delete_at in both solutions however.  It simplified the process a bit, but not as much as I was hoping.

=end










