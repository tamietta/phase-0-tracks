class WordGame
  attr_reader :secret, :guess_count, :word_state, :guesses

  def initialize(secret)
    @secret = secret
    @guess_count = secret.length
    @word_state = ["_"] * secret.length 
    @guesses = []
  end

  def check_guess(guess)
    @secret.include? guess
  end

  def duplicate?(guess)
    @guesses.include? guess
  end

  def add_guess(guess)
    @guesses << guess
  end

  def decrement_guess_count
    @guess_count -= 1
  end

  def display_word_state
    @word_state.join(" ")
  end

  def update_word_state(guess)
    @secret.chars.each_with_index do |letter, idx|
      if guess == letter
        @word_state[idx] = letter
      end
    end
    display_word_state
  end



end
