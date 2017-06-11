# Pseudocode

# Create method to swap letter
# input: string
# steps:
#   declare hash for vowels
#   declare variable for consonants
#   if the input string is a key in the hash, reassign the value to the letter
#   if the input string is the last value in the consonants variable,
#   return the first value in the string
#   otherwise, return the next value in the string
# output: string

# Create method to swap all letters in an array
# input: array
# steps:
#   iterate through each value of the array
#   if the value is a vowel, call the vowel swap method
#   if the value is a consonant, call the consonant swap method
#   join the array items into a string
# output: string

# Create method to create fake name
# input: string
# steps:
#   split the string by the space
#   split the first and last name into an array of letters
#   iterate through each array and call the next letter method
#   concantenate the first and last name and print to screen
# output: string

# Create a hash for alias names
# Until the user types 'done', ask the user for a first and last name
# Call the fake name method on the input
# Insert input and fake name into the hash

# Finally, print to screen all of the fake names

def next_character(letter)
  vowel_cipher = {'a' => 'e',  'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a'}
  consonants = 'bcdfghjklmnpqrstvwxyz'
  if vowel_cipher.has_key?(letter)
    letter = vowel_cipher[letter]
  elsif consonants.include? letter
    letter == consonants[-1] ? letter = consonants[0] : letter = consonants[consonants.index(letter)+1]
  end
end

# use the following method on first and last name,
# then print last name + ' ' + first name
def next_letter(array)
  array.map! do |letter|
    next_character(letter)
  end
  array = array.join('')
end

def fake_name(name)
  split_name = name.split(" ")

# change vowels to the next vowel in 'aeiou'
# change consonants to the next consonant
# split into letters, iterate through letters.
# if vowel, next_vowel. if cons, next_consonant
#make sure to capitalize at the end
  first_name = split_name[0].split('')
  last_name = split_name[1].split('')

  first = next_letter(first_name)
  last = next_letter(last_name)

  p last.capitalize + ' ' + first.capitalize
end

def names_hash
  names = {}
  loop do
    # ask user for their name
    puts 'What is your first and last name? Type "quit" when done'
    name = gets.chomp.downcase
    break if name == 'quit'
    names[name.capitalize] = fake_name(name)
  end
  names.each {|alias_name,real_name| puts "#{alias_name} is actually #{real_name}"}
end

names_hash
