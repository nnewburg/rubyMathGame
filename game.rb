# require './logic'

class Game
  attr_accessor :player1, :player2, :question

  def initialize (player1, player2, question)
    @player1 = player1
    @player2 = player2
    @game_over = false
    @question = question
  end

  def start
    player1Turn = true
    until @game_over

      answer = @question.createQuestion(player1Turn)
      puts @question.question
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

