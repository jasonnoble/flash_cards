require './lib/card_generator'

RSpec.describe CardGenerator do
  describe '#new(filename)' do
    it 'takes a filename as an argument' do
      card_generator = described_class.new('/tmp/foo.txt')
      expect(card_generator).to be_a(CardGenerator)
    end
  end

  describe '#cards' do
    it 'returns an array of cards' do
      card_generator = described_class.new('cards.txt')
      expect(card_generator.cards).to be_a(Array)
    end

    it 'returns the cards generated from the file' do
      card_generator = described_class.new('cards.txt')
      expect(card_generator.cards.length).to eq(4)
    end
  end
end
