require './game'
require './player'

player1 = Player.new('bob')
player2 = Player.new('dave')
game1 = Game.new(player1, player2)

game1.start