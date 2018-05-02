class Player

  attr_reader :name
  attr_reader :hp
  HIT_STRENGTH = 10
  HP_MAX = 100

  def initialize(name)
    @name = name
    @hp = HP_MAX
  end

  def hit
    @hp -= HIT_STRENGTH
  end

end
