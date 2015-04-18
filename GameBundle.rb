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
     puts "Your are X. Your opponent is O. The commands are as follows: \n"
	 puts "\nTL to place an X in the top left spot"
	 puts "TM to place an X in the top middle spot"
	 puts "TR to place an X in the top right spot"
	 puts "ML to place an X in the middle left spot"
	 puts "M to place an X in the middle spot"
	 puts "MR to place an X in the middle right spot"
	 puts "BL to place an X in the bottom left spot"
	 puts "BM to place an X in the bottom middle spot"
	 puts "BR to place an X in the bottom right spot\n"
	 gameLoop

end

def gameLoop()

x1 = [" ", " ", " "]
x2 = [" ", " ", " "]
x3 = [" ", " ", " "]
$line1 = x1[0]+"|"+x1[1]+"|"+x1[2]
$line2 = x2[0]+"|"+x2[1]+"|"+x2[2]
$line3 = x3[0]+"|"+x3[1]+"|"+x3[2]

	canRun = true
	
	while canRun == true
		$line1 = x1[0]+"|"+x1[1]+"|"+x1[2]
		$line2 = x2[0]+"|"+x2[1]+"|"+x2[2]
		$line3 = x3[0]+"|"+x3[1]+"|"+x3[2]
		puts "\n" + $line1
		puts "------"
		puts $line2
		puts "------"
		puts $line3 + "\n"
		puts "\n Make a move."
		move = gets.chomp
		case move
			when "TL"
			#$line1 = "X| | "
			x1[0] = "X"
			when "TM"
			#$line1 = " |X| "
			x1[1] = "X"
			when "TR"
			#$line1 = " | |X"
			x1[2] = "X"
			when "ML"
			#$line2 = "X| | "
			x2[0] = "X"
			when "M"
			#$line2 = " |X| "
			x2[1] = "X"
			when "MR"
			#$line2 = " | |X"
			x2[2] = "X"
			when "BR"
			#$line3 = "X| | "
			x3[0] = "X"
			when "BM"
			#$line3 = " |X| "
			x3[1] = "X"
			when "BL"
			#$line3 = " | |X"
			x3[2] = "X"
		end
		
		
	end

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
