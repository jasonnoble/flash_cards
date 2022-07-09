require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

RSpec.describe Round do
  let(:card_1) { Card.new("What is the capital of Alaska?", "Juneau", :Geography) }
  let(:card_2) { Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM) }
  let(:card_3) { card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM) }
  let(:cards) { [card_1, card_2, card_3] }
  let(:deck) { Deck.new(cards) }
  let(:round) { Round.new(deck) }

  describe '#new(deck)' do
    it 'creates a Round' do
      expect(round).to be_a(Round)
    end
  end
  describe '#deck' do
    it 'returns the deck' do
      expect(round.deck).to eq(deck)
    end
  end
  describe '#turns' do
    describe 'when no turns have been made' do
      it 'returns an empty array' do
        expect(round.turns).to eq([])
      end
    end
    describe 'when turns have been made' do
      let!(:turn) { round.take_turn("Juneau") }
      it 'returns the turns' do
        expect(round.turns).to eq([turn])
      end
    end
  end
  describe '#current_card' do
    context 'when no turns have been taken' do
      it 'returns the card for the current turn' do
        expect(round.current_card).to eq(card_1)
      end
    end
    context 'when turns have been taken' do
      before do
        round.take_turn("Juneau")
      end
      it 'returns the card for the current turn' do
        expect(round.current_card).to eq(card_2)
      end
    end
  end
  describe '#take_turn(guess)' do
    it 'returns a Turn' do
      expect(round.take_turn('Juneau')).to be_a(Turn)
    end
  end
  describe '#number_correct' do
    it 'returns the number of turns that were correct' do
      round.take_turn('Juneau') #correct
      round.take_turn('Venus') #incorrect
      expect(round.number_correct).to eq(1)
    end
  end
  describe '#number_correct_by_category(category)' do
    it 'returns the number of turns that were correct for that category' do
      round.take_turn('Juneau') #correct
      round.take_turn('Venus') #incorrect
      expect(round.number_correct_by_category(:Geography)).to eq(1)
      expect(round.number_correct_by_category(:STEM)).to eq(0)
    end
  end
  describe '#percent_correct' do
    it 'returns the percentage of correct turns (as a Float)' do
      round.take_turn('Juneau') #correct
      round.take_turn('Venus') #incorrect
      expect(round.percent_correct).to eq(50.0)
    end
  end
  describe '#percent_correct_by_category(category)' do
    it 'returns the percentage of correct turns for a category (as a Float)' do
      round.take_turn('Juneau') #correct
      round.take_turn('Venus') #incorrect
      expect(round.percent_correct_by_category(:Geography)).to eq(100.0)
    end
  end
end
