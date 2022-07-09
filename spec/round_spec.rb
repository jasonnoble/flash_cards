require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

RSpec.describe Round do
  describe '#new(deck)' do
    it 'creates a Round'
  end
  describe '#deck' do
    it 'returns the deck'
  end
  describe '#turns' do
    describe 'when no turns have been made' do
      it 'returns an empty array'
    end
    describe 'when turns have been made' do
      it 'returns the turns'
    end
  end
  describe '#current_card' do
    it 'returns the card for the current turn'
  end
  describe '#take_turn(guess)' do
    it 'returns a Turn'
  end
  describe '#number_correct' do
    it 'returns the number of turns that were correct'
  end
  describe '#number_correct_by_category(category)' do
    it 'returns the number of turns that were correct for that category'
  end
  describe '#percent_correct' do
    it 'returns the percentage of correct turns (as a Float)'
  end
  describe '#percent_correct_by_category' do
    it 'returns the percentage of correct turns for a category (as a Float)'
  end
end
