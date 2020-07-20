def change_turn(player1, player2)
  player1 = player1
  player2 = player2
  if player1.my_turn
    player1.my_turn = false
    player2.my_turn = true
    current_player = player2
  else
    player2.my_turn = false
    player1.my_turn = true
    current_player = player1
  end
end