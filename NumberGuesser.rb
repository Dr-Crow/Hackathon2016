class NumberGuesser
def initialize

end

$number = rand(100) + 1
$guess
$count = 0

def start
puts 'Guess a number from 1 to 100'
until $guess == $number
$guess = Integer(gets.chomp)
$count = $count + 1
if $guess < $number
puts 'Low Guess'
elsif $guess > $number
puts 'High Guess'
elsif $guess == $number
puts 'You win!'
puts "It took you " + $count.to_s + " guesses."
else
puts 'Invalid Input'
end
end
end

end