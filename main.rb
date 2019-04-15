class Game

  game_over = false

  while !game_over do
    currentPlayer = "player 1:"
    puts "#{currentPlayer} What does 5 plus 3 equal"
    answer = $stdin.gets.chomp.to_i
    if answer == 8
      puts "#{currentPlayer} YES! You are correct"
    else
      puts "#{currentPlayer} Seriously? No!"
    end
    puts "---NEW TURN---"
  end
end