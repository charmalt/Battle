class Game

  attr_reader :player1, :player2, :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def switch_turn
    @current_player = opponent
  end

  def attack
    opponent.hit
  end

  def opponent
    [@player1,@player2].find {|player| player != @current_player }
  end

end
