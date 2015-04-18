Class Deck
	def initialize
	end
	
	class Cards
		$deck = []
		def initialize(value, suit)
		  @value = value
		  @suit = suit
		end
		def toString
		  if(Integer(@value) == 1)
			  puts " _____ "
			  puts "|" + "A" + "    |"
			  puts "|     |"
			  puts "|  " + @suit + "  |"
			  puts "|     |"
			  puts "|____" + "A" +  "|"
		  elsif(Integer(@value) < 10)
			  puts " _____ "
			  puts "|" + @value + "    |"
			  puts "|     |"
			  puts "|  " + @suit + "  |"
			  puts "|     |"
			  puts "|____" + @value +  "|"
		  elsif(Integer(@value) == 10)
			  puts " _____ "
			  puts "|" + @value + "   |"
			  puts "|     |"
			  puts "|  " + @suit + "  |"
			  puts "|     |"
			  puts "|___" + @value +  "|"
		  elsif(Integer(@value) == 11)
			  puts " _____ "
			  puts "|" + "J" + "    |"
			  puts "|     |"
			  puts "|  " + @suit + "  |"
			  puts "|     |"
			  puts "|____" + "J" +  "|"
		  elsif(Integer(@value) == 12)
			  puts " _____ "
			  puts "|" + "Q" + "    |"
			  puts "|     |"
			  puts "|  " + @suit + "  |"
			  puts "|     |"
			  puts "|____" + "Q" +  "|"
		  elsif(Integer(@value) == 13)
			  puts " _____ "
			  puts "|" + "K" + "    |"
			  puts "|     |"
			  puts "|  " + @suit + "  |"
			  puts "|     |"
			  puts "|____" + "K" +  "|"
		  end
		  
		end


		def createDeck()
			for i in 1..13
				n = String(i)
				$deck.push(Cards.new(n, "\u2665".encode('utf-8')  ) )
			end
			for i in 1..13
				n = String(i)
				$deck.push(Cards.new(n, "\u2660".encode('utf-8')  ) )
			end
			for i in 1..13
				n = String(i)
				$deck.push(Cards.new(n, "\u2666".encode('utf-8')  ) )
			end
			for i in 1..13
				n = String(i)
				$deck.push(Cards.new(n, "\u2663".encode('utf-8')  ) )
			end
			return $deck
		end

		def getCard(num)
			return $deck[num]
		end


	end

end
