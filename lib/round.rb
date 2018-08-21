## round

require 'pry'
require './lib/guess'
require './lib/deck'

class Round
  attr_reader :deck,
              :guesses

  def initialize(deck)
    @deck     = deck
    @guesses  = []
  end

  def current_card
    deck.cards.first
    # binding.pry
  end

  def record_guess(guess_hash)
    guess_card = "#{guess_hash[:value]} of #{guess_hash[:suit]}"
    guess = Guess.new(guess_card, current_card)
    @guesses << guess
    deck.cards.rotate!(1)
    guess
  end

  def number_correct
    number_correct = 0
    @guesses.each do |guess|
      if guess.feedback == "Correct!"
        number_correct += 1
      end
    end
    number_correct
  end

  def percent_correct
    (number_correct.to_f / @guesses.count) * 100
  end

end
