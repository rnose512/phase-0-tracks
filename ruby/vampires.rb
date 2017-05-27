puts "How many employees will be processed?"
answer = gets.chomp
i = 1
while i <= answer
  puts 'What is your name?'
  puts 'How old are you? What year were you born?'
  puts 'Our company cafeteria serves garlic bread. Should we order some for you?'
  puts 'Would you like to enroll in the company’s health insurance?'

  wolves_like_sunshine = true
  wolves_like_garlic = true
  vampires_like_sunshine = false
  vampires_like_garlic = false

  if age === true && (garlic === yes || insurance === yes)
    puts “Probably not a vampire.”
  elsif age === false && (garlic === no || insurance === no)
    puts “Probably a vampire.”
  elsif age === false && (garlic === no && insurance === no)
    puts “Almost certainly a vampire.”
  elsif name === “Drake Cula” || name === “Tu Fang”
    puts “Definitely a vampire.”
  else
    puts "Results inconclusive."
  end

  i++
end