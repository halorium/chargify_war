class Game
  attr_reader :deck, :player1, :player2

  def initialize
    @deck = Deck.new.create_52_card_deck
    @player1 = Player.new
    @player2 = Player.new
    @table = [ ]
    @hand_count = 0
    @war_count = 0

    deal_cards
  end

  def play_game
    reset

    begin
      card1 = player1.hand.deal_card
      card2 = player2.hand.deal_card
      @table += [card1, card2]

      if card1.value > card2.value
        @table.shuffle.each do |card|
          player1.hand.add_card(card)
        end
        @table = [ ]
      elsif card2.value > card1.value
        @table.shuffle.each do |card|
          player2.hand.add_card(card)
        end
        @table = [ ]
      elsif card1.value == card2.value
        @table += [player1.hand.deal_card, player2.hand.deal_card]
        @war_count += 1
      end

      @hand_count += 1

    end until player1.hand.empty? || player2.hand.empty?

    if player1.hand.empty?
      player2.wins += 1
    else
      player1.wins += 1
    end

    # return stats
    {hand_count: @hand_count, war_count: @war_count}
  end

  private

  def reset
    deck.create_52_card_deck
    player1.hand.reset
    player2.hand.reset
    @table = [ ]
    deal_cards
  end

  def deal_cards
    26.times do
      player1.hand.add_card( deck.deal_card )
      player2.hand.add_card( deck.deal_card )
    end
  end
end
