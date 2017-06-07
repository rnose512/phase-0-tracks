
def next_vowel(v)
  vowels = 'aeiou'
  v == vowels[-1] ? v = vowels[0] : v = vowels[vowels.index(v)+1]
end

def next_consonant(c)
  consonants = 'bcdfghjklmnpqrstvwxyz'
  c == consonants[-1] ? c = consonants[0] : c = consonants[consonants.index(c)+1]
end

# use the following method on first and last name,
# then print last name + ' ' + first name
def next_letter(array)
  array.map! do |x|
    if 'aeiou'.include? x
      next_vowel(x)
    elsif 'bcdfghjklmnpqrstvwxyz'.include? x
      next_consonant(x)
    end
  end
  array = array.join('')
end

def fake_name(name)
# ask user for their name
  puts 'What is your name?'
  name = gets.chomp.downcase
  # swap first and last name
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

fake_name("Felicia Torres")
# ["t", "o", "r", "r", "e", "s", " ", "f", "e", "l", "i", "c", "i", "a"]