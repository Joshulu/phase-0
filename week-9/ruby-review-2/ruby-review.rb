# Cipher Challenge

# I worked on this challenge [by myself]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   # variable 'input' is assigned the argument as an array of lowercase letters
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
  
#   # creates an empty array 
#   decoded_sentence = []
#   # a hash that takes a lowercase letter string as both a key and a value.
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}
#   # for each lowercase letter in input array
#   input.each do |x| # What is #each doing here?
  
#     # found_match is set as false as a default value
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    
#     # for each key in cipher (Initial letter)
#     cipher.each_key do |y| # What is #each_key doing here?
    
#     # if the letter of our input argument is equal to the cipher key, then, push the cipher value into our decoded_sentence array.
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here?
#         # We break here, because we don't want the loop to go through every
#         # cipher key even after it found a match, we want one of our conditions
#         # to be met.  Once it breaks, it moves back out to line 44.
        
#       # if the input argument letter is one of the following characters,
#       # we push a single spaced string
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
#         decoded_sentence << " "
#         found_match = true
#         break
        
#       # otherwise, if our input letter is a number 0-9, just keep it the same.
#       # push the number string onto our decoded_sentence array
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
    
#     # if found_match is false, push the input onto our decoded_sentence array anyways
#     if not found_match  # What is this looking for?
#       decoded_sentence << x
#     end
#   end
  
#   # join our array into one string
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning?
#   # a string
# end

# Your Refactored Solution

def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("") 
  decoded_sentence = []
  
  size_of_aplphabet = 26
  letter_shift = size_of_aplphabet - 4 # will shift four letters up, adding will shift down
  
  input.each do |input_letter|

    if ("a".."z").include?(input_letter)
      letter_shift.times { input_letter.succ!}
      input_letter = input_letter.split("")
      until input_letter.length == 1
        input_letter.shift
      end
      decoded_sentence << input_letter
      next
    elsif input_letter == "@" || input_letter == "#" || input_letter == "$" || input_letter == "%"|| input_letter == "^" || input_letter == "&"|| input_letter =="*"
      decoded_sentence << " "
      next
    elsif (0..9).to_a.include?(input_letter)
      decoded_sentence << input_letter
      next
    end
      decoded_sentence << input_letter
  end
  
  decoded_sentence = decoded_sentence.join("")
end



# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l") == ("our early attempts at a tractor beam went through several preparations. preparations a through g were a complete failure.\n but now, ladies and gentlemen, we finally have a working tractor beam, which we shall call preparation h")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.") == ("you see, i've turned the moon into what i like to call a death star.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.") == ("mini me, if i ever lost you i don't know what i would do.\n i'd probably move on and get another clone but there would be a 15 minute period there where i would just be inconsolable.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?") == ("why make a trillion when we could make... billions?")

# Reflection
# Keep your reflection limited to 10-15 minutes!

