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

  def sort(sort_arg)
    deck_length = count

    loop do
      swapped = false

      (deck_length - 1).times do |index|
        if sort_arg[index] > sort_arg[index + 1]
          sort_arg[index], sort_arg[index + 1] = sort_arg[index + 1], array[index]
          swapped = true
        end
      end
      break if not swapped
    end
    sort_arg
  end

end
