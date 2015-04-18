
require_relative "TicTacToe"
require_relative "HangMan"
require_relative "GoFish"

$ticTacObj = TicTacToe.new
$hangManObj = HangMan.new
$GoFishObj = GoFish.new

def BundleLoop()
	puts "Welcome to Magenta Concrete Cult's Game Bundle"
	gameNum = 0
	
	while gameNum != "q"
		puts
		puts "[1] HangMan [2] Tic Tac Toe [3] Go-Fish [q] Quit"
		puts
		puts "Please Enter a Number to Start the Game"
		gameNum = Integer(gets.chop)
		if gameNum == 1
		  $hangManObj.hangMan
		elsif gameNum == 2
		  $ticTacObj.ticTacToe
		elsif gameNum == 3
			$GoFishObj.goFish
		end
	end
	
	puts "\nThanks for playing!"
end

BundleLoop()