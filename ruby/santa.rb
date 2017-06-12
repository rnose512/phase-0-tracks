# Define a Santa class, include initialize method as well as 2 other instance methods
# Release 1: Add attributes to Santa Class
# Then, initialize Santa instances
# Release 2:

class Santa

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

end

sally = Santa.new("female", "South African")
sally.speak
sally.eat_milk_and_cookies("oatmeal cookie")

santas = []
example_genders = ["female", "male", "N/A", "Hijira", "Genderless"]
example_ethnicities = ["Japanese", "French", "Prefer not to say", "Micronesian", "Polynesian"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

p santas