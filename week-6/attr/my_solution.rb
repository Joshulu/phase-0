#Attr Methods

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

# Pseudocode

# Input: n/a
# Output: string
# Steps:

class NameData
    attr_reader :name
    
    def initialize
        @name = "Joshua"
    end
end


class Greetings
    def initialize
        @greetee = NameData.new
    end
    
    def greeting
        puts "Good Tidings to you, #{@greetee.name}."
    end
end

greet = Greetings.new
greet.greeting


# Reflection
=begin
Release 1:
-What are these methods doing?

initialize      : new instances of Profile class start
    with predetermined values for @age, @name, and 
    @occupation.
print_info      : puts to screen the current @age, @name,
    and @occupation with blank lines between them
what_is_age     : returns @age
change_my_age=      : assigns new_age to @age, *
what_is_name        : returns @name
change_my_name=     : assigns new_name to @name, *
what_is_occupation      : returns @occupation
change_my_occupation=   : assigns new_occupation to
    @occupation, *
*These three methods work exactly the same as any other
    method, but their equal sign signifies that they are
    going to change the value inside.  Called a setter
    method.

-How are they modifying or returning the value of instance varialbes?

Using the change_my*blank* methods, they call and change
    on thing at a time: age, name, or occupation. Methods
    return their last calculation by default, so they all
    return their values implicitly.
_________________________________________________________
Release 2:
-What changed between the last release and this release?

At the top of the Class definition, we see
        attr_reader :age
    
-What was replaced?

The what_is_age method is gone.  The method seems to be
    replaced by attr_reader :age, and instead of calling
    a method, all calls are replaced by #age()

-Is this code simpler than the last?

I think it is a bit simpler.
_________________________________________________________
Release: 3
-What changed between the last release and this release?

At the top of the Class definition, we see
        attr_writer :age

-What was replaced?

The change_my_age method is gone.  The method seems to be
    replaced by attr_writer :age, and instead of calling
    a method, all calls are replaced by #age()

-Is this code simpler than the last?

Again it is getting a bit simpler with each baby step.

________________________________________________________

•What is a reader method?

A reader method allows you to make variables accessable
    outside of the class in a read-only manner.  It cannot write over the data of the variable.

•What is a writer method?

A writer method, on the other hand, allows you to write
    over data in these variables, but you cannot read
    the data.

•What do the attr methods do for you?

They simplify, and clean up, your code.  Espeially when
    dealing with class inside of class cases, it would
    be nice to use the attr method to work with inte
    -class data.

•Should you always use an accessor to cover your bases? Why or why not?

I don't think so.  Giving too much access from the
    beginning might make it more difficult to work
    backwards.   But if you start without them, you
    cannot identify areas where an accessor would work
    perfectly without interfering

•What is confusing to you about these methods?

So far, nothing is confusing about these methods.  I
    read up on them, I used them for this assignment,
    and I remembered them from a programming class I
    took a while ago.  So for now, it all is fairly
    familiar.  






=end