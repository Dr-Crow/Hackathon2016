

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
		  cmd = gets.chomp
		  if cmd == "hit"
			hit()
		  elsif cmd == "stop"
			puts "Your total was " + $total.to_s
			break
		  end
	  end
		if $total <= 17
			puts "Not bad, but you can do better!"
		elsif $total <= 19
			puts "Pretty close! Good Job!"
		elsif $total < 21
			puts "Awesome! Just one away!"
		end
	end
	
	def hit()
		
		num = 1 + rand($cards)
		currentCard = $deck[num]
		currentCard.toString
		$total = $total + currentCard.value.to_i
		puts "Your total is " + $total.to_s
		if $total == 21
			puts "21! Congratulations!"
		elsif $total > 21 
			puts "Sorry, you went over! Better luck next time!"
		end
	end
	


end