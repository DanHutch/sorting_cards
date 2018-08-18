## card.rb

class Card
  attr_reader :value,
              :suit

  def initialize (value, suit)
    @value  = value.capitalize
    @suit   = suit.capitalize
  end
end
