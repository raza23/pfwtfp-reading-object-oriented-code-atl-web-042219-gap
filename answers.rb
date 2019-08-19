require_relative "./lib/game.rb"
require_relative "./lib/player.rb"
require_relative "./lib/card.rb"
require_relative "./lib/table.rb"

def name_of_the_game
    'war'
# Return the name of the game as a String

end

def what_code_is_required_to_play_the_game
    Game.new
# Return the single expression needed to start the game

end

def which_method_gets_keyed_user_input
    'get_player_names'
# Return the String of name of the instance method that gets user input

end

def which_methods_only_handle_display
    ["display_current_scores", "announce_winner", "display_turn_results", "display_turn_winner", "display_tie"]
# Return an Array of String method names for all instance methods that strictly handle outputing content

end


def which_method_creates_cards
    "build_deck"
# Return the String name of the instance method that returns cards as a 'deck'

end

def double_deck_game
    "initialize"
# Lets say we wanted to use two decks of cards
# Return the String name of the method that we would modify to play a double deck game

end
