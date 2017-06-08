class Card
  # require 'byebug'
  CARD_VALUES = {Ace: 14, King: 13, Queen: 12, Jack:11, Ten: 10, Nine: 9, Eight: 8, Seven: 7, Six: 6, Five: 5, Four: 4, Three: 3, Two: 2}
  attr_reader :suit, :value
  def initialize(suit, value)
    # debugger
    @suit = suit
    @value = CARD_VALUES[value]
  end
end
