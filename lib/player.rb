

class Player

DEFAULT_HIT_POINTS = 20

  attr_reader :name, :life

  def initialize(name, life = DEFAULT_HIT_POINTS)
    @name = name
    @life = life
  end

  def hit_points
    DEFAULT_HIT_POINTS
  end


  def lose_points
    @life -= 5
  end


end
