class TicTacToe
  def initialize
  end
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
    elsif $x1[2] == "O" and $x2[1] == "O" and $x3[0] == "O"
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
      elsif $x1[2] == "X" and $x2[1] == "X" and $x3[0] == "X"
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
      elsif $x1[2] == "O" and $x2[1] == "O" and $x3[0] == "O"
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
      elsif $x1[2] == "X" and $x2[1] == "X" and $x3[0] == "X"
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
end