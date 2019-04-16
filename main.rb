require './game'
require './player'
require './question'

player1 = Player.new('bob')
player2 = Player.new('dave')
question = Question.new
game1 = Game.new(player1, player2, question)

game1.start