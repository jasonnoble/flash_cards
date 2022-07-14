require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

RSpec.describe Round do
  let(:card_1) { Card.new("What is the capital of Alaska?", "Juneau", :Geography) }
  let(:card_2) { Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM) }
  let(:card_3) { Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM) }
  let(:cards) { [card_1, card_2, card_3] }
  let(:deck) { Deck.new(cards) }
  let(:round) { Round.new(deck) }

  describe '#new(deck)' do
    it 'creates a Round'
  end

  describe '#deck' do
    it 'returns the deck'
  end

  describe '#turns' do
    context 'when no turns have been taken' do
      it 'returns an empty array'
    end

    context 'when turns have been taken' do
      it 'returns an array of the turns'
    end
  end

  describe '#current_card' do
    context 'when no turns have been taken' do
      it 'returns the first card'
    end

    context 'when 1 turns have been taken' do
      it 'returns the second card'
    end
  end

  describe '#number_correct' do
    context 'when no turns have been taken' do
      it 'returns 0'
    end

    context 'when turns have been taken' do
      it 'returns the number of correct turns'
    end
  end

  describe '#take_turn(guess)' do
    it 'returns a Turn'
    it 'adds the turn to the list of turns'
  end

  describe '#number_correct_by_category(category)' do
    it 'returns the number of correct turns for the category'
  end

  describe '#percent_correct' do
    it 'returns the number of correct turns / the number of total turns (as a Float)'
  end

  describe '#percent_correct_by_category(category)' do
    it 'returns the # of correct category turns / # of category turns'
  end


end