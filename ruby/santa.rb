# Define a Santa class, include initialize method as well as 2 other instance methods
class Santa

  def initialize
    p "Initializing Santa instance ..."
  end

  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    p "That was a good #{cookie_type}!"
  end

end

sally = Santa.new
sally.speak
sally.eat_milk_and_cookies("oatmeal cookie")