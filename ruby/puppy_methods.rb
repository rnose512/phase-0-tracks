# Release 0: Add methods to Puppy Class and add driver code to test methods
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    p "Woof!" * int
  end

  def roll_over
    p "*rolls over*"
  end

  def dog_years(human_years)
    p human_years * 15
  end

  def paw
    p "*Puts paw on human palm*"
  end

end

sam = Puppy.new
sam.fetch("ball")
sam.speak(4)
sam.roll_over
sam.dog_years(3)
sam.paw

class FamousClimbers

  def initialize(name)
    @name = name
  end

  def climb(grade)
    p "I'm going to climb a #{grade}"
  end

  def fall
    p "Catch!"
  end

end

climbers = {}
climbers = 50.times.collect {FamousClimbers.new(50)}

climbers.each do |climber|
  climber.climb("V15")
  climber.fall
end
