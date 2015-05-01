require 'spec_helper'
require 'card'
require 'deck'

describe Card do
  it 'can give you a specific card' do
    card = Card.new(2, 'S')
    expect(card.description).to eq('2S')
  end
end

describe Deck do
  it 'can give you a deck of cards' do
    deck = described_class.new()
    expect(deck.count).to eq 52 
  end

  it 'can shuffle a deck of cards' do
    deck = described_class.new()
    deck.shuffle
    expect(deck.count).to eq 52 
  end
end
