require './lib/turn'
require './lib/card'

RSpec.describe Turn do
  let(:card) { Card.new("What is the capital of Alaska?", "Juneau", :Geography) }
  let(:turn) { Turn.new("Juneau", card) }

  describe '#card' do
    it 'returns the card for the guess'
  end

  describe '#guess' do
    it 'returns the guess for the turn'
  end

  describe '#correct?' do
    context 'when the guess matches the answer' do
      it 'returns true'
    end
    context 'when the guess does not match the answer' do
      it 'returns false'
    end
  end

  describe 'feedback' do
    context 'when the guess matches the answer' do
      it 'returns Correct!'
    end
    context 'when the guess does not match the answer' do
      it 'returns Incorrect.'
    end
  end
end