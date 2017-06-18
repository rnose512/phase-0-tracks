require_relative 'guessing_game'

describe GuessingGame do
  let(:guess) {GuessingGame.new}

  it "chooses a word" do
    expect(guess.choose_word('orange')).to eq 'orange'
  end

  it "guesses a letter" do
    expect(guess.guess_letter('a', 'apple')).to eq 'a____'
  end

  it "prints a message" do
    expect(guess.result('apple', 'apple')).to eq "You're a winner!"
  end
end