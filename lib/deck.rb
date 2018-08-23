## deck.rb

class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.count
  end

  def sort
    swapped = true

    until not swapped do
      swapped = false
      (count - 1).times do |index|
        if @cards[index].card_id > @cards[index + 1].card_id
          @cards[index], @cards[index + 1] = @cards[index + 1], @cards[index]
          swapped = true
        end
      end
    end
    @cards
  end

end
