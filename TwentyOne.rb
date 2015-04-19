

class TwentyOne
require_relative "Card"
	def initialize
	end
	def twentyOne
		puts "Welcome to Twenty-One!" 
		$cards = 52
		$total = 0
		$player2total = 0
		
		$deckObj = Deck.new
		$deck = $deckObj.createCards()
		$outOfDeck = Array.new
		puts "Would you like 1 or 2 players?"
		players = gets.chomp
		if players == "1"
			gameLoop()
		end
		if players == "2"
			twoPlayer()
		end
	end
	def gameLoop()
	  while $total <= 21
		  puts "\"hit\" and you be dealt a card. Type \"stop\" to stop."
		  cmd = gets.chomp
		  if cmd == "hit"
			hit()
		  elsif cmd == "stop"
			puts "Your total was " + $total.to_s
			break
		  end
	  end
		$dealerNum = 9 + rand(14)
		if ($dealerNum > 21)
			$dealerNum = 21
		end
		puts "The dealer totalled " + $dealerNum.to_s
		if $total <= $dealerNum
			puts "Sorry, the dealer beat you!"
		elsif $total > $dealerNum and $total <= 21
			puts "Congrats! You beat the dealer!"
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
			$p1stop = true
		end
	end
	
	def hit2()
	
		num = 1 + rand($cards)
		currentCard = $deck[num]
		currentCard.toString
		$player2total = $player2total + currentCard.value.to_i
		puts "Your total is " + $player2total.to_s
		if $player2total == 21
			puts "21! Congratulations!"
		elsif $player2total > 21 
			puts "Sorry, you went over! Better luck next time!"
			$p2stop = true
		end
	
	end
	
	def twoPlayer
	    $p1stop = false
		$p2stop = false
		$gamestop = false
		while $gamestop == false
		  while $p1stop == false and $total < 21
			puts "Player 1, it's your turn."
			cmd = gets.chomp
			if cmd == "hit"
				hit()
			elsif cmd == "stop"
				puts "Your total was " + $total.to_s
				$p1stop = true
			end
		  end
		  
		  while $p2stop == false and $player2total < 21
			puts "Player 2, it's your turn."
			cmd = gets.chomp
			if cmd == "hit"
				hit2()
			elsif cmd == "stop"
				puts "Your total was " + $player2total.to_s
				$p2stop == true
			end 
		  end
		  
		  if $p1stop == true and $p2stop == true
		    $gamestop = true
		  end
		  
		end
		puts "\n Player 1's total was " + $total.to_s + " and Player 2's total was " + $player2total.to_s + "."
		if $player2total > $total and $player2total <= 21
			puts "Congrats Player 2, you win!"
		elsif $total > $player2total and $total <= 21
			puts "Congrats Player 1, you win!"
		else 
			puts "No winner this time!"
		end
	
	end
	


end