class Player

  attr_accessor :name, :score

  def initialize(name)
    self.name = name
    self.score = 3
  end

  def decrement_score
    self.score -= 1
  end

end

steve = Player.new("Steve")
# puts steve.score
# puts steve.name
# steve.decrement_score
# puts steve.score