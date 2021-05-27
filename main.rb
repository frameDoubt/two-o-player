require './player'
require './mathproblem'
require './game'

# make players

player1 = Player.new('Player 1')

player2 = Player.new('Player 2')


# make game object

new_game = Game.new(player1, player2)

new_game.start_game(MathProblem)

