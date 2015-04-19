
require_relative "TicTacToe"
require_relative "HangMan"
require_relative "GoFish"
require_relative "TwentyOne"

$ticTacObj = TicTacToe.new
$hangManObj = HangMan.new
$GoFishObj = GoFish.new
$twentyOneObj = TwentyOne.new

def BundleLoop()
	puts "Welcome to Magenta Concrete Cult's Game Bundle"
	$gameNum = 0
	
	while $gameNum != "q"
		puts
		puts "[1] HangMan [2] Tic Tac Toe [3] Go-Fish [4] Twenty-One [5] War [6] Half-Life 3[q] Quit"
		puts
		puts "Please Enter a Number to Start the Game"
		$gameNum = gets.chop
		if $gameNum.to_i == 1
		  $hangManObj.hangMan
		elsif $gameNum.to_i == 2
		  $ticTacObj.ticTacToe
		elsif $gameNum.to_i == 3
			$GoFishObj.goFish
	    elsif $gameNum.to_i == 4
			$twentyOneObj.twentyOne
		elsif $gameNum.to_i == 5
		  puts "SCOTTTT"
		elsif $gameNum.to_i == 6
		  puts "loljk"
		end
	end
	
	puts "\nThanks for playing!"
end

BundleLoop()