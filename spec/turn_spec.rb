require './lib/turn'
require './lib/card'

RSpec.describe Turn do
  let(:card) { Card.new("What is the capital of Alaska?", "Juneau", :Geography) }
  let(:turn) { Turn.new("Juneau", card) }
  let(:incorrect_turn) { Turn.new("Seattle", card) }
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
    it 'returns the card' do
      expect(turn.card).to eq(card)
    end
  end
  describe '#correct?' do
    it 'returns true when the guess is correct' do
      expect(turn.correct?).to eq(true)
    end
    it 'returns false when the guess is incorrect' do
      expect(incorrect_turn.correct?).to eq(false)
    end
  end
  describe '#feedback' do
    it 'returns feedback when the guess is correct'
    it 'returns feedback when the guess is incorrect'
  end
end
