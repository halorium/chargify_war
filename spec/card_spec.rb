require 'spec_helper'

require_relative '../lib/card.rb'

describe "Card" do
  before(:all) do
    @card = Card.new(2)
  end

  it "initializes with value" do
    expect(@card).to be_a(Card)
  end

  it "#value returns the card value" do
    expect(@card.value).to eq(2)
  end
end
