require 'rspec'
require 'card'

describe Card do

  describe "#initialize" do
    a = Card.new("Diamonds", :Ace)
    b = Card.new("Hearts", :Eight)
    it "creates a card with a suit attribute" do
      expect(a.suit).to eq("Diamonds")
    end

    it "creates a card with a value 'face' attribute" do
      expect(a.value).to eq(14)
    end

    it "creates a card with a value 'number' attribute" do
      expect(b.value).to eq(8)
    end

  end

end
