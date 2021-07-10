class Warrior
  def initialize(health: 100, power: 5, armor: 0)
    @health = health
    @power = power
    @armor = armor
  end

  def strike(other)
    raise NotImplementedError
  end
  
  def decrese_health(step)
    raise NotImplementedError
  end
end
