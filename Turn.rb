class Turn 
# players, take alternating turns composed of a qustion.
  attr_accessor :player, :question

  def initialize(player, question)
    @player = player
    @question = question
  end


end