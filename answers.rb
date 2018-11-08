require_relative "./lib/game.rb"
require_relative "./lib/player.rb"
require_relative "./lib/card.rb"
require_relative "./lib/table.rb"

def name_of_the_game
# Return the name of the game as a String
"war"
end

def what_code_is_required_to_play_the_game
# Return the single expression needed to start the game
Game.new()
end

def which_method_gets_keyed_user_input
# Return the String of name of the instance method that gets user input
"get_player_names"
end

def which_methods_only_handle_display
# Return an Array of String method names for all instance methods that strictly handle outputing content
["display_current_scores", "announce_winner", "display_turn_results", "display_turn_winner", "display_tie"]
end


def which_method_creates_cards
# Return the String name of the instance method that returns cards as a 'deck'
"build_deck"
end

def double_deck_game
# Lets say we wanted to use two decks of cards
# Return the String name of the method that we would modify to play a double deck game
"initialize"
end
