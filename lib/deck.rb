class Deck
  attr_reader :deck

  def initialize
    @deck = [ ]
  end

  def add_card(card)
    @deck << card
    self
  end

  def shuffle
    Random.rand(@deck.length).times do
      @deck.shuffle!
    end

    self
  end

  def deal_card
    @deck.shift
  end

  def create_52_card_deck
    @deck = [ ]

    4.times do
      (1..13).to_a.each do |num|
        @deck << Card.new(num)
      end
    end

    self.shuffle
  end

  def reset
    @deck = [ ]
  end

  def empty?
    @deck.last.nil?
  end
end
