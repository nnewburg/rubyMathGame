# require './logic'

class Game
  attr_accessor :player1, :player2

  def initialize (player1, player2)
    @player1 = player1
    @player2 = player2
    @game_over = false
  end

  def createQuestion(currentPlayer)
    num1 = rand(1...20)
    num2 = rand(1...20)
    answer = num1 + num2
    puts "#{currentPlayer ? "player1" : "player2"}: What does #{num1} plus #{num2} equal?"
    answer
  end

  def start
    player1Turn = true
    until @game_over

      answer = createQuestion(player1Turn)
      response = $stdin.gets.chomp.to_i

      if answer == response
        puts "#{player1Turn ? "player1" : "player2"}: YES! You are correct"
      else
        puts "#{player1Turn ? "player1" : "player2"}: Seriously? No!"
        player1Turn ? @player1.lives = @player1.lives - 1 : @player2.lives = @player2.lives - 1
      end


      if @player1.lives == 0
        puts "Player2 wins with a score of #{player2.lives}/3"
        puts "---- GAME OVER----"
        return puts "Good bye!"
      elsif @player2.lives == 0
        puts "Player1 wins with a score of #{player1.lives}/3"
        puts "---- GAME OVER----"
        return puts "Good bye!"
      end

      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"


      puts "---- NEW TURN ----"
      player1Turn = !player1Turn
    end
  end
end

