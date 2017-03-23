# RSpec
# require_relative(<FILE>)
# describe(description, &block)
  # let(name, &block)
  # subject(name, &block)
    # context(description, &block)
      # it(description, &block)
        # skip(reason)
        # expect(<ACTUAL>).to eq <EXPECTED>

require_relative 'word-game'

describe WordGame do

  # Initiliase WordGame instance for each test that references 'wordgame'.
  let(:wordgame) { WordGame.new("secret") }

  context "when initalised" do

    it "stores secret word" do
      expect(wordgame.secret).to eq "secret" 
    end

    it "sets guess count to secret word length" do
      expect(wordgame.guess_count).to eq "secret".length
    end

    it "hides all letters in word state" do
      expect(wordgame.word_state).to eq ["_", "_", "_", "_", "_", "_"]
    end

    it "sets guessed letter to empty array" do
      expect(wordgame.guesses).to eq []
    end

  end

  context "when guess given" do
    before(:example, :need => true) do
      class << wordgame
        attr_writer :guess_count, :word_state, :guesses
      end
    end

    it "checks if guess correct" do
      expect(wordgame.guess_correct? "c").to eq true
      expect(wordgame.guess_correct? "f").to eq false
    end

    it "checks if guess duplicated", :need => true do
      wordgame.guesses = ["c"]
      expect(wordgame.duplicate? "e").to eq false
      expect(wordgame.duplicate? "c").to eq true 
    end

    it "adds guess to past guesses" do
      expect(wordgame.add_guess "c").to eq ["c"]
      expect(wordgame.add_guess "d").to eq ["c", "d"]
    end

    it "updates guess count", :need => true do
      expect(wordgame.update_guess_count).to eq 5
      
      wordgame.guess_count = 1
      expect(wordgame.update_guess_count).to eq 0
      
      expect(wordgame.update_guess_count).to eq 0
    end

    it "displays word state", :need => true do
      expect(wordgame.display_word_state).to eq "_ _ _ _ _ _"
      
      wordgame.word_state = ["_", "_", "_", "_", "_", "t"]
      expect(wordgame.display_word_state).to eq "_ _ _ _ _ t"
    end

    it "updates word state", :need => true do
      wordgame.guesses = ["c"]
      expect(wordgame.update_word_state).to eq ["_", "_", "c", "_", "_", "_"]
      
      wordgame.guesses = ["c", "e"]
      expect(wordgame.update_word_state).to eq ["_", "e", "c", "_", "e", "_"]
      
      wordgame.guesses = ["c", "e", "d"]
      expect(wordgame.update_word_state).to eq ["_", "e", "c", "_", "e", "_"] 
    end

    it "check if all letters guessed", :need => true do
      expect(wordgame.game_win?).to eq false
      
      wordgame.word_state = ["_", "_", "c", "_", "_", "_"]
      expect(wordgame.game_win?).to eq false
      
      wordgame.word_state = ["s", "e", "c", "r", "e", "t"] 
      expect(wordgame.game_win?).to eq true
    end

  end

end

# QUERY: how to test user interface program
