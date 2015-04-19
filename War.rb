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
    $deck ||= Array.new
    i = 2 #value of the card
    for x in 1..52
      $deck.push(Card.new(i, pick_suit(x)))
      if i > 13 #onto next suit
        i = 2
      else #stay in suit
        i += 1
      end
    end
    initial_shuffle
  end


  def self.initial_shuffle
    $deck.shuffle!
  end


end




class War

  #SETUP
  def self.split_deck
    #put first 26 cards in player 1's deck
    for k in 1..26
      $p1_deck.push($card_deck.shift)
    end
    $p2_deck = $card_deck
  end

  def self.print_cards(cards)
    cards.each do |card|
      print card.value
      print " of "
      puts card.suit
    end
  end

  def self.find_length(cards)
    count = 0
    cards.each do |card|
      count += 1
    end
  end

  def self.shuffle_cards(cards)
    cards.shuffle!
  end

  #no cards handler
  def self.nothing_at_all_handler
    #test
    print 'The length of p1 deck is: '
    print find_length($p2_deck)
    print 'The length of p2 deck is: '
    print find_length($p2_deck)

    player1_out = false
    player2_out = false
    #no cards in deck?
    #puts $p1_deck.length
    if $p1_deck.length < 1
      #no cards in pile?
      if $p1_pile.length < 1
        player1_out = true
      #shuffle
      else
        print '88888888888888888888888888888888888888888888888888888888888888888888888888888888888888  '
        print $p1_deck.length
        print '     '
        print $p1_deck.length
        shuffle_cards($p1_deck)
        $p1_pile = []
      end
    end

    #puts $p2_deck.length
    if $p2_deck.length < 1
      #no cards in pile?
      if $p1_pile.length < 1
        player2_out = true
      #shuffle
        print '99999999999999999999999999999999999999999999999999999999999999999999999999999999999999  '
        print $p2_pile.length
        print '   '
        print $p2_deck.length
        shuffle_cards($p2_deck)
        $p2_pile = []
      end
    end

    if player1_out == true && player2_out == true
      $victor = 'nobody'
    elsif player1_out == true
      $victor = 'player 2'
    elsif player2_out == true
      $victor = 'player 1'
    end
  end


  def self.battle
    nothing_at_all_handler

    print'.................................................................'
    print_cards($p1_deck)
    print '****************************************************************'
    print_cards($p2_deck)
    print '++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'

    #War check
    if $p1_deck[0].value == $p2_deck[0].value #THIS MEANS WAR!
      puts 'WAR!'
      #place three cards
      for k in 1..3
        #check if no cards left
        nothing_at_all_handler
        $cards_at_stake = $cards_at_stake.push($p1_deck[0])
        $cards_at_stake = $cards_at_stake.push($p2_deck[0])
        $p1_deck = $p1_deck.shift
        $p1_deck = $p2_deck.shift
      end
    else #normal battle
      if $p1_deck[0].value > $p2_deck[0].value #p1 wins
        $cards_at_stake = $cards_at_stake.push($p1_deck.first)
        $cards_at_stake = $cards_at_stake.push($p2_deck.first)
        $p1_deck = $p1_deck.shift
        $p2_deck = $p2_deck.shift

        print 'player 1 won '
        print_cards($cards_at_stake)
        $p1_pile = $p1_pile.push($cards_at_stake)
        $cards_at_stake = []
        #test
        print 'pile length 1 is: '
        print $p1_pile.length
        print 'pile length 2 is: '
        print $p2_pile.length
      else $p1_deck[0].value < $p2_deck[0].value #p2 wins
        $cards_at_stake = $cards_at_stake.push($p1_deck[0])
        $cards_at_stake = $cards_at_stake.push($p2_deck[0])
        $p1_deck = $p1_deck.shift
        $p2_deck =$p2_deck.shift

        print 'player 2 won '
        print_cards($cards_at_stake)
        $p2_pile = $p2_pile.push($cards_at_stake)
        $cards_at_stake = []
        #test
        print 'pile length 1 is: '
        print $p1_pile.length
        print 'pile length 2 is: '
        print $p2_pile.length
      end
    end
  end
=begin
+++++++++++++++++++++++++++++++
Execute Code: Execute Code
+++++++++++++++++++++++++++++++
=end

  $victor = nil

  $cards_at_stake ||= Array.new

  $p1_deck ||= Array.new
  $p2_deck ||= Array.new
  $p1_pile ||= Array.new
  $p2_pile ||= Array.new

  $card_deck = Card.new_deck

  print_cards($card_deck)
  split_deck


  #game engine loop
  until $victor != nil
    battle
  end
    print 'Nobody actually wants to sit through a whole game of war so here is the outcome:'
    print 'The winner is ' + $victor
end