class Card
  attr_reader :value, :suit, :point_value


  def initialize(value, suit, point_value = 0)
    @value = value
    @suit = suit
    @point_value = point_value if point_value != 0
  end

end
