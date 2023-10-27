### Two Player Math Game!

## Nouns
- Player: This class represents a player and should have attributes like name, remaining lives, and a score.
- Question: This class generates random addition questions with two numbers between 1 and 20.
- Game: This class manages the overall game flow, including intitializing players, asking questions, and tracking game state.

## Classes

# Player Class: 
  - Attributes:
    - Name (String): The name of the player.
    - Lives (Integer): The number of lives the player has.
    - Score (Integer): You can track the player's score.
  - Methods:
    - initialize (name): Initializes a player with a name a 3 lives.
    - answer_question (question, answer): Checks if the provided answer is correct, deducts a life if incorrect and updates the score if used.

# Question Class:
  - Methods:
    - Constructor(): Generates random addition questions with two numbers between 1 and 20.
    - check_answer(answer): Checks if the provided answer is correct.

# Game Class:
  - Attributes:
    - Players (Array of Player objects): Stores the two players.
    - Current Player (Player object): Keeps track of the player whose turn it is.
    - Current Question (Question object): Store the current question.
  - Methods:
    - initialize(player1_name, player2_name): Initializes the game with two players and starts with player 1.
    - start_game(): Starts the game loop.
    - switch_player(): Switches to the other player for the next turn.
    - is_game_over(): Checking if the game is over by verifying if any player has lost all their lives.
    - display_scores(): Outputs the currect scores for both players.
    - announce_winner(): Announces the winner and the other player's score when the game ends.

## Roles

# Player Class:
  - Role: The Player class is responsible for representing a player in the game. It encapsulates the state of each player, which includes their name, remaining lives, and possibly their score. It also defines the behavior of the player, such as answering questions, deducting lives for incorrect answers, and updating the score.
  - Relevant Data:
    - Name (String)
    - Lives (Integer)
    - Score (Interger)
  - Initialization Requirements:
    - Requires the player's name as a parameter when initiailizing.


# Question Class:
  - Role: The Question class is responsible for generating math questions with random numbers between 1 and 20. It encapsulates the state of the current question and provides a method to check if a player's answer is correct. This class mainly focuses on the state and behavior related to math questions.
  - Relevant Data:
    - Two random numbers between 1 and 20.
  - Initialization Requirements:
    - No specific initialization requirements are needed for this class.

# Game Class:
  - Role: The Game class serves as the central controller for the entire game. It manages the game's flow and logic. This class keeps track of the players, the current player's turn, and the current question. It initializes the game, starts the game loop, switches players, checks for game over conditions, displays scores, and announces the winner. It essentially orchestrates the interactions between the Player and Question classes to create a cohesive game experience.
  - Relevant Data: 
    - Two Player objects.
    - Current Players (Player obect).
    - Current Question (Question object).
  - Initialization Requirements:
    - Requires the names of players for initialization.