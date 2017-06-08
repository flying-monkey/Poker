require_relative "card"

class Deck


  SUITS = ["Hearts", "Spades", "Diamonds", "Clubs"]
  CARD_ORDER = [:Ace, :King, :Queen, :Jack, :Ten, :Nine, :Eight, :Seven, :Six, :Five, :Four, :Three, :Two]

  attr_accessor :deck_arr

  def initialize(cards = default_cards)
    @deck_arr = cards.shuffle
  end

  def default_cards
    default_cards = []
    SUITS.each do |suit|
      CARD_ORDER.each do |value|
        default_cards << Card.new(suit, value)
      end
    end
    default_cards
  end

  # def draw(player)
  #   player.draw(self)
  # end

end

a = Deck.new
p a.deck_arr.length
