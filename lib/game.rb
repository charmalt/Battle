class Game

  attr_reader :player1, :player2, :current_player, :winner

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

  def over?
    @player1.hp == 0 || @player2.hp == 0
  end

  def winner
    [@player1,@player2].find { |player| player.hp != 0 }
  end

end
