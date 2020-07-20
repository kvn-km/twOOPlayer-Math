require "./main/player"
require "./main/numbers"
require "./main/turns"
require "./main/game"


player1 = Player.new("Player 1")
p player1.name
p player1.hp

player2 = Player.new("Player 2")
p player2.name
p player2.hp

Game.new(player1, player2)