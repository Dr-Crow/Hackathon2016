require_relative "Card"

class Deck
$deck = []

def initialize()
end

def createCards()
for i in 1..13
n = String(i)
$deck.push(Card.new(n, "\u2665".encode('utf-8')  ) )
end
for i in 1..13
n = String(i)
$deck.push(Card.new(n, "\u2660".encode('utf-8')  ) )
end
for i in 1..13
n = String(i)
$deck.push(Card.new(n, "\u2666".encode('utf-8')  ) )
end
for i in 1..13
n = String(i)
$deck.push(Card.new(n, "\u2663".encode('utf-8')  ) )
end
return $deck
end

end
