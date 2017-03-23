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

    it "checks if guess correct" do
      expect(wordgame.guess_correct? "c").to eq true
      expect(wordgame.guess_correct? "f").to eq false
    end

    it "checks if guess duplicated" do
      class << wordgame
        attr_writer :guesses
      end
      wordgame.guesses = ["c"]
      expect(wordgame.duplicate? "e").to eq false
      expect(wordgame.duplicate? "c").to eq true 
    end

    it "adds guess to past guesses" do
      expect(wordgame.add_guess "c").to eq ["c"]
      expect(wordgame.add_guess "d").to eq ["c", "d"]
    end

    it "updates guess count" do
      def wordgame.zero_guess_count
        @guess_count = 0
      end
      expect(wordgame.update_guess_count("d")).to eq 5
      expect(wordgame.update_guess_count"c").to eq 5
      wordgame.zero_guess_count
      expect(wordgame.update_guess_count("a")).to eq 0
    end

    it "displays word state" do
      def wordgame.new_word_state
        @word_state = ["_", "_", "_", "_", "_", "t"]
      end
      expect(wordgame.display_word_state).to eq "_ _ _ _ _ _"
      wordgame.new_word_state
      expect(wordgame.display_word_state).to eq "_ _ _ _ _ t"
    end

    it "updates word state" do
      expect(wordgame.update_word_state "c").to eq "_ _ c _ _ _"
      expect(wordgame.update_word_state "d").to eq "_ _ c _ _ _"
      expect(wordgame.update_word_state "e").to eq "_ e c _ e _"
    end

  end

end

# QUERY: how to test user interface program
