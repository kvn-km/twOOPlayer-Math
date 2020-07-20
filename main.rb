require "./main/player"
require "./main/numbers"
require "./main/turns"

player1 = Player.new("player1")
p player1.name

player2 = Player.new("player2")
p player2.name

numbers = Numbers.new
p numbers.number1
p numbers.number2
p numbers.answer

p player1.my_turn
p player2.my_turn

change_turn(player1, player2)
p player1.my_turn
p player2.my_turn

change_turn(player1, player2)
p player1.my_turn
p player2.my_turn