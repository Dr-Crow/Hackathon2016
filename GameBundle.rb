$listOfWords = Array.new
$listOfWords.push("test")
$listOfWords.push("help")
$listOfWords.push("monkey")
$listOfWords.push("hackathon")

$lettersGuessed = Array.new

$misses = 0

$y1 = " "
$y2 = " "
$y3 = " "
$y4 = " "
$y5 = " "
$y6 = " "
$y7 = " "
$y8 = " "
$y9 = " "




def hangMan()
  puts "Welcome To HangMan!"
  puts
  puts "Please Enter 1 or 2 for how many players there are: "
  player = Integer(gets.chop)
  if player == 1
    $wordNumber = rand($listOfWords.size)
    $word = $listOfWords.at($wordNumber)
    $wordLetters = $word.split(//)
    $blank = Array.new($word.size)
    hangManPlayer1

  elsif player == 2
    hangManPlayer2
  end
end

def hangManPlayer1()
  blanks
  removeSpaces
  puts "Letters Guessed So Far: " + printLettersGuessed
  puts
  printOutPic
  puts
  puts printWord
  while ($blank.include? '_') && ($misses <= 9)
    hangManStep
  end

  if $misses >= 10
    puts "You lost!"
  else
    puts "You win!"
  end
end

def hangManStep()
  puts "Please enter a letter: "
  String input = gets.chop
  hangManGuessState(input)
end

def hangManGuessState(new)
  new1 = new.downcase
  addToGuess(new1)
  puts "Letters Guessed So Far: " + printLettersGuessed
  checkGuessVWord
  puts
  printOutPic
  puts

  puts printWord
  puts

end

def printOutPic()
  puts "     ___    "
  puts "    |   " + $y1
  puts "    |  " + $y3 + " " + $y2
  puts "    |  " + $y6 + $y4 + $y5
  puts "    |   " + $y7
  puts "  	|  "+ $y8 + " " + $y9
  puts "____|______"

end

def addToGuess(new)
  $lettersGuessed.push(new)
end

def printLettersGuessed()
  return $lettersGuessed.inspect
end

def removeSpaces()
  for y in 0 ... $word.size
    #puts "(" + $lettersGuessed.at(x) + ", " + $wordLetters.at(y) + ")"
    if " " == $wordLetters.at(y)
      $blank[y] = " "
    end
  end
end

def checkGuessVWord()
  count = false
    for y in 0 ... $word.size
      #puts "(" + $lettersGuessed.at(x) + ", " + $wordLetters.at(y) + ")"
      if $lettersGuessed.at($lettersGuessed.size - 1) == $wordLetters.at(y)
        $blank[y] = $lettersGuessed[$lettersGuessed.size - 1]
        count = true

      end
    end
  if count == false
    $misses+=1
    updatePic

  end
end

def updatePic()
  case $misses
    when 1
      $y1 = '|'
    when 2
      $y2 = ')'
    when 3
      $y3 = '('
    when 4
      $y4 = '|'
    when 5
      $y5 = '/'
    when 6
      $y6 = '\\'
    when 7
      $y7 = '|'
    when 8
      $y8 = '/'
    when 9
      $y9 = '\\'
  end
end

def printWord()
  String word = ''
  for i in 0 .. ($blank.size - 1)
    word = word + $blank[i]
  end

  puts word
end

def blanks()
  for i in 0 ... $blank.size
    $blank[i] = '_'
  end
end


def hangManPlayer2()
  puts "Player 2 Please Enter your word, make sure Player1 does not see: "
  $word = gets.chop
  $word = $word.downcase
  puts $word
  $wordLetters = $word.split(//)
  $blank = Array.new($word.size)

  hangManPlayer1
end









#---------------------------------------------------------------------------




def ticTacToe()

  $canRun = true

  puts "Would you like 1 or 2 players?"
  players = gets.chomp
  while players != "1" and players != "2"
    "Invalid number of players. Would you like 1 or 2 players?"
    players = gets.chomp
  end


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
  if players == "1"
    gameLoop
  end
  if players == "2"
    twoPlayerGameLoop
  end

  $x1 = [" ", " ", " "]
  $x2 = [" ", " ", " "]
  $x3 = [" ", " ", " "]end

def AImove()

	num = 1 + rand(9)
	puts num
	placed = false
	while placed == false
		case num
			when 1
				if $x1[0] == " "
					$x1[0] = "O" 
					placed = true
				else
					AImove()
				end
			when 2
				if $x1[1] == " "
					$x1[1] = "O" 
					placed = true
				else
					AImove()
				end
			when 3
				if $x1[2] == " "
					$x1[2] = "O" 
					placed = true
				else
					AImove()
				end
			when 4
				if $x2[0] == " "
					$x2[0] = "O" 
					placed = true
				else
					AImove()
				end
			when 5
				if $x2[1] == " "
					$x2[1] = "O" 
					placed = true
				else
					AImove()
				end
			when 6
				if $x2[2] == " "
					$x2[2] = "O" 
					placed = true
				else
					AImove()
				end
			when 7
				if $x3[0] == " "
					$x3[0] = "O" 
					placed = true
				else
					AImove()
				end
			when 8
				if $x3[1] == " "
					$x3[1] = "O" 
					placed = true
				else
					AImove()
				end
			when 9
				if $x3[2] == " "
					$x3[2] = "O" 
					placed = true
				else
					AImove()
				end
		end
		placed = true
	end
	
		if $x1[0] == "O" and $x1[1] == "O" and $x1[2] == "O"
			$loss = true
			$canRun = false
		elsif $x2[0] == "O" and $x2[1] == "O" and $x2[2] == "O" 
			$loss = true
			$canRun = false
		elsif $x3[0] == "O" and $x3[1] == "O" and $x3[2] == "O" 
			$loss = true
			$canRun = false
		elsif $x1[0] == "O" and $x2[0] == "O" and $x3[0] == "O"
			$loss = true
			$canRun = false
		elsif $x1[1] == "O" and $x2[1] == "O" and $x3[1] == "O"
			$loss = true
			$canRun = false
		elsif $x1[2] == "O" and $x2[2] == "O" and $x3[2] == "O"
			$loss = true
			$canRun = false
		elsif $x1[0] == "O" and $x2[1] == "O" and $x3[2] == "O"
			$loss = true
			$canRun = false
		elsif $x1[3] == "O" and $x2[1] == "O" and $x3[0] == "O"
			$loss = true
			$canRun = false
		end
		
end

	$x1 = [" ", " ", " "]
	$x2 = [" ", " ", " "]
	$x3 = [" ", " ", " "]
	line1 = $x1[0]+"|"+$x1[1]+"|"+$x1[2]
	line2 = $x2[0]+"|"+$x2[1]+"|"+$x2[2]
	line3 = $x3[0]+"|"+$x3[1]+"|"+$x3[2]
	
def twoPlayerGameLoop

	oWins = false
	xWins = false

	while oWins == false or xWins == false
		line1 = $x1[0]+"|"+$x1[1]+"|"+$x1[2]
		line2 = $x2[0]+"|"+$x2[1]+"|"+$x2[2]
		line3 = $x3[0]+"|"+$x3[1]+"|"+$x3[2]
		puts "\n" + line1
		puts "------"
		puts line2
		puts "------"
		puts line3 + "\n"
		puts "Player one goes"
		
		move("X")
		
		if $x1[0] == "X" and $x1[1] == "X" and $x1[2] == "X"
			xWins = true
			break
		elsif $x2[0] == "X" and $x2[1] == "X" and $x2[2] == "X" 
			xWins = true
			break
		elsif $x3[0] == "X" and $x3[1] == "X" and $x3[2] == "X" 
			xWins = true
			break
		elsif $x1[0] == "X" and $x2[0] == "X" and $x3[0] == "X"
			xWins = true
			break
		elsif $x1[1] == "X" and $x2[1] == "X" and $x3[1] == "X"
			xWins = true
			break
		elsif $x1[2] == "X" and $x2[2] == "X" and $x3[2] == "X"
			xWins = true
			break
		elsif $x1[0] == "X" and $x2[1] == "X" and $x3[2] == "X"
			xWins = true
			break
		elsif $x1[3] == "X" and $x2[1] == "X" and $x3[0] == "X"
			xWins = true
			break
		end
		
		line1 = $x1[0]+"|"+$x1[1]+"|"+$x1[2]
		line2 = $x2[0]+"|"+$x2[1]+"|"+$x2[2]
		line3 = $x3[0]+"|"+$x3[1]+"|"+$x3[2]
		puts "\n" + line1
		puts "------"
		puts line2
		puts "------"
		puts line3 + "\n"
		puts "Player two goes"
		
		move("O")
		
		
		if $x1[0] == "O" and $x1[1] == "O" and $x1[2] == "O"
			oWins = true
			break
		elsif $x2[0] == "O" and $x2[1] == "O" and $x2[2] == "O" 
			oWins = true
			break
		elsif $x3[0] == "O" and $x3[1] == "O" and $x3[2] == "O" 
			oWins = true
			break
		elsif $x1[0] == "O" and $x2[0] == "O" and $x3[0] == "O"
			oWins = true
			break
		elsif $x1[1] == "O" and $x2[1] == "O" and $x3[1] == "O"
			oWins = true
			break
		elsif $x1[2] == "O" and $x2[2] == "O" and $x3[2] == "O"
			oWins = true
			break
		elsif $x1[0] == "O" and $x2[1] == "O" and $x3[2] == "O"
			oWins = true
			break
		elsif $x1[3] == "O" and $x2[1] == "O" and $x3[0] == "O"
			oWins = true
			break
		end	
		
	end
	
		line1 = $x1[0]+"|"+$x1[1]+"|"+$x1[2]
		line2 = $x2[0]+"|"+$x2[1]+"|"+$x2[2]
		line3 = $x3[0]+"|"+$x3[1]+"|"+$x3[2]
		puts "\n" + line1
		puts "------"
		puts line2
		puts "------"
		puts line3 + "\n"
		
		if xWins == true
			puts "Congrats Player 1!"
		end
		if oWins == true
			puts "Congrats Player 2!"
		end

end


def move(sym)
  		move = gets.upcase.chomp
		case move
			when "TL"
				if $x1[0] == " "
					$x1[0] = sym
				else
					puts "That spot is taken!"
				end
			when "TM"
				if $x1[1] == " "
					$x1[1] = sym
				else
					puts "That spot is taken!"
				end
			when "TR"
				if $x1[2] == " "
					$x1[2] = sym
				else
					puts "That spot is taken!"
				end
			when "ML"
				if $x2[0] == " "
					$x2[0] = sym
				else
					puts "That spot is taken!"
				end
			when "M"
				if $x2[1] == " "
					$x2[1] = sym
				else
					puts "That spot is taken!"
				end
			when "MR"
				if $x2[2] == " "
					$x2[2] = sym
				else
					puts "That spot is taken!"
				end
			when "BL"
				if $x3[0] == " "
					$x3[0] = sym
				else
					puts "That spot is taken!"
				end
			when "BM"
				if $x3[1] == " "
					$x3[1] = sym
				else
					puts "That spot is taken!"
				end
			when "BR"
				if $x3[2] == " "
					$x3[2] = sym
				else
					puts "That spot is taken!"
				end
		end	
end

def gameLoop() 

	$loss = false
	
	while $canRun == true
		line1 = $x1[0]+"|"+$x1[1]+"|"+$x1[2]
		line2 = $x2[0]+"|"+$x2[1]+"|"+$x2[2]
		line3 = $x3[0]+"|"+$x3[1]+"|"+$x3[2]
		puts "\n" + line1
		puts "------"
		puts line2
		puts "------"
		puts line3 + "\n"
		puts "\nIt's your turn."
		
		move("X")
		
		if $x1[0] == "X" and $x1[1] == "X" and $x1[2] == "X"
			$canRun = false 
			break
		elsif $x2[0] == "X" and $x2[1] == "X" and $x2[2] == "X" 
			$canRun = false 
			break
		elsif $x3[0] == "X" and $x3[1] == "X" and $x3[2] == "X" 
			$canRun = false 
			break
		elsif $x1[0] == "X" and $x2[0] == "X" and $x3[0] == "X"
			$canRun = false 
			break
		elsif $x1[1] == "X" and $x2[1] == "X" and $x3[1] == "X"
			$canRun = false 
			break
		elsif $x1[2] == "X" and $x2[2] == "X" and $x3[2] == "X"
			$canRun = false 
			break
		elsif $x1[0] == "X" and $x2[1] == "X" and $x3[2] == "X"
			$canRun = false 
			break
		elsif $x1[3] == "X" and $x2[1] == "X" and $x3[0] == "X"
			$canRun = false 
			break
		end
		
		puts "The AI is moving..."
		AImove()
	
		
	end
	
		line1 = $x1[0]+"|"+$x1[1]+"|"+$x1[2]
		line2 = $x2[0]+"|"+$x2[1]+"|"+$x2[2]
		line3 = $x3[0]+"|"+$x3[1]+"|"+$x3[2]
		puts "\n" + line1
		puts "------"
		puts line2
		puts "------"
		puts line3 + "\n"
		
	if $loss == true
		print "sorry, you lose!!!!!!!!!!!!!!"
	else
		puts "Congrats, you win!"
	end

end

def BundleLoop()
	puts "Welcome to Magenta Concrete Cult's Game Bundle"
	gameNum = 0
	
	while gameNum != "q"
		puts
		puts "[1] HangMan [2] Tic Tac Toe [q] Quit" 
		puts
		puts "Please Enter a Number to Start the Game"
		gameNum = Integer(gets.chop)
		if gameNum == 1
		  hangMan
		elsif gameNum == 2
		  ticTacToe
		end
	end
	
	puts "\nThanks for playing!"
end

BundleLoop()