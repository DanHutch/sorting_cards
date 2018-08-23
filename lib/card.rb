## card.rb

class Card
  attr_reader :value,
              :suit,
              :card_id

  def initialize(value, suit)
    @value    = value.capitalize
    @suit     = suit.capitalize
    @card_id  = set_card_value_id + set_card_suit_id
  end

  def set_card_value_id
    value_ids_hash = {
      "2"     => 2,
      "3"     => 6,
      "4"     => 10,
      "5"     => 14,
      "6"     => 18,
      "7"     => 22,
      "8"     => 26,
      "9"     => 30,
      "10"    => 34,
      "Jack"  => 38,
      "Queen" => 42,
      "King"  => 46,
      "Ace"   => 50
    }
    value_ids_hash[@value]
  end

  def set_card_suit_id
    suit_ids = {
      "Clubs"     => 0,
      "Diamonds"  => 1,
      "Hearts"    => 2,
      "Spades"    => 3
    }
    suit_ids[@suit]
  end

end
