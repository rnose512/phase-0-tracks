design = {}
#Prompt the user to provide answers for the following: client's name, client's age, number of children, decor theme, likes carpet, likes hardwood, favorite wall color
puts "Please tell my a bit about yourself. What is your name?"
design[:name] = gets.chomp.capitalize
puts "How old are you?"
design[:age] = gets.chomp.to_i
puts "How many children do you have?"
design[:children] = gets.chomp.to_i
puts "What would you like your decor theme to be?"
design[:decor_theme] = gets.chomp.capitalize
puts "Do you like carpet?"
design[:carpet] = gets.chomp
puts "Do you like hardwood?"
design[:hardwood] = gets.chomp
puts "What is your favorite wall color?"
design[:color] = gets.chomp

#print the answers to the screen
design.each {|key, value| puts "#{key} : #{value}" }

#ask the user if they want to change any of the answers, then change it if they do
answer = gets.chomp.upcase
if answer == "Y"

elsif answer == "N"
end

loop do
  puts "If you would like to update one of your preferences, please tell us what you would like to update. Otherwise, type 'none'."
  input = gets.chomp.intern
  break if input == :none
  puts "What is your new value?"
  new_value = gets.chomp
  design[input] = new_value
end

#print the last version of the hash
design.each {|key, value| puts "#{key} : #{value}" }
