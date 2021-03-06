require 'spec_helper'
require 'card'
require 'deck'
require 'game'
require 'hand'
require 'player'

describe Game do
  it 'represents a game being played with three players and one deck' do
    @game = Game.new(['Batman', 'Superman', 'Flash'])
    expect(@game.players).to be_a Array
    expect(@game.players.length).to eq 3
    expect(@game.players[0]).to be_a Player
    expect(@game.cards).to be_a Hash
    expect(@game.cards.count).to eq 52
    expect(@game.cards['AH']).to eq 1 
  end
  
  it 'represents a game being played with three players and two decks' do
    @game = Game.new(['Batman', 'Superman', 'Flash'], 2)
    expect(@game.players).to be_a Array
    expect(@game.players.length).to eq 3
    expect(@game.players[0]).to be_a Player
    expect(@game.cards).to be_a Hash
    expect(@game.cards.count).to eq 52 
    expect(@game.cards['AH']).to eq 2
  end

  it 'the game can deal out the cards it has to each player' do
    @game = Game.new(['Batman', 'Superman', 'Flash'], 2)
    @player = @game.players[0]
    expect(@player.hand).to be_a Hash
    expect(@game.deal).to be true
  end

end

describe Player do
  it 'represents a person playing the game' do
    @player = described_class.new('Player One')
    @player2 = described_class.new('Player Two')
    expect(@player.name).to eq 'Player One'
    expect(@player2.name).to eq 'Player Two'
  end

  it 'a player can be given a hand which is a set of cards' do
    @player = described_class.new('Aquaman')
    expect(@player.hand).to be_a Hash
  end

end

describe Hand do
  it 'represents a number of cards' do
    @hand = described_class.new()
    expect(@hand.cards).to be_a Array 
  end
end

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


