require 'spec_helper'

describe "Deck" do
  before(:all) do
    @deck = Deck.new.create_52_card_deck
    @card = Card.new(2)
  end

  it "#add_card adds the given card to the bottom of the deck and returns the deck" do
    expect(@deck.add_card(@card)).to eq(@deck)
    expect(@deck.deck.last).to eq(@card)
  end

  it "#shuffle mixes the order of the cards and returns a deck" do
    first_card = @deck.deck.first

    expect(@deck.shuffle.deck.first).not_to eq(first_card)
  end

  it "#deal_card removes top card and returns it" do
    first_card = @deck.deck.first

    expect(@deck.deal_card).to eq(first_card)
    expect(@deck.deck.include?(first_card)).to eq(false)
  end

  it "#create_52_card_deck will reset the deck with 52 cards" do
    @deck.deal_card
    @deck.deal_card

    expect(@deck.deck.size).to eq(50)

    expect(@deck.create_52_card_deck.deck.size).to eq(52)
  end
end
