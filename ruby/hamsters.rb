def sanctuary
  puts "What is the hamster's name?"
  name = gets.chomp
  puts "How loud does the hamster squeak on a scale of 1-10?"
  squeak = gets.chomp
  puts "What color is the hamster?"
  color = gets.chomp
  puts "Is it a good hamster or a bad hamster? Y/N"
  good_candidate = gets.chomp.upcase
  puts "How old do you think the hamster is?"
  age = gets.chomp

  if age === nil
    age = nil
  end
end

