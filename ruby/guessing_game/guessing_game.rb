# PSEUDO CODE

# Game class

# Initialize method
# input: letter, word chosen
# steps:
#   declare chosen word
#   declare letter
#   Default guess count to 0
#   Default end game to false
# ouput: none

# Method to choose the word
# input: word
# steps:
#   Assign the input to chosen word variable
# output: none

# Method to guess the word
# input: letter, word chosen
# steps:
#   Add 1 to guess count
#   UNTIL word is guessed or guess count number reaches the length of the word, do the following:
#     IF the guessed letter matches a letter in the chosen word
#       Return rest of word with _ except for the letter guessed
#       Tell user to guess again
#     ELSE return false
#   IF word guessed equals the chosen word, congratulate the guesser
#   ELSE print a taunting message.
# output: true or false

# GuessingGame class
class GuessingGame

  attr_accessor :guess_count, :end_game, :letter, :chosen_word, :guessed_word

  def initialize
    @letter = letter
    @chosen_word = chosen_word
    @guessed_word = nil
    @guess_count = 0
    @end_game = false
  end

  def choose_word(word)
    @chosen_word = word.split("")
    @guessed_word = '_' * @chosen_word.length
    @chosen_word
  end

  def guess_letter(letter)
    @guess_count += 1
    @letter = letter
    if @letter == ""
      @guess_count -= 1
      puts "guess again"
    else
      # Get all indices of letter appearing in word
      # loop through array of indices and replace index of guessed word at index that the letter appears in the chosen word with the inputted letter
      letter_placement = @chosen_word.each_index.select{|i| @chosen_word[i] == letter}
      letter_placement.each do |placement_index|
        @guessed_word[placement_index] = @letter if @chosen_word.include? letter
      end
    end
    @guessed_word
  end

  def result(guessed, chosen)
    @guessed_word = guessed
    @chosen_word = chosen
    if @guessed_word == @chosen_word
      "You're a winner!"
    else
      "Keep trying"
    end
  end
end

# User interface
puts "Welcome to the guessing game!"
guess = GuessingGame.new

puts "Player 1: What is your word?"
word = gets.chomp.downcase
guess.chosen_word = guess.choose_word(word)

until guess.guess_count == guess.chosen_word.length*2 || guess.chosen_word == guess.guessed_word.split("")
  puts "Player 2: What is your guess letter"
  letter = gets.chomp
  guess.guess_letter(letter)
  p guess.guessed_word
end

if guess.chosen_word == guess.guessed_word.split("")
  puts "You guessed right!"
else
  puts "You lose! But don't worry, everything will be okay"
end