class Round
  attr_reader :deck, :turns

  def initialize(deck)
    @deck = deck
    @turns = []
  end

  def take_turn(guess)
    new_turn = Turn.new(guess, current_card)
    @turns << new_turn
    new_turn
  end

  def current_card
    deck.cards[turns.count]
  end

  def number_correct
    correct_turns.count
  end

  def number_correct_by_category(category)
    correct_turns_by_category(category).count
  end

  def percent_correct
    (number_correct.to_f / turns.count) * 100
  end

  def percent_correct_by_category(category)
    (number_correct_by_category(category).to_f / turns_for_category(category).count) * 100
  end

  def run
    puts "Welcome! You're playing with #{card_count} cards."
    puts "-------------------------------------------------"
    deck.cards.count.times do |round_number|
      puts "This is card number #{round_number + 1} out of #{card_count}."
      puts "Question: #{current_card.question}"
      answer = gets.chomp
      turn = take_turn(answer)
      puts turn.feedback
    end
    puts "****** Game over! ******"
    puts "You had #{number_correct} correct guesses out of #{card_count} for a total score of #{percent_correct.to_i}%."
    deck.categories.each do |category|
      puts "#{category} - #{percent_correct_by_category(category).to_i}% correct"
    end
  end

  private

  def card_count
    deck.cards.count
  end

  def correct_turns
    turns.select { |turn| turn.correct? }
  end

  def turns_for_category(category)
    turns.select{|turn| turn.card.category == category }
  end

  def correct_turns_by_category(category)
    correct_turns.select { |turn| turn.card.category == category }
  end
end
