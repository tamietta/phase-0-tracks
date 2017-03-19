class WordGame
  attr_reader :secret, :guess_count

  def initialize(secret)
    @secret = secret.downcase
    @guess_count = secret.length
    @tracked_guess = []
    @word_state = (["_"] * secret.length).join(" ")
  end

end
