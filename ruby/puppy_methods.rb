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
