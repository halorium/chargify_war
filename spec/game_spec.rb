require 'spec_helper'

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

  it "#play_game will run a game until there is a winner" do
    @game.play_game

    expect(@game.wars).to be_a(Array)
    expect(@game.wars.empty?).to eq(false)
    expect(@game.hands).to be_a(Array)
    expect(@game.hands.empty?).to eq(false)
  end
end
