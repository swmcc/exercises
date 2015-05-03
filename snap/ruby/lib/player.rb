require 'hand'

class Player

  def initialize(name)
    @name = name 
    @hand = {}
  end
  attr_reader :name, :hand

end
