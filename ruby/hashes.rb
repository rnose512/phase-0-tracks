design = {}

#Prompt the user to provide answers for the following: client's name, client's age, number of children, decor theme, likes carpet, likes hardwood, favorite wall color
puts "Pleas tell my a bit about yourself. What is your name?"
design[:name] = gets.chomp.capitalize
puts "How old are you?"
design[:age] = gets.chomp.to_i
puts "How many children do you have?"
design[:children] = gets.chomp.to_i
puts "What would you like your decor theme to be?"
design[:decor_theme] = gets.chomp.capitalize
puts "Do you like carpet?"
design[:carpet] = gets.chomp.upcase
if design[:carpet] == "YES"
  design[:carpet] = true
else
  design[:carpet] = false
end
puts "Do you like hardwood?"
design[:hardwood] = gets.chomp.upcase
if design[:hardwood] == "YES"
design[:hardwood]
  design[:hardwood] = true
else
design[:hardwood]
  design[:hardwood] = false
end
puts "What is your favorite wall color?"
design[:color] = gets.chomp

#print the answers to the screen
design.each {|key, value| puts "#{key} : #{value}" }

#ask the user if they want to change any of the answers, then change it if they do
# puts "Would you like to make any changes to your answers?"

#print the last version of the hash
# p design

#exit the program