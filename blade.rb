class Blade
  attr_reader :color, :power

  def initialize(color:, power: 10)
    @color = color
    @power = power
  end
end
