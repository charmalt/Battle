class Game


  attr_reader :player1, :player2, :current_player, :winner

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def self.save_instance(player1, player2)
    @instance = Game.new(player1, player2)
  end

  def self.instance
    @instance
  end


  def switch_turn
    @current_player = opponent
  end

  def attack
    rate = Kernel.rand(1..20)
    opponent.hit(rate)
  end

  def opponent
    [@player1,@player2].find {|player| player != @current_player }
  end

  def over?
    @player1.hp <= 0 || @player2.hp <= 0
  end

  def winner
    [@player1,@player2].find { |player| player.hp > 0 }
  end

end
