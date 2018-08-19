## guess.rb

require 'pry'
require './lib/card.rb'

class Guess
  attr_reader :response,
              :card

  def initialize(response, card)
    @response = response
    @card = "#{card.value} of #{card.suit}"
  end

  def correct?
    @response == @card
  end

  def feedback
    if @response == @card
      return "Correct!"
    else
      return "Incorrect."
    end
  end

end

# card = Card.new("2", "Diamonds")
# guess = Guess.new("2 of Diamonds", card)
#
# binding.pry
