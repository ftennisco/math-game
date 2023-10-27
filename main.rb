require_relative 'player'
require_relative 'question'
require_relative 'game'

# Introduction and get player names
puts "Welcome to the Two Player Math Game!"
print "Enter the name of Player 1: "
player1_name = gets.chomp
print "Enter the name of Player 2: "
player2_name = gets.chomp

# Create a new game instance with the player names
game = Game.new(player1_name, player2_name)

# Start the game
game.start_game