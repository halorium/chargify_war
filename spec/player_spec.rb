require 'spec_helper'

require_relative '../lib/player.rb'

describe "Player" do
  before(:all) do
    @player = Player.new
  end

  it "initializes with hand and wins" do
    expect(@player).to be_a(Player)
  end

  it "#hand returns the players hand" do
    expect(@player.hand).to be_a(Deck)
  end

  it "#wins returns the number of games won" do
    expect(@player.wins).to eq(0)
  end
end
