puts "How many employees will be processed?"
answer = gets.chomp.to_i
i = 0
current_year = Time.new.year
while i < answer
  puts 'What is your name?'
  name = gets.chomp
  puts 'How old are you?'
  employee_age = gets.chomp.to_i
  puts 'What year were you born?'
  employee_birth_year = gets.chomp.to_i
  puts 'Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)'
  garlic = gets.chomp.capitalize
  puts 'Would you like to enroll in the company’s health insurance? (Y/N)'
  insurance = gets.chomp.capitalize

  likes_garlic = garlic == 'Y'
  needs_insurance = insurance == 'Y'
  correct_age = employee_age == current_year - employee_birth_year || employee_age == (current_year - 1) - employee_birth_year

  result = ''
  result = 'Probably not a vampire.' if correct_age && (likes_garlic || needs_insurance)
  result = 'Almost certainly a vampire.' if !correct_age && (!likes_garlic && !needs_insurance)
  result = 'Probably a vampire.' if !correct_age && (!likes_garlic || !needs_insurance)
  result = 'Definitely a vampire.' if name === 'Drake Cula' || name === 'Tu Fang'
  result = 'Results inconclusive.' if result == ''
  p result

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