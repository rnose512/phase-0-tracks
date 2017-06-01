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

  if 2017 - year === age || age-1
    age_correct = true
  end

  if age_correct && (garlic === 'Y' || insurance === 'Y')
    puts 'Probably not a vampire.'
  elsif !age_correct && (garlic === 'N' || insurance === 'N')
    puts 'Probably a vampire.'
  elsif !age_correct && (garlic === 'N' && insurance === 'N')
    puts 'Almost certainly a vampire.'
  elsif name === 'Drake Cula' || name === 'Tu Fang'
    puts 'Definitely a vampire.'
  else
    puts "Results inconclusive."
  end

  i += 1
end
