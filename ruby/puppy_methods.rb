# Release 0: Add methods to Puppy Class and add driver code to test methods
class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times do
      puts "Woof!"
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    dog_years = human_years*15
    p dog_years
  end

  def sit
    puts "*sits*"
  end
end

# Driver code
puppy = Puppy.new
puppy.fetch("ball")
puppy.speak(4)
puppy.roll_over
puppy.dog_years(3)
puppy.sit

class Pokemon

  attr_reader :name

  def initialize(name)
    puts "Initializing new Pokemon instance ..."
    @name = name
  end

  def summon
    puts "#{name}, I choose you!"
  end

  def attack(damage)
    puts "#{name} did #{damage} HP to the opponent"
  end

end

# Driver code

pokemon = []
sample_pokemon = ["Pikachu", "Togepi", "Squirtle", "Bulbasaur", "Charmander", "Mew", "Snorlax", "Jigglypuff", "Diglet", "Coughing", "Ekans", "Meowth", "Magicarp", "Garados"]

50.times do
  pokemon << Pokemon.new(sample_pokemon.sample)
end

pokemon.each do |pokemon|
  pokemon.summon
  pokemon.attack(rand(10..200))
end

# pokemon = Pokemon.new("Pikachu")
# pokemon.summon
# pokemon.attack(50)
