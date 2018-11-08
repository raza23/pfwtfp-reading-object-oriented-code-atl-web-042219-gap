require 'pry'
class Game

  def initialize()
    @all_card_values = ["1","2","3","4","5","6","7","8","9","J","Q","K","A"]
    @all_suits = ["Clubs", "Diamonds", "Hearts", "Spades"]

    @players = get_player_names
    @table = Table.new()

    deck = build_deck

    deck = deck.shuffle
    deck = deck.shuffle

    deck.each_slice(26).to_a.each_with_index { |split_deck, i|
      split_deck.each {|card|
        @players[i].cards << card
      }
    }

    take_turn
  end

  def take_turn
    if @players[0].cards.length == 0 || @players[1].cards.length == 0
      announce_winner
    else
      display_current_scores
      draw_cards

      gets # to pause between turns
      take_turn
    end

    @players[0].cards.length == 0 ? @players[1].username : @players[0].username
  end

  def draw_cards
    @players.each { |player|
      @table.cards << player.play_card
    }

    display_turn_results
    determine_victor(@table.cards[@table.cards.length-2],@table.cards[@table.cards.length-1])
  end

  def determine_victor(player_1_card, player_2_card)

    if @all_card_values.index(player_1_card.value) > @all_card_values.index(player_2_card.value)
      display_turn_winner(@players[0])
      @players[0].cards.concat(@table.give_cards)
    elsif @all_card_values.index(player_1_card.value) == @all_card_values.index(player_2_card.value)
      display_tie
      3.times do
        @players.each { |player|
          if player.cards.length > 1
            @table.cards << player.play_card
          else
            break
          end
        }
      end
    else
      display_turn_winner(@players[1])
      @players[1].cards.concat(@table.give_cards)
    end
  end

  def build_deck
    deck = []
    @all_suits.each {|suit|
      @all_card_values.each {|value|
        deck << Card.new(value, suit)
      }
    }
    deck
  end

  def get_player_names
    print "Please enter player 1's name: "
    player_one = Player.new(gets.chomp.strip)
    print "Please enter player 2's name: "
    player_two = Player.new(gets.chomp.strip)
    [player_one, player_two]
  end

  private


  def display_current_scores
    puts ""
    puts "Cards:"
    puts "#{@players[0].username}: #{@players[0].cards.length} | #{@players[1].username}: #{@players[1].cards.length}"
    puts ""
  end

  def announce_winner
    puts ""
    puts "---------------------------------"
    puts "The winner is #{@players[0].cards.length == 0 ? @players[1].username : @players[0].username}!"
    puts "---------------------------------"
    puts ""
  end

  def display_turn_results

    puts " #{@players[0].username}: #{@table.cards[@table.cards.length-2].value} of #{@table.cards[@table.cards.length-2].suit}"
    puts " --------------------------------------------"
    puts " #{@players[1].username}: #{@table.cards[@table.cards.length-1].value} of #{@table.cards[@table.cards.length-1].suit}"
    puts ""
  end

  def display_turn_winner(player)
    puts "#{player.username} is victorious! #{@table.cards.length} cards on the table are given to #{player.username}"
  end

  def display_tie
    puts "Its a tie!"
    puts "Both players place three cards on the table from their piles"
  end

end
