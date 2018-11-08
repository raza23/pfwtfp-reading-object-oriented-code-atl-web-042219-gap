class Table
  attr_accessor :cards

  def initialize()
    @cards = []
  end

  def add_card(card)
    @cards << card
  end

  def give_cards
    @cards.slice!(0, @cards.length)
  end

end
