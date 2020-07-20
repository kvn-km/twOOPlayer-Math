# twOOPlayer math

### DESCRIPTION

Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

---

## PLANNING

Below is initial thoughts and plans for the game. Can change during development as this is just the beginning.

### 1. NOUNS

#### _2 PLAYERS_

**Player 1**

- my_turn true : false
- hp = 3

**Player 2**

- my_turn true : false
- hp = 3

#### _TURNS_

- Tracks which player's turn it is currently.
- Turn value is given to each player: true/false.

#### _2 NUMBERS_

**Number 1**

- Random from 1 - 20

**Number 2**

- Random from 1 - 20

**Answer**

- Number 1 + Number 2

#### _LIFE_

- Each player has 3 lives.
- Answering incorrectly reduces life by 1.
- Reaching zero ends game and player loses.
- Output score/life remaining after each round.

---

### 2. CLASSES & ROLES

Classes in this app will be high-level, containing the main characters of the game. This includes the players and questions. These can change from game to game, but as all initiated with the same methods and variables, aka, behaviours and state.

**PLAYER**

```
SUPER.players = 0
```

```
def initialization
  players += 1
  @id = players
  @name = "player#{@id}"
  @hp = 3
  @my_turn = false
end
```

**TURNS**

```
def change_turn
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
```

**NUMBERS**

```
def generate_numbers
  number1 = rand(1...10)
  number2 = rand(1...10)
  answer = number1 + number 2
end
```

**GAME LOOP**

```
def start_round
  setup_round
  puts "Player #{player1.id} -> #{generate_numbers.number1} + #{generate_numbers.number2}"
  end_round
end
```

```
def setup_round
  if player1.hp > 0 && player2.hp > 0
    change_turn
    generate_numbers
  elseif player1.hp = 0 || player2.hp = 0
    end_game
  end
end
```

```
def end_round
  guess = "Answer: " + stdin.gets.chomp
  if guess === generate_numbers.answer
    "Correct!"
    start_round
  else
    #{current_player.hp -= 1}
    "Incorrect! \n Player 1: #{player1.hp}/3 vs Player 2: #{player2.hp}/3"
    start_round
  end
end
```

```
def end_game
  if player1.hp > 0
    puts "Player #{player1.id} win with a score of #{player1.hp}/3."
  elseif player2.hp > 0
    puts "Player #{player2.id} win with a score of #{player2.hp}/3."
  end
end
```
