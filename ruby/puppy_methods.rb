class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

sam = Puppy.new
sam.fetch("ball")