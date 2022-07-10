require './lib/card'
require './lib/deck'

RSpec.describe Deck do
  let(:card_1) { Card.new("What is the capital of Alaska?", "Juneau", :Geography) }
  let(:card_2) { Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM) }
  let(:card_3) { card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM) }
  let(:cards) { [card_1, card_2, card_3] }
  let(:deck) { Deck.new(cards) }

  describe '#new(cards)' do
    it 'creates a Deck' do
      expect(deck).to be_a(Deck)
    end
  end
  describe '#cards' do
    it 'returns the cards' do
      expect(deck.cards).to eq(cards)
    end
  end
  describe '#count' do
    it 'returns how many cards there are' do
      expect(deck.count).to eq(3)
    end
  end
  describe '#categories' do
    it 'returns a unique list of the card categories' do
      expect(deck.categories).to eq([:Geography, :STEM])
    end
  end
  describe '#cards_in_category(category)' do
    it 'returns cards in that category' do
      expect(deck.cards_in_category(:STEM)).to eq([card_2, card_3])
    end
    context 'when there are no cards with that category' do
      it 'returns an empty array' do
        expect(deck.cards_in_category("Pop Culture")).to eq([])
      end
    end
  end
end
