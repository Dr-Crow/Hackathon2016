
require_relative "TicTacToe"
require_relative "HangMan"
require_relative "GoFish"
require_relative "TwentyOne"
require_relative "War"

$ticTacObj = TicTacToe.new
$hangManObj = HangMan.new
$GoFishObj = GoFish.new
$twentyOneObj = TwentyOne.new
$warObj = War.new

def BundleLoop()
    puts "***----------------------------------------------***"
	puts "***Welcome to Magenta Concrete Cult's Game Bundle***"
	puts "***----------------------------------------------***"
	$gameNum = 0
	
	while $gameNum != "q"
		puts
		print "[1] HangMan [2] Tic Tac Toe [3] Go-Fish "
		puts "[4] Twenty-One [5] War [6] Half-Life 3 [q] Quit"
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
		  puts $warObj.warLoop
		elsif $gameNum.to_i == 6
		  puts "loljk"
		end
	end
	
	puts "\nThanks for playing!"
end

BundleLoop()