class Robe
  attr_reader :armor, :type

  def initialize(type: :paddawan)
    @armor = 15
    @type = type
  end
end
