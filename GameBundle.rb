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
  puts "Tic Tac Toe"
end
