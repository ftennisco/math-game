class Player
  attr_reader :name, :lives, :score

  def initialize(name)
    @name = name
    @lives = 3 # You can initialize with 3 lives by default
    @score = 0 # You can initialize the score as 0
  end

  def answer_question(question, answer)
    if question.check_answer(answer)
      @score += 1
      puts "#{name}: Correct! Your score is now #{@score}."
    else
      @lives -= 1
      puts "#{name}: Incorrect! You have #{@lives} lives remaining."
    end
  end
end
