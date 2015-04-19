=begin
  Scott Hansen: my war game bombs
=end

class NumberGuesser
  def initialize

  end

  $number = rand(100) + 1
  $guess
  puts 'Guess a number from 1 to 100'

  def self.start
    until $guess == $number
      $guess = Integer(gets.chomp)
      if $guess < $number
        puts 'Low Guess'
      elsif $guess > $number
        puts 'High Guess'
      elsif $guess == $number
        puts 'You win'
      else
        puts 'Invalid Input'
      end
    end
  end

  start
end