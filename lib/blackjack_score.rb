# blackjack_score.rb

VALID_CARDS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 'King', 'Queen', 'Jack']

def blackjack_score(hand)
  if hand.include? ('Jack')
    hand << 10
    hand.delete('Jack')
  end
  if hand.include? ('Queen')
    hand << 10
    hand.delete('Queen')
  end
  if hand.include? ('King')
    hand << 10
    hand.delete('King')
  end
  # "Queen" == 10
  # "Jack" == 10
  hand.sum#reduce (:+)
  
end
