=begin
  Scott Hansen
  Simple War Game
=end

#DECK: card deck file so can be accessed by other games
class Card
  attr_accessor(:value, :suit)

  #declares card object
  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  #takes in number and returns either number or string if face card
  def self.face_card_convert(num)
    case num
      when 2..10
        return num
      when 11
        return :jack.to_s
      when 12
        return :queen.to_s
      when 13
        return :king.to_s
      when 14
        return :ace.to_s
      else
        return
    end

  end

  def self.pick_suit(num)
    case num
      when 1..13
        return :hearts
      when 14..26
        return :diamonds
      when 27..39
        return :clubs
      when 39..52
        return :spades
      else
        return
    end
  end
  #creates card deck for war
  def self.new_deck
    #deck that we will return
    deck ||= Array.new
    i = 2 #value of the card
    for x in 1..52
      deck.push(Card.new(i, pick_suit(x)))
      if i > 13 #onto next suit
        i = 2
      else #stay in suit
        i += 1
      end
    end

    deck.each do |card|
      puts card.value
      puts card.suit
      puts " "
    end
  end

end

class War
  card_deck = Card.new_deck
  print card_deck
=begin
  $p1_deck = new.Array
  $p2_deck = new.Array
  $p1_pile = new.Array
  $p1_pile = new.Array

  def shuffle_hand(player)
    if player == 1
      $p1_deck.each.sort! {|x, y| (x).rand(52) <=> (y).rand(52)}
    else
      $p2_deck.each.sort! {|x, y|(x).rand(52) <=> (y).rand(52)}
    end
  end

  def nothing_at_all_handler

  end

    $cards_at_stake = new.Array


  def battle
    if $p1_deck.first == nil || $p2_deck.first == nil #handle end of deck/end of game
      nothing_at_all_handler
    end
    if $p1_deck.first == $p2_deck.first #THIS MEANS WAR!
      battle
    else #normal battle
      if $p1_deck.first > $p2_deck.first #p1 wins
      else #p2 wins

      end

    end
  end
=end
end