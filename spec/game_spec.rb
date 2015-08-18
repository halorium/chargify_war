require 'spec_helper'

require_relative '../lib/game.rb'

describe "Game" do
  before(:all) do
    @game = Game.new
  end

  it "#initialize sets up two players, a deck, and stats variables" do
    expect(@game).to be_a(Game)
    expect(@game.deck).to be_a(Deck)
    expect(@game.player1).to be_a(Player)
    expect(@game.player2).to be_a(Player)
  end

  it "#play_game will run a game until there is a winner and return a stats hash" do
    results = @game.play_game

    expect(results).to be_a(Hash)
    expect(results[:hand_count]).to be_a(Integer)
    expect(results[:war_count]).to be_a(Integer)
  end
end
