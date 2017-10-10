require "./Question"
require "./Turn"
require "./Player"

class Game
  # Two players play a game, alternating turns composed of answering a question.
  attr_reader :players 

  def initialize
    @players = [
      p1 = Player.new("player 1"),
      p2 = Player.new("player 2")
    ]
    @current_player = 0
    
  end
  
  def current_player
    @players[@current_player]
  end


  def start
    while (players[0].lives > 0 && players[1].lives > 0)
      puts "----- NEW TURN ------"
      new_q = Question.new
      new_t = Turn.new(current_player, new_q)
      new_t
      p "#{current_player.name}: #{new_q.question}"
      if new_q.solution?
        current_player.get_point
        puts "NAILED IT!"
      else 
        current_player.lose_life
        puts "NO WAY, JOSE, THE CORRECT ANSWER IS #{new_q.answer}"
      end
      p "P1: #{players[0].score}/#{players[0].lives} vs. P2: #{players[1].score}/#{players[1].lives}" 
      
      swap_player

    end


    p "------ GAME OVER ------"
  end

  def swap_player
    if @current_player == 1
      @current_player= 0
    else 
      @current_player= 1
    end
  end

end
