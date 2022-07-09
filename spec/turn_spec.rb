require './lib/turn'
require './lib/card'

RSpec.describe Turn do
  describe '#new(guess, card)' do
    it 'creates a Turn' do
      card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      turn = Turn.new("Juneau", card)

      expect(turn).to be_a(Turn)
    end
  end
  describe '#guess' do
    it 'returns the guess'
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
