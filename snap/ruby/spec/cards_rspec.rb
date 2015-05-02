require 'spec_helper'
require 'card'
require 'deck'

describe Card do
  it 'can give you a specific card' do
    @card = Card.new(2, 'S')
    expect(@card).to be_a Card
    expect(@card.description).to eq('2S')
    
    @card = Card.new('A', 'H')
    expect(@card.description).to eq('AH')
  end

end

describe Deck do
  it 'represents fifty two cards' do
    @deck = described_class.new()
    expect(@deck.count).to eq 52 
  end

  it 'can shuffle these deck of cards' do
    @deck = described_class.new()
    @deck.shuffle
    expect(@deck.count).to eq 52 
  end

  it 'can tell you when all the cards are dealt' do
    @deck = described_class.new()

    @card = @deck.deal
    expect(@card).to be_a Card

    for i in 1..41
      @deck.deal
    end

    expect(@deck.done?).to be false

    for i in 1..52
      @deck.deal 
    end

    expect(@deck.done?).to be true
  end
end
