
class Game

  attr_accessor :player_list

  def initialize(player1, player2)
    self.player_list = [player1, player2]
  end

  def start_game(math_problem)
    player_one = self.player_list[0]
    player_two = self.player_list[1]
    current_player = player_one
    next_player = player_two
    puts current_player.inspect

    while player_one.score > 0 && player_two.score > 0
      question = math_problem.new
      puts question.operand_a
      puts question.operand_b
      puts question.answer
      puts "#{current_player.name}"
      current_player.decrement_score
    end

  end

end