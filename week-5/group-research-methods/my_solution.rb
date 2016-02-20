# Research Methods

# I spent [.75] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

=begin
Psuedocode
array
create empty container

run through each element of a container
  IF element has x in it
    return that element(store in seperate container and return entire container)
  ELSE
    do nothing, and return nothing
  END
return new container


hash
create empty container

run through each element of input container
  IF element (name) has x value
    store element(name) in new container
  END
return new container

=end

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  found_things_ary = Array.new
  
  source.each do |x|
    if x.to_s.include?(thing_to_find) == true
      found_things_ary.push(x)
    end
  end
  return found_things_ary
end

def my_hash_finding_method(source, thing_to_find)
  found_things_ary = Array.new
  
  source.each do |key, value|
    if value == thing_to_find
      found_things_ary.push(key)
    end
  end
  return found_things_ary
end

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# 
# include? : include works for not only arrays, but also for strings, hashes, and mayber other things too.  What it does is asks a true or false question.  Does this object have this thing inside of it.  For a string, it could be a letter or word or pattern, for an array it will check each object/element.  It doesn't work for numbers though, which is why I had to make sure the numbers were read as strings.

# push : push appends an array with whatever object you choose.  It puts it on right at the end of the array.

# each : each works for arrays and hashes, for an array it goes through each element one at a time.  For a hash, you can define a few different types of each methods.  The one I used was able to go through each key value pair, but others just go through values or just keys.
#
#
# 
# 
# 
# 
# 