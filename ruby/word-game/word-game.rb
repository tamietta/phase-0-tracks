class WordGame
  attr_reader :secret, :guess_count, :word_state, :guesses

  def initialize(secret)
    @secret = secret
    @guess_count = secret.length
    @word_state = (["_"] * secret.length).join(" ")
    @guesses = []
  end

  def check_guess(guess)
    @secret.include? guess
  end

  def add_guess(guess)
    @guesses << guess
  end

end
