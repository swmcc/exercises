require 'player'

class Game

  def initialize()
  end

  def players
    [ Player.new('Batman'), Player.new('Superman'), Player.new('Flash') ]
  end

end
