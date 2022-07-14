require './lib/card'
require './lib/deck'

RSpec.describe Deck do
  let(:card_1) { Card.new("What is the capital of Alaska?", "Juneau", :Geography) }
  let(:card_2) { Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM) }
  let(:card_3) { Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM) }
  let(:cards) { [card_1, card_2, card_3] }
  let(:deck) { Deck.new(cards) }

  describe '#new(cards)' do
    it 'creates a Deck'
  end

  describe '#cards' do
    it 'returns the cards'
  end

  describe '#count' do
    it 'returns the number of cards'
  end

  describe '#cards_in_categories(category)' do
    it 'returns the cards with the matching category'
  end
end