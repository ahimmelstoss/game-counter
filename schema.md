Player
-has many player_games
-has many games through player_games

Game
-has one game_type
-has many player_games
-has many players through player_games

GameType
-belongs to game

player_game
-belongs to game
-belongs to player