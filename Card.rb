class Card
	attr_accessor(:value, :suit)

	def initialize(value, suit)
		@value = value
		@suit = suit
	end

	def toString
		if(@value.to_i == 1)
			puts " _____ "
			puts "|" + "A" + "    |"
			puts "|     |"
			puts "|  " + @suit + "  |"
			puts "|     |"
			puts "|____" + "A" +  "|"
		elsif(@value.to_i  < 10)
			puts " _____ "
			puts "|" + @value + "    |"
			puts "|     |"
			puts "|  " + @suit + "  |"
			puts "|     |"
			puts "|____" + @value +  "|"
		elsif (@value.to_i  == 10)
			puts " _____ "
			puts "|" + @value + "   |"
			puts "|     |"
			puts "|  " + @suit + "  |"
			puts "|     |"
			puts "|___" + @value +  "|"
		elsif(@value.to_i  == 11)
			puts " _____ "
			puts "|" + "J" + "    |"
			puts "|     |"
			puts "|  " + @suit + "  |"
			puts "|     |"
			puts "|____" + "J" +  "|"
		elsif(@value.to_i  == 12)
			puts " _____ "
			puts "|" + "Q" + "    |"
			puts "|     |"
			puts "|  " + @suit + "  |"
			puts "|     |"
			puts "|____" + "Q" +  "|"
		elsif(@value.to_i  == 13)
			puts " _____ "
			puts "|" + "K" + "    |"
			puts "|     |"
			puts "|  " + @suit + "  |"
			puts "|     |"
			puts "|____" + "K" +  "|"
		end

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