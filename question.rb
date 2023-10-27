class Question
  attr_reader :question, :answer

  def initialize
    @num1 = rand(1..20) # Generate a random number between 1 and 20
    @num2 = rand(1..20) # Generate another random number between 1 and 20
    @question = "What is #{@num1} + #{@num2}?" # Create the question
    @answer = @num1 + @num2 # Calculate the correct answer
  end

  def check_answer(player_answer)
    player_answer.to_i == @answer
  end
end
