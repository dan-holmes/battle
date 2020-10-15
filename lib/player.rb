class Player
  attr_reader :name, :hitpoints

  DEFAULT_HITPOINTS = 100

  def initialize(name, hitpoints = DEFAULT_HITPOINTS)
    @name = name
    @hitpoints = hitpoints
  end

  def deduct_hitpoints
    @hitpoints -= 20
  end
  
end
