require 'spec_helper'

require_relative '../stats.rb'

describe "Stats" do
  before(:all) do
    @stats = Stats.new(10)
  end

  it "initializes with a game count" do
    expect(@stats).to be_a(Stats)
    expect(@stats.game_count).to eq(10)
    expect(@stats.game).to be_a(Game)
    expect(@stats.wars).to be_a(Array)
    expect(@stats.hands).to be_a(Array)
  end

  it "#run will run the game 'game_count' number of times and return self" do
    expect(@stats.run).to eq(@stats)
  end

  it "#display prints stats to the console" do
    expect(@stats.respond_to?(:display)).to eq(true)
  end
end
