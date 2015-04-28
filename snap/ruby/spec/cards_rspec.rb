require 'spec_helper'
require 'cards'

describe Cards do
  it 'can give you a deck of cards' do
    described_class.new.deck()
  end
end
