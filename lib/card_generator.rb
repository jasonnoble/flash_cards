require 'csv'
require './lib/card'

class CardGenerator
  attr_reader :cards

  def initialize(filename)
    @filename = filename
    @cards = fetch_cards
  end

  private

  def fetch_cards
    return [] unless File.exists?(@filename)

    cards = []
    CSV.foreach(@filename) do |card_info|
      cards << Card.new(card_info[0], card_info[1], card_info[2])
    end
    cards
  end
end
