## round_test

require 'minitest/autorun'
require 'minitest/pride'
require './lib/round'
require './lib/card'
require './lib/guess'
require './lib/deck'

class RoundTest < Minitest::Test

  def test_it_exists
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_instance_of(Round, round)
  end

  def test_it_has_a_deck
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal(deck, round.deck)
  end

  def test_it_starts_with_no_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal({}, round.guesses)
  end

  def test_it_knows_the_current_card
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal(card_1, round.current_card)
  end

  # def test_it_can_record_guess
  #   card_1 = Card.new("3","Hearts")
  #   card_2 = Card.new("4", "Clubs")
  #   deck = Deck.new([card_1, card_2])
  #   round = Round.new(deck)
  #   assert_equal( , round.record_guess)
  # end

end