# # Declare Shout module
# # Define a method that takes words and makes them sound angry
# # Define the method on the self keyword, since this is a standalone module
# module Shout

#   def self.yell_angrily(words)
#     puts words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     puts words + "!!!" + " :)"
#   end

# end

# # Driver code
# Shout.yell_angrily("No")
# Shout.yell_happily("YAYYY")

# Declaring a mixin version of the Shout module
module Shout

  def yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def yell_happily(words)
    puts words + "!!!" + " :)"
  end

end

class Mother
  include Shout
end

class BestFriend
  include Shout
end

# Driver code to test module methods on instances
mom = Mother.new
mom.yell_angrily("Go to your room")

shelly = BestFriend.new
shelly.yell_happily("I got the job")

