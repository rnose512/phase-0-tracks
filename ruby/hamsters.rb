def sanctuary
  puts "What is the hamster's name?"
  name = gets.chomp.capitalize
  puts "How loud does the hamster squeak on a scale of 1-10?"
  squeak = gets.chomp.to_i
  puts "What color is the hamster?"
  color = gets.chomp
  puts "Is it a good hamster? (yes/no)"
  good_candidate = gets.chomp.capitalize
  puts "How old do you think the hamster is?"
  age = gets.chomp
  if age.empty?
    age = nil
  else
    age = age.to_i
  end


  p "The hamster's name is #{name}."
  p "#{name} squeaks at a level of #{squeak}"
  p "#{name} is #{color}"
  p "Is #{name} a good hamster? #{good_candidate}"
  if age != nil
    p "#{name} is #{age} years old"
  else
    p age
  end
end

