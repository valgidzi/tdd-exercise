# blackjack_score.rb

VALID_CARDS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 'King', 'Queen', 'Jack']

def blackjack_score(hand)
  if hand.include? "King"
    "King" == 10
  end
  # "Queen" == 10
  # "Jack" == 10
  hand.reduce (:+)
end
