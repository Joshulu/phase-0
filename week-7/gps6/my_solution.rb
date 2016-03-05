# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# grabs a file from the same diretory allowing this file to access the data from another file
# differes from require because it does not require a full path to the file
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  def predicted_deaths
    # Attempted a formula approach to interpolate between each if statement, wasn't a perfect solution though.
    
  #   # predicted deaths is solely based on population density
  #   multiple = (@population_density / 500)
  #   if @population_density >= 50
  #     number_of_deaths = (@population * multiple)
  #   else
  #     number_of_deaths = (@population * 0.05)
  #   end
  #   number_of_deaths.floor
  
    number_of_deaths =
    if @population_density >= 200
      (@population * 0.4)
    elsif @population_density >= 150
       (@population * 0.3)
    elsif @population_density >= 100
      (@population * 0.2)
    elsif @population_density >= 50
      (@population * 0.1)
    else
      (@population * 0.05)
    end

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    speed +=
    if @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population]).virus_effects

STATE_DATA.each do |state, values|
  VirusPredictor.new(state, values[:population_density], values[:population]).virus_effects
end

#=======================================================================
# Reflection Section

=begin
•What are the differences between the two different hash syntaxes shown in the state_data file?

From what I can gather, the difference is in using a string as
a key and using a symbol.  They both, otherwise, have the same 
formating.

•What does require_relative do? How is it different from require?

require_relative looks for a file with the filename given in
quotes and pulls that information into the original file.  The
difference between require and require_relative is that require
needs the entire path to the file you're loading, but *relative
needs only the name and searches within the same directory as
the original file.


•What are some ways to iterate through a hash?

.each, .each_key, .each_value, .each_pair,
these are the ways I know how to, I'm sure there are plenty
in the docs, but these are simple enough and versatile.

•When refactoring virus_effects, what stood out to you about the variables, if anything?

Well, my environment turned them red, so they all were begging
for my attention.  I immediately noticed that they were all
instance variables which do not need to be arguments passed
around.

•What concept did you most solidify in this challenge?

In working on the 50 state report, we tried to make seperate
variables created dynamically at run time, but we found out
that it wasn't entirely necessary to do that.  We just needed
the information for the report.

Don't over think it, and always try it and see what happens.






=end