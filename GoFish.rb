class GoFish
  require_relative "Deck"

  $deckObj = Deck.new
  $deck = $deckObj.createCards()
  $outOfDeck = Array.new

  $player1Hand = Array.new
  $compHand = Array.new

  def initialize

  end

  def goFish()
    puts "Welcome To Go Fish!"
    puts
    puts "Please Enter 1 or 2 for how many players there are: "
    player = Integer(gets.chop)
    if player == 1
      goFishPlayer1()
    elsif player == 2
      goFishPlayer2()
    end
  end

  def goFishPlayer1()
      # puts $deck
      $deck.each do |card|
        card.toString
      end

  end

  def generatePlayer1Hand()
    for i in 1 .. 7
      cardNum = rand($deck.size - 1)
      $player1Hand.push($deck[cardNum])
      $outOfDeck.push($deck[cardNum])
      $deck.delete_at(cardNum)
    end
  end

  def generateCompHand()
    for i in 1 .. 7
      cardNum = rand($deck.size - 1)
      $compHand.push($deck[cardNum])
      $outOfDeck.push($deck[cardNum])
      $deck.delete_at(cardNum)
    end
  end

  def displayHand()
    for i in 0 ... ($player1Hand.size - 1)
      puts $player1Hand[i]
    end
  end

end
