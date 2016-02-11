# Analyze the Errors

# I worked on this challenge [by myself, with: by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------
=begin
def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
=end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# says 171, but error occurs after line 16
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# line 17
# 6. Why did the interpreter give you this error?
# the while loop was closed with end, but not the method.  Tabs weren't aligned so it looked like a complete method

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# 35
# 2. What is the type of error message?
# in '<main>'
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable or method 'south_park' for main:Object (NameError)
# 4. Where is the error in the code?
# line 35
# 5. Why did the interpreter give you this error?
# we created something, but did not tell ruby what it was.  It can't tell if we're calling a method, creating a variable, or anything really.  It needs more information to be useful.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# 50
# 2. What is the type of error message?
# in '<main>': undefined method 'cartman' for main:Object (NoMethodError)
# 3. What additional information does the interpreter provide about this type of error?
# none?
# 4. Where is the error in the code?
# everywhere? see below
# 5. Why did the interpreter give you this error?
# Line 50 calls a method but that method does not exist.  So the error exists I guess from lines 1-49 (since you have to define it before you can call it)

# --- error -------------------------------------------------------
=begin
def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')
=end
# 1. What is the line number where the error occurs?
# 65
# 2. What is the type of error message?
# in 'cartmans_phrase': wrong number of arguments (1 for 0) (ArgumentError)
# 3. What additional information does the interpreter provide about this type of error?
# none?
# 4. Where is the error in the code?
# line 69.  cartmans_phrase(^"I hate Kyle"^)
# 5. Why did the interpreter give you this error?
# 69 calls the method with an argument that the method is incapable of accepting

# --- error -------------------------------------------------------
=begin
def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says
=end
# 1. What is the line number where the error occurs?
# 84
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# in 'cartman_says': wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# line 88 : cartman_says^
# 5. Why did the interpreter give you this error?
# we call a method without giving it the argument it needs, which renders the method useless.



# --- error -------------------------------------------------------
=begin
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')
=end
# 1. What is the line number where the error occurs?
# 105
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# in 'cartmans_lie': wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# line 109
# 5. Why did the interpreter give you this error?
# The method cannot complete its job because it wasn't given enough information, arguments, to work with.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 124
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# in `*': string can't be coerced into Fixnum
# 4. Where is the error in the code?
# the error is in the opperator *
# 5. Why did the interpreter give you this error?
# the * opperator cannot turn the string into a number in order to do multiplication.  

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 139
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# in `/': divided by 0
# 4. Where is the error in the code?
# amount_of_kfc_left = 20/0^
# 5. Why did the interpreter give you this error?
# You can't divide something by 0. So the / opperator cannot complete its job and the code fails.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 155
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# in `require_relative': cannot load such file
# 4. Where is the error in the code?
# require_relative ^"cartmans_essay.md"^
# 5. Why did the interpreter give you this error?
# the file doesn't exist within the directory, so the loading of that file fails.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin

-Which error was the most difficult to read?

None of them were particularly difficult, but that hardest would be the first argument error.  The format of the error message changed a bit for that one.

-How did you figure out what the issue with the error was?

The error message said what was wrong.  If it was argument error, it said (x for y) x being the calling arguments and y being the method's defined arguments.  Just reading carefully and making connections is a good way to figure out why something failed.

-Were you able to determine why each error message happened based on the code? 

Yes.  Once I read the error message, it was simple enough to figure it out.

-When you encounter errors in your future code, what process will you follow to help you debug?

I suppose I'll copy from the three Rs of recycling: Reduce, Reuse, and Recycle.
It's more important to Reduce, than it is to Reuse.  It's more important to Reuse than to Recycle
My Rs of debugging would be along the lines of:
Reduce: attempt to reduce errors by checking for them as I write code.
Reread: reread not only my code, but any error messages I get as well.
Redo: if all else fails, comment out the old code and rewrite it in a different way to attempt to fix the problem

=end












