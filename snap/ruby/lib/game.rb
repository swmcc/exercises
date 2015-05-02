require 'player'

class Game

  def initialize(player_names, no_of_decks || 1) 
    @players = []
    player_names.each do |name| 
      @players << Player.new(name)
    end
  end
  attr_reader :players

end
