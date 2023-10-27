require_relative 'player'
require_relative 'question'

class Game
  def initialize(player1_name, player2_name)
    @players = [Player.new(player1_name), Player.new(player2_name)]
    @current_player = @players.first
  end

  def start_game
    until is_game_over?
      display_scores
      ask_question
      switch_player
    end
    announce_winner
  end

  private

  def ask_question
    question = Question.new
    puts "#{current_player.name}: #{question.question}"
    player_answer = gets.chomp.to_i # Get the player's answer (assuming they enter an integer)
    current_player.answer_question(question, player_answer)
  end

  def switch_player
    @current_player = (@current_player == @players.first) ? @players.last : @players.first
  end

  def is_game_over?
    @players.any? { |player| player.lives <= 0 }
  end

  def display_scores
    puts "Scores:"
    @players.each { |player| puts "#{player.name}: #{player.score}" }
  end

  def announce_winner
    winner = @players.max_by { |player| player.score }
    puts "Game over! #{winner.name} wins with a score of #{winner.score}."
  end

  def current_player
    @current_player
  end
end