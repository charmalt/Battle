class Player

  attr_reader :name
  attr_reader :hp
  HP_MAX = 100

  def initialize(name)
    @name = name
    @hp = HP_MAX
  end

  def hit(rate)
    lose_hp(rate)
  end

  private

  def lose_hp(rate)
    @hp -= rate
  end

end
