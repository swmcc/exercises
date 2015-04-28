require 'spec_helper'
require 'deck'

describe Deck do
  it 'can give you a deck of cards' do
    deck = described_class.new()
    print deck
    expect(deck.count).to eq 52 
  end
end
