require 'deck'
require 'player'

class Game

  def initialize(player_names, no_of_decks=1) 
    @players = []
    @cards = {} 
    player_names.each do |name| 
      @players << Player.new(name)
    end

    for i in 1..no_of_decks 
      @deck = Deck.new
      until @deck.done? do
        @card = @deck.deal
        @cards[@card.description] ||= 0
        @cards[@card.description] += 1
      end
    end

  end
  attr_reader :players, :cards

end
