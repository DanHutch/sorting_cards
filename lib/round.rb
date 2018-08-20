## round

require 'pry'
require './lib/card'
require './lib/deck'
require './lib/guess'

class Round
  attr_reader :deck,
              :guesses

  def initialize(deck)
    @deck     = deck
    @guesses  = {}
  end

  def current_card
    deck.cards.first
  end

  def record_guess(value, suit)
    ## need to define this method!
  end

end
