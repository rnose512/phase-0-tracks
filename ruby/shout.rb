# Declare Shout module
# Define a method that takes words and makes them sound angry
# Define the method on the self keyword, since this is a standalone module
module Shout

  def self.yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def self.yell_happily(words)
    puts words + "!!!" + " :)"
  end

end

# Driver code
Shout.yell_angrily("No")
Shout.yell_happily("YAYYY")