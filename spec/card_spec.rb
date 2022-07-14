require './lib/card'

RSpec.describe Card do
  let(:card) { Card.new("What is the capital of Alaska?", "Juneau", :Geography) }
  describe '#new(question, answer, category)' do
    it 'should be a Card' do
      expect(card).to be_an_instance_of(Card)
    end
  end

  describe '#question' do
    it 'returns the question for the Card' do
      expect(card.question).to eq("What is the capital of Alaska?")
    end
  end

  describe '#answer' do
    it 'returns the answer for the Card' do
      expect(card.answer).to eq("Juneau")
    end
  end

  describe '#category' do
    it 'returns the category for the Card' do
      expect(card.category).to eq(:Geography)
    end
  end
end