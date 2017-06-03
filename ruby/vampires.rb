puts "How many employees will be processed?"
answer = gets.chomp.to_i
i = 0
while i < answer
  puts 'What is your name?'
  name = gets.chomp
  puts 'How old are you?'
  age = gets.chomp.to_i
  puts 'What year were you born?'
  year = gets.chomp.to_i
  puts 'Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)'
  garlic = gets.chomp.capitalize
  puts 'Would you like to enroll in the company’s health insurance? (Y/N)'
  insurance = gets.chomp.capitalize

  if age == 2017-year && (garlic === 'Y' || insurance === 'Y')
    puts 'Probably not a vampire.'
  elsif age != 2017-year && (garlic === 'N' && insurance === 'N')
    puts 'Almost certainly a vampire.'
  elsif age != 2017-year && (garlic === 'N' || insurance === 'N')
    puts 'Probably a vampire.'
  elsif name === 'Drake Cula' || name === 'Tu Fang'
    puts 'Definitely a vampire.'
  else
    puts "Results inconclusive."
  end

  allergy = nil
  until allergy == 'done' || allergy == 'sunshine'
    puts "What allergies do you have? (Type 'done' when there are no more allergies)"
    allergy = gets.chomp
    if allergy == 'sunshine'
      puts "Probably a vampire"
    end
  end

  i += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
