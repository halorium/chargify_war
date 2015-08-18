class Card
  # Value is the numeric value of the card, 1 - 13

  attr_reader :value

  def initialize(value)
    @value = value
  end
end
