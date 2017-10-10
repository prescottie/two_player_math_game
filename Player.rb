class Player
#A player, plays a game, alternating turns with the other player, where they asnwer a question.
  
  attr_reader :name, :score, :lives

  def initialize(name)
    @name = name
    @score = 0
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def get_point
    @score += 1
  end

end