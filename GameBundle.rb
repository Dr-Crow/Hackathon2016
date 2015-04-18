$listOfWords = Array.new
$listOfWords.push("test")
$listOfWords.push("help")
$listOfWords.push("monkey")
$listOfWords.push("hackathon")

$lettersGuessed = Array.new

$wordNumber = rand($listOfWords.size)
$word = $listOfWords.at($wordNumber)
$wordLetters = $word.split(//)
$blank = Array.new($word.size)

$misses = 0
#ssass
$x1 = " "
$x2 = " "
$x3 = " "
$x4 = " "
$x5 = " "
$x6 = " "
$x7 = " "
$x8 = " "
$x9 = " "




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
  blanks
  puts "Letters Guessed So Far: " + printLettersGuessed
  puts
  printOutPic
  puts
  puts printWord
  puts $misses
  while ($blank.include? '_') && ($misses <= 9)
    hangManStep
    $misses
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
  addToGuess(new)
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
  puts "    |   " + $x1
  puts "    |  " + $x3 + " " + $x2
  puts "    |  " + $x6 + $x4 + $x5
  puts "    |   " + $x7
  puts "  	|  "+ $x8 + " " + $x9
  puts "____|______"

end

def addToGuess(new)
  $lettersGuessed.push(new)
end

def printLettersGuessed()
  return $lettersGuessed.inspect
end

def checkGuessVWord()
  count = false
 for x in 0 ... $lettersGuessed.size
   for y in 0 ... $word.size
     #puts "(" + $lettersGuessed.at(x) + ", " + $wordLetters.at(y) + ")"
     if $lettersGuessed.at(x) == $wordLetters.at(y)
        $blank[y] = $lettersGuessed[x]
       count = true

     end
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
      $x1 = '|'
    when 2
      $x2 = ')'
    when 3
      $x3 = '('
    when 4
      $x4 = '|'
    when 5
      $x5 = '/'
    when 6
      $x6 = '\\'
    when 7
      $x7 = '|'
    when 8
      $x8 = '/'
    when 9
      $x9 = '\\'
  end
end

def printWord()
  return $blank.inspect
end

def blanks()
  for i in 0 ... $blank.size
    $blank[i] = '_'
  end
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
  puts "Tic Tac Toe"
end
