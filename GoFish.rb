class GoFish
  require_relative "Deck"

  $deckObj = Deck.new
  $deck = $deckObj.createCards()
  $outOfDeck = Array.new

  $player1Hand = Array.new
  $compHand = Array.new
  $compValues = Array.new

  $playerPoints = 0
  $compPoints = 0

  def initialize
  end

  def goFish()
    puts "Welcome To Go Fish!"
    puts
    puts "Get 5 Matches to win"
      goFishPlayer1()
  end

  def goFishPlayer1()
    generatePlayer1Hand()
    generateCompHand()
    compValues()
    compMatches()
    action()
    reset()

  end

  def action()
    puts "P: " + $playerPoints.to_s + " and C: " + $compPoints.to_s
    puts "Enter [v]iew to look at your hand, [g]uess to make a guess at your oppents hand, or [m]atches to drop matches in your hand: "
    word = gets.chop
    while $playerPoints < 5 and $compPoints < 5
      case word
        when "view"
        when "v"
          displayPlayer1Hand()
          puts "P: " + $playerPoints.to_s + " and C: " + $compPoints.to_s
          puts "Enter [v]iew to look at your hand, [g]uess to make a guess at your oppents hand, or [m]atches to drop matches in your hand: "
          word = gets.chop

        when "guess"
        when "g"
          goFishStep()
          puts "P: " + $playerPoints.to_s + " and C: " + $compPoints.to_s
          puts "Enter [v]iew to look at your hand, [g]uess to make a guess at your oppents hand, or [m]atches to drop matches in your hand: "
          word = gets.chop

        when "matches"
        when "m"
          puts "What match do you want to take out: "
          number = gets.chop
          dropMatches($player1Hand, number,"player1")
          puts "P: " + $playerPoints.to_s + " and C: " + $compPoints.to_s
          puts "Enter [v]iew to look at your hand, [g]uess to make a guess at your oppents hand, or [m]atches to drop matches in your hand: "
          word = gets.chop

      end
    end
    if $playerPoints >= 5
      puts "You Win!"
    else
      puts "Sorry You Lost"
    end
  end


  def goFishStep()
      puts "Please enter a number you want to guess: "
      number = gets.chop
      case number
        when "ace"
          number = 1
        when "1"
          number = 1
        when "2"
          number = 2
        when "3"
          number = 3
        when "4"
          number = 4
        when "5"
          number = 5
        when "6"
          number = 6
        when "7"
          number = 7
        when "8"
          number = 8
        when "9"
          number = 9
        when "10"
          number = 10
        when "j"
          number = 11
        when "q"
          number = 12
        when "k"
          number = 13
      end

      getCardValue(number)
      result()
      if $result == 3
        puts "Computer's Turn"
        $result = 0
        compMove($compValues[rand($compValues.size - 1)])
        compMatches()
        result()
        $result = 0
      end
    end

  def generatePlayer1Hand()
    for i in 1 .. 5
      cardNum = rand($deck.size - 1)
      $player1Hand.push($deck[cardNum])
      $outOfDeck.push($deck[cardNum])
      $deck.delete_at(cardNum)
    end
  end

  def generateCompHand()
    for i in 1 .. 5
      cardNum = rand($deck.size - 1)
      $compHand.push($deck[cardNum])
      $outOfDeck.push($deck[cardNum])
      $deck.delete_at(cardNum)
    end
  end

  def displayPlayer1Hand()
    $player1Hand.each do |card|
      card.toString
    end
  end

  def displayCompHand()
    $compHand.each do |card|
      card.toString

    end
  end

  def getCardValue(number)
    count = 0
    num = number
    $player1Hand.each_with_index  do |card, pIndex|
      if num == card.getValue()
        $compHand.each_with_index  do |card, cIndex|
          if num == card.getValue()
            count = 1
            $player1Hand.delete_at(pIndex)
            $compHand.delete_at(cIndex)
          end
        end
      end
    end
    if count == 1
      $result = 1
      $playerPoints += 1
    else
      drawCard($player1Hand)
      $result = 3
    end
    count = 0
  end

  def compMove(number)
    count = 0
    num = number
    $compHand.each_with_index  do |card, cIndex|
      if num == card.getValue()
        $player1Hand.each_with_index  do |card, pIndex|
          if num == card.getValue()
            count = 1
            $player1Hand.delete_at(pIndex)
            $compHand.delete_at(cIndex)
          end
        end
      end
    end
    if count == 1
      $result = 2
      $compPoints += 1
    else
      drawCard($compHand)
      $result = 4
    end
    count = 0
  end

  def drawCard(array)
    cardNum = rand($deck.size - 1)
    array.push($deck[cardNum])
    $outOfDeck.push($deck[cardNum])
    $deck.delete_at(cardNum)
  end

  def result()
    case $result
      when 1
        puts "You have a found a match"
      when 2
        puts "Computer has found a match!"
      when 3
        puts "You did not find a match."
      when 4
        puts "Computer did not find a match!"
    end
  end

  def dropMatches(array, number,who)

    case number
      when "ace"
        num = 1
      when "1"
        num = 1
      when "2"
        num = 2
      when "3"
        num = 3
      when "4"
        num = 4
      when "5"
        num = 5
      when "6"
        num = 6
      when "7"
        num = 7
      when "8"
        num = 8
      when "9"
        num = 9
      when "10"
        num = 10
      when "j"
        num = 11
      when "q"
        num = 12
      when "k"
        num = 13
    end

    array.each_with_index  do |card, pIndex|
      if num == card.getValue()
        array.each_with_index do |card, cIndex|
          if num == card.getValue()
            if pIndex != cIndex
              array.delete_at(pIndex)
              array.delete_at(cIndex - 1)
              if who == "player1"
                $playerPoints += 1
              else
                $compPoints += 1
              end
            end
          end
        end
      end
    end
  end

  def compValues()
    $compHand.each do |card|
     $compValues.push(card.getValue())
    end
  end

  def compMatches()
    for i in 0 ... $compValues.size - 1
      dropMatches($compHand, $compValues[i], "comp")
    end
    $compValues = []
    compValues()
  end

  def reset()
    $deck = $deckObj.createCards()
    $outOfDeck = Array.new

    $player1Hand = []
    $compHand = []
    $compValues = []

    $playerPoints = 0
    $compPoints = 0

    size  = $outOfDeck.size - 1
    for i in 0 ... size
      $deck.push($outOfDeck[i])
    end

    $outOfDeck = []
  end

end






