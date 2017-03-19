# RSpec
# describe <OBJECT> do
    # let(:<VARIABLE>) {<CODE>}
    # it "<DESCRIPTION>" do
        # expect(<YOUR CODE>).to eq <RESULT>
    # end
# end

require_relative 'word-game'

describe WordGame do
  # Initiliase WordGame instance for each test
  let(:wordgame) { WordGame.new("secret") }

  it "initialises instance with secret word" do
    expect(wordgame.secret).to eq "secret" 
  end

  it "stores secret word as lowercase" do
    wordgame_upper = WordGame.new("SECRET")
    expect(wordgame_upper.secret).to eq "secret"
  end

  it "initialises max guess" do
    expect(wordgame.max_guess).to eq "secret".length
  end

  it "initialises guess count to zero" do
    expect(wordgame.guess_count).to eq 0
  end

  it "initialises word state" do
    expect(wordgame.word_state).to eq "_ _ _ _ _ _"
  end

  it "tests guess in secret word" do
    expect(wordgame.test_guess("c")).to eq true
    expect(wordgame.test_guess("d")).to eq false
  end

  it "tests if guess in tracked guesses" do
    wordgame_dup = WordGame.new("secret")
    expect(wordgame_dup.duplicate("c")) == false
  end

  it "adds guess to tracked guesses"
    updated = wordgame.update_guesses("c")
    expect(updated.include? "c").to eq true
  end

end
