require './lib/turn'
require './lib/card'

RSpec.describe Turn do
  let(:card) { Card.new("What is the capital of Alaska?", "Juneau", :Geography) }
  let(:turn) { Turn.new("Juneau", card) }
  describe '#new(guess, card)' do
    it 'creates a Turn' do
      expect(turn).to be_a(Turn)
    end
  end
  describe '#guess' do
    it 'returns the guess' do
      expect(turn.guess).to eq('Juneau')
    end
  end
  describe '#card' do
    it 'returns the card'
  end
  describe '#correct?' do
    it 'returns true when the guess is correct'
    it 'returns false when the guess is incorrect'
  end
  describe '#feedback' do
    it 'returns feedback when the guess is correct'
    it 'returns feedback when the guess is incorrect'
  end
end
