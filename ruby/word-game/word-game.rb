class WordGame
  attr_reader :secret, :guess_count, :word_state, :guesses

  # METHOD: initialise word game
  # INPUT: secret word as string
  # OUTPUT: WordGame instance

  def initialize(secret)
    @secret = secret
    @guess_count = secret.length
    @word_state = ["_"] * secret.length 
    @guesses = []
  end

  # METHOD: check if guess correct
  # INPUT: guessed letter as string
  # OUTPUT: true or false
  
  def guess_correct?(guess)
    @secret.include? guess
  end
  
  # METHOD: check if guess duplicated
  # INPUT: guessed letter as string
  # OUTPUT: true or false

  def duplicate?(guess)
    @guesses.include? guess
  end
  
  # METHOD: add guess to tracked guesses if not duplicated
  # INPUT: guessed letter as string
  # OUTPUT: array of tracked guesses

  def add_guess(guess)
    duplicate?(guess) ? @guesses : @guesses << guess
  end

  
  # METHOD: update remaining guess count
  # INPUT: N/A
  # OUTPUT: integer of remaining guesses
  
  def update_guess_count
    @guess_count > 0 ? @guess_count -= 1 : @guess_count
  end
  
  # METHOD: display word state
  # INPUT: N/A
  # OUTPUT: word state as string
  
  def display_word_state
    @word_state.join(" ")
  end
  
  # METHOD: update word state with most recently added guess
  # INPUT: N/A
  # OUTPUT: updated word state
  
  def update_word_state
    @secret.chars.each_with_index do |letter, idx| 
      @word_state[idx] = letter if @guesses[-1] == letter
    end
    @word_state
  end

  def game_win?
    @secret == @word_state.join
  end

end

# USER INTERFACE

puts "Welcome to the word game!"
print "Player #1, please enter a secret word: "

secret = gets.chomp.downcase

wordgame = WordGame.new(secret)

puts "Player #2, the secret word has #{wordgame.secret.length} letters."

while wordgame.guess_count > 0 && !wordgame.game_win? do

  puts "\nSecret Word: " + wordgame.display_word_state

  puts "You have #{wordgame.guess_count} guesses left."
  puts "Please enter a guess: "

  guess = gets.chomp.downcase

  if wordgame.duplicate?(guess)
    puts "You have already guessed that letter."
    # redo
  elsif wordgame.guess_correct?(guess)
    puts "Correct guess!"
  else
    puts "Sorry, #{guess.inspect} is not in the secret word."  
    wordgame.update_guess_count
  end
  wordgame.add_guess(guess)
  wordgame.update_word_state

end

if wordgame.game_win?
  puts "Congratulations! You guessed the secret word!"
else
  puts "You have run out of guesses."
  puts "Game over."
end