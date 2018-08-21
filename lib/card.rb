## card.rb

class Card

  attr_reader :value,
              :suit

  def initialize (value, suit)
    @value  = value.capitalize
    @suit   = suit.capitalize
  end

  def set_card_value_id
    card_value_id = {
      "2" => 2, "3" => 6, "4" => 10, "5" => 14, "6" => 18, "7" => 22, "8" => 26, "9" => 30, "10" => 34, "Jack" => 38, "Queen" => 42, "King" => 46, "Ace" => 50
    }
  end

  def set_card_suit_id
    card_suit_id = {
      "Clubs" => 0, "Diamonds" => 1, "Hearts" => 2, "Spades" => 3
    }
  end

end
