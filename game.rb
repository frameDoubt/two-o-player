
class Game

  attr_accessor :player_list

  def initialize(player1, player2)
    self.player_list = [player1, player2]
  end

  def start_game(math_problem)
    player_one = self.player_list[0]
    player_two = self.player_list[1]
    current_player = player_one

    while player_one.score > 0 && player_two.score > 0

      question = math_problem.new

      puts "#{current_player.name}: What does #{question.operand_a} plus #{question.operand_b} equal?"

      answer = gets.chomp

      if answer.to_i == question.answer

        puts "#{current_player.name}: YES! You are correct."

        puts "P1: #{player_one.score}/3 vs P2: #{player_two.score}/3"

        current_player == player_one ? current_player = player_two : current_player = player_one

        puts '----- NEW TURN -----'

      else

        puts "#{current_player.name}: Seriously? No!"

        current_player.decrement_score

        puts "P1: #{player_one.score}/3 vs P2: #{player_two.score}/3"
        
        puts '----- NEW TURN -----' unless current_player.score == 0

        current_player == player_one ? current_player = player_two : current_player = player_one


      end

    end

    puts "#{current_player.name} wins with a score of #{current_player.score}/3"
    puts '----- GAME OVER -----'

  end

end