require 'test/unit'
require_relative '../player.rb'  # Adjust the relative path as needed
require_relative '../question.rb'

class TestPlayer < Test::Unit::TestCase
  def setup
    @player = Player.new("Test Player")
  end

  def test_initialization
    assert_equal("Test Player", @player.name)
    assert_equal(3, @player.lives)
    assert_equal(0, @player.score)
  end

  def test_answer_question
    question = Question.new  # Assuming you have a Question class
    correct_answer = question.answer

    # Test correct answer
    @player.answer_question(question, correct_answer)
    assert_equal(1, @player.score)

    # Test incorrect answer
    @player.answer_question(question, 42)  # Assuming 42 is an incorrect answer
    assert_equal(2, @player.lives)
  end
end