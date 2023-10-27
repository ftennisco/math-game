require 'test/unit'
require 'stringio'  # Required to capture and compare output
require_relative '../game'

class TestGame < Test::Unit::TestCase
  def setup
    @game = Game.new("Player 1", "Player 2")
  end

  def test_initialization
    assert_instance_of(Game, @game)
  end

  def test_game_loop
    # Simulate a game loop where both players answer questions
    assert_nothing_raised do
      @game.start_game
    end
  end

  def test_game_over_conditions
    # Test a game over condition
    @game.instance_variable_get(:@players)[0].instance_variable_set(:@lives, 0)
    assert_equal(true, @game.send(:is_game_over?))

    # Test a game not over condition
    @game.instance_variable_get(:@players)[0].instance_variable_set(:@lives, 2)
    assert_equal(false, @game.send(:is_game_over?))
  end

  def test_winner_announcement
    @game.instance_variable_get(:@players)[0].instance_variable_set(:@score, 2)
    @game.instance_variable_get(:@players)[1].instance_variable_set(:@score, 1)

    # Redirect standard output to capture it
    captured_output = StringIO.new
    $stdout = captured_output

    # Call the announce_winner method
    @game.send(:announce_winner)

    # Reset standard output
    $stdout = STDOUT

    # Compare the captured output with the expected output
    expected_output = "Game over! Player 1 wins with a score of 2.\n"
    assert_equal(expected_output, captured_output.string)
  end
end
