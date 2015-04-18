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
	
	encoded = "\u2665".encode('utf-8')
	
	for i in 1..13
	  n = String(i)
	  $deck.push(Cards.new(n, "\u2665".encode('utf-8')  ) )
	  puts $deck[i-1].toString
	end
	

	

end

=begin 
	 \u2660 - black spade
	 \u2665 - black heart
	 \u2666 - black diamond
	 \u2663 - black club
	 \u2664 - white spade
	 \u2661 - white heart
	 \u2662 - white diamond
	 \u2667 - white club
	 
=end