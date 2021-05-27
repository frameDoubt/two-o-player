class MathProblem

  attr_reader :operand_a, :operand_b, :answer

  def initialize
    @operand_a = rand(1..20)
    @operand_b = rand(1..20)
    @answer = @operand_a + @operand_b
  end

end