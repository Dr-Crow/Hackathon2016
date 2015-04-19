class Card
attr_accessor(:value, :suit)

def initialize(value, suit)
@value = value
@suit = suit
end

def getValue()
return @value.to_i
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