# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative allows you to load files relative to where you are. It is generally used to refer to files in the current directory.
# With require , you would have to write the whole path to the file

require_relative 'state_data'

class VirusPredictor


# this method initializes an instance of the VirusPredictor Class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# this method calls the other two methods below
  def virus_effects
    number_of_deaths = predicted_deaths
    speed = speed_of_spread
    print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
  end

# Doesn't allow objects outside of the class to use methods below 'private'
  private

# this method calculates the number of deaths that is contingent upon population density
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density <= 50
      number_of_deaths = (@population * 0.05).floor
    else
      multipler_var = (@population_density / 50) * 0.1
      number_of_deaths = (@population * multipler_var).floor
    end
  end

# this method calculates the speed at which the virus spreads depending on population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density <= 50
      speed += 2.5
    else
      months = 2.5 - ((@population_density.floor / 50) * 0.5)
      speed += months
    end
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, data|
  state_name = VirusPredictor.new(state, data[:population_density], data[:population])
  state_name.virus_effects
end

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# The first hash uses a string as a key and the mini hash uses a symbol as a key

# What does require_relative do? How is it different from require?
# It allows you to access data from another file in the directory. require_relative differs from require because it lets you access data from the current directory whereas with require, you would need to write the whole path

# What are some ways to iterate through a hash?
# You can iterate through a hash with .each

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# The variables were being passed as parameters but it wasn't necessary since the values were being assigned to the variables when the instance was being initialized.

# What concept did you most solidify in this challenge?
# Writing DRY code. Paying closer attention to how variables are declared and how they are used.