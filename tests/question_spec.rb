require 'test/unit'
require_relative '../question.rb'
class TestQuestion < Test::Unit::TestCase
  def setup
    @question = Question.new
  end

  def test_initialization
    assert_instance_of(Question, @question)
    assert_match(/What is \d+ \+ \d+\?/, @question.question)
    assert_kind_of(Integer, @question.answer)
  end

  def test_check_answer
    assert(@question.check_answer(@question.answer), "Expected correct answer to be true")
    assert(!@question.check_answer(@question.answer + 1), "Expected incorrect answer to be false")
  end
end