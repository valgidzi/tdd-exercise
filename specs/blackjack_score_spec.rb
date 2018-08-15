require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/blackjack_score'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Blackjac Score' do
  it 'can calculate the score for a pair of number cards' do

    # Arrange
    hand = [3, 4]

    # Act
    score = blackjack_score(hand)

    # Assert <-  You do this part!
    expect( score ).must_equal 7
  end

  it 'facecards have values calculated correctly' do

    # hand = ["Jack", "Queen", "King"]
    #
    # score = blackjack_score(hand)
    #
    # expect ( score ).must_equal 30
    expect(blackjack_score(["Jack", 2])).must_equal 12
    expect(blackjack_score(["Queen", 2])).must_equal 12
    expect(blackjack_score(["King", 2])).must_equal 12

  end

  it 'calculates aces as 11 where it does not go over 21' do

    hand = [3, 7, 'Ace']

    score = blackjack_score(hand)

    expect( score ).must_equal 21

  end

  it 'calculates aces as 1, if an 11 would cause the score to go over 21' do

    hand = [3, 8, 'Ace']

    score = blackjack_score(hand)

    expect( score ).must_equal 12

  end

  it 'raises an ArgumentError for invalid cards' do

# unless valid cards include?
  # unless 
  # end

  it 'raises an ArgumentError for scores over 21' do


  end
end
