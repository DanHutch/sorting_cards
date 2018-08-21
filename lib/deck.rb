## deck
require 'pry'

class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.count
  end

  def sort
    deck_length = count

    loop do
      swapped = false

      (deck_length - 1).times do |index|
        if @cards[index].card_id > @cards[index + 1].card_id
          @cards[index], @cards[index + 1] = @cards[index + 1], @cards[index]
          swapped = true
        end
      end
      break if not swapped
    end
    @cards
  end

end
