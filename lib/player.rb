class Player
  attr_reader :hand
  attr_accessor :wins

  def initialize
    @hand = Deck.new
    @wins = 0
  end
end
