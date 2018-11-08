class Player
  attr_reader :username
  attr_accessor :cards

  def initialize(username)
    @username = username
    @cards = []
  end

  def play_card
    @cards.shift
  end

  def username
    @username.capitalize
  end


end
