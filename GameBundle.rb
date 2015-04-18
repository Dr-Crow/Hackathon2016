$listOfWords = Array.new
$listOfWords.push("Test")

$lettersGuessed = Array.new
$lettersGuessed.push("A")
$lettersGuessed.push("B")

$word = $listOfWords.at(0)

$wordLetters = $word.split(//)

def hangMan()
  puts "Welcome To HangMan!"
  puts
  puts "Please Enter 1 or 2 for how many players there are: "
  player = Integer(gets.chop)
  if player == 1
    hangManPlayer1
  elsif player == 2
    hangManPlayer2
  end
end

def hangManPlayer1()
  puts "Do you want to guess first or do you want me to guess? [y/n]"
  String order = gets.chop
  if order == "y"
    hangManPlayer1Guess
  end

end

def hangManPlayer1Guess()
  puts $listOfWords.at(0)
  hangManGuessState()
end

def hangManGuessState()
  puts "Letters Guessed So Far: " + printLettersGuessed
  puts $wordLetters

end

def printLettersGuessed()
  return $lettersGuessed.inspect
end

def checkGuessVWord
 for x in 0 ... $lettersGuessed.size

 end
end

def printWord()

end

def hangManPlayer2()

end

def ticTacToe()


end

puts "Welcome to Magenta Concrete Cult's Game Bundle"
puts

puts "[1] HangMan [2] Tic Tac Toe"
puts
puts "Please Enter a Number to Start the Game"

gameNum = Integer(gets.chop)

if gameNum == 1
  hangMan
elsif gameNum == 2
  ticTacToe
end
