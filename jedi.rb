load './warrior.rb'
load './blade.rb'
load './robe.rb'

class Jedi < Warrior
  MASTER_ROPE_PENALTY = 3
  def initialize(robe:)
    super()
    @robe = robe
    @blade = Blade.new(color: :red)
    @jedi_armor = @armor + @robe.armor
  end

  def decrese_health(strike_power)
    strike_power -= MASTER_ROPE_PENALTY if @robe.type == :master
    @jedi_armor -= strike_power
    if @jedi_armor <= 0
      # example of using debugger
      # require 'pry'; binding.pry
      @health -= strike_power
    else
      puts "Armor to high"
    end
  end

  def strike(other)
    strike_power = strike_power_with_blade

    other.decrese_health(strike_power)
    puts "#{self} stroke #{other} with blade of color #{@blade.color}"
  end

  def power_info
    p "total strike power is: #{strike_power}"
    p "consists of: self power: #{@power}"
    p "and blade: #{@blade.power}"
    nil
  end

  private

  def strike_power_with_blade
    @power + @blade.power
  end
end

