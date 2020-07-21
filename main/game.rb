class Game
  @player1 = Player.new("Player1")
  @player2 = Player.new("Player2")

  def self.initializer
    @numbers = Numbers.new
    puts "P1: #{@player1.hp}/3  < vs >  P2: #{@player2.hp}/3"
  end

  class << self
    attr_accessor :player1, :player2, :numbers
  end

  def self.start_round
    initializer
    setup_round
    puts "-----NEW TURN-----"
    puts "#{Player.class_variable_get(:@@current_player).name} -> #{numbers.number1} + #{numbers.number2}"
    end_round
  end

  def self.setup_round
    if player1.hp > 0 && player2.hp > 0
      change_turn(player1, player2)
      numbers
    elsif player1.hp == 0 || player2.hp == 0
      end_game
    end
  end

  def self.end_round
    print "Answer: "
    guess = gets.chomp
    if guess.to_i == numbers.answer
      puts "Correct!"
      start_round
    else
      Player.class_variable_get(:@@current_player).hp -= 1
      puts "Incorrect!"
      start_round
    end
  end

  def self.end_game
    if player1.hp > 0
      puts "Player 1 wins with a score of #{player1.hp}/3."
      puts "Final Score:\nP1: #{player1.hp}/3  < vs >  P2: #{player2.hp}/3"
      puts "\nThank you for playing.\n"
      exit 0
    elsif player2.hp > 0
      puts "Player 2 wins with a score of #{player2.hp}/3."
      puts "\nFinal Score:\nP1: #{player1.hp}/3  < vs >  P2: #{player2.hp}/3"
      puts "\nThank you for playing.\n\n"
      exit 0
    end
  end

  puts "New Game Starting!"
  start_round

end

