# blackjack_score.rb

VALID_CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']

def blackjack_score(hand)
  hand.each do |card|

    unless VALID_CARDS.include? (card)
      raise ArgumentError.new("Not a valid card")
    end

  end
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
  #score = hand.sum#reduce (:+)

  if hand.include? ('Ace')
    hand.delete('Ace')
    # score = hand.sum

    if hand.sum <= 10
      hand << 11
    else
      hand << 1
    end


  end

  score = hand.sum

  return score

end
