class Question
# Questions are given to players, alternately. If answered correctly they get a point, if answered incorrectly they lose a life.
attr_reader :answer, :num1, :num2, :question

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @question = "What does #{num1} plus #{num2} equal?"
    @answer = num1 + num2
  end

  def solution?
    response = STDIN.gets.chomp().to_i
    if response == @answer
      true
    else 
      false
    end
  end
end


