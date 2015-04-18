

class TwentyOne
require_relative "Card"
	def initialize
	end
	def twentyOne
		puts "Welcome to Twenty-One! Type \"hit\" and you be dealt a card. Type \"stop\" to stop." 
		$cards = 52
		$total = 0
		
		$deckObj = Deck.new
		$deck = $deckObj.createCards()
		$outOfDeck = Array.new
		gameLoop()
	end
	def gameLoop()
	  while $total <= 21
		  if gets.chomp == "hit"
			hit()
		  elsif gets.chomp == "stop"
			puts "Your total was " + $total.to_s
		  end
	  end
	
	end
	
	def hit()
		
		num = 1 + rand($cards)
		currentCard = $deck[num]
		currentCard.toString
		$total = $total + currentCard.value.to_i
		puts "Your total is " + $total.to_s
		
	end
	


end