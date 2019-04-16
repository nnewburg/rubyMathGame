class Question

  attr_accessor :answer, :question

  def initialize
    @answer = 0
    @question = ''
  end

  def createQuestion(currentPlayer)
    num1 = rand(1...20)
    num2 = rand(1...20)
    answer = num1 + num2
    @question = "#{currentPlayer ? "player1" : "player2"}: What does #{num1} plus #{num2} equal?"
    answer
  end


end