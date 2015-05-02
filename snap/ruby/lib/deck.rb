require 'card'

class Deck 

  def initialize() 
    @deck = []
    Card::SUITS.each do |suit|
      Card::RANKS.each do |rank|
        @deck << Card.new(rank, suit)
      end
    end
  end
  attr_reader :deck

  def count
    @deck.length
  end

  def shuffle 
    @deck.shuffle!
  end

  def done?
    @deck.empty?
  end

  def deal
    unless self.done?
      @deck.shift
    end
  end

end
