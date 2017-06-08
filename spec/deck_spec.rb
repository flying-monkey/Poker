require 'rspec'
require 'deck'

describe Deck do

  describe "#initialize" do
    a = Deck.new
    it "creates a deck as an array" do
      expect(a.deck_arr).to be_a(Array)
    end
  end

  describe "#populate" do
    a = Deck.new
    it "populates the deck with 52 Card Objects" do
      expect(a.deck_arr.length).to eq(52)
    end
    it "checks the deck to contain Card Objects" do
      expect(a.deck_arr[0]).to be_a(Card)
    end

  end

end
