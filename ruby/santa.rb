# Define a Santa class, include initialize method as well as 2 other instance methods
# Release 1: Add attributes to Santa Class
# Then, initialize Santa instances
# Release 2: Work with getter and setter methods

class Santa
  #getter method shortcut
  attr_reader :ethnicity
  #setter method shortcut
  attr_accessor :gender, :age

  def initialize(gender, ethnicity)
    p "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    p "That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name))
    @reindeer_ranking[-1] = reindeer_name
    p @reindeer_ranking
  end

end

# sally = Santa.new("female", "South African")
# sally.speak
# sally.eat_milk_and_cookies("oatmeal cookie")
# p sally.celebrate_birthday
# sally.get_mad_at("Rudolph")
# sally.gender=("Transgender")
# p sally.gender


# santas = []
example_genders = ["female", "male", "Hijira", "Genderless", "agender", "bigender", "gender fluid", "N/A"]
example_ethnicities = ["Japanese", "French", "Prefer not to say", "Micronesian", "Polynesian", "black", "Latino", "white", "Japanese-African", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

# PSEUDOCODE
# Steps
# Run the code 100 times
# Create a new Santa instance with a random index from the gender array and a random index from the ethnicities array
# Set age to a random number between 0 - 140
# Print the Santa and its attributes
1000.times do
  santa = Santa.new(example_genders.sample, example_ethnicities.sample)
  santa.age = rand(0..140)
  p santa.ethnicity
  p santa.gender
  p santa.age
end


