class Game (player1, player2)
  attr_accessor :player1, :player2
  player1 = player1
  player2 = player2
  def initialize
    puts "New Game Starting!"
    start_round
  end

  def start_round
    setup_round
    puts "#{player1.name.briefcase} -> #{numbers.number1} + #{numbers.number2}"
    end_round
  end

  def setup_round
    if player1.hp > 0 && player2.hp > 0
      change_turn(player1, player2)
      numbers
    elsif player1.hp = 0 || player2.hp = 0
      end_game
    end
  end

  def end_round
    print "Answer: "
    guess = gets.chomp
    if guess === numbers.answer
      "Correct!"
      start_round
    else
      Player.class_variable_get(:@@current_player).hp -= 1
      "Incorrect! \n Player 1: #{player1.hp}/3 vs Player 2: #{player2.hp}/3"
      start_round
    end
  end
  
  def end_game
    if player1.hp > 0
      puts "#{player1.name.briefcase} wins with a score of #{player1.hp}/3."
    elsif player2.hp > 0
      puts "#{player2.name.briefcase} wins with a score of #{player2.hp}/3."
    end
  end

end