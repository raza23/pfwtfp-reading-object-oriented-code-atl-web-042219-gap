require 'spec_helper'


describe 'name_of_the_game' do
  it "correctly identifies the object-oriented game found in 'lib'" do

    expect(name_of_the_game).to be_a(String)
    ords = []
    name_of_the_game.chomp.strip.each_char {|c|
      ords << c.downcase.ord
    }
    expect(ords).to eq([119, 97, 114]), "Please enter the name of the game found in `lib`"
  end
end

describe 'what_code_is_required_to_play_the_game' do
  it "returns the expression required to start the game" do
    Object.any_instance.stub(:gets).and_return("1")
    Object.any_instance.stub(:puts).and_return("")
    Object.any_instance.stub(:print).and_return("")

    expect(Game).to receive(:new)
    what_code_is_required_to_play_the_game

  end
end

describe 'which_method_gets_keyed_user_input' do
  it "returns the String name of the method used to get keyed user input" do
    expect(which_method_gets_keyed_user_input).to eq("get_player_names")
  end
end



describe 'which_methods_only_handle_display' do
  it "returns an Array of Strings - names of the methods that handle outputing display" do
    expect(which_methods_only_handle_display).to include("display_current_scores", "announce_winner", "display_turn_results", "display_turn_winner", "display_tie")
  end
end




describe 'which_method_creates_cards' do
  it "return the name of the method that returns cards as a 'deck'" do
    expect(which_method_creates_cards).to eq('build_deck')
  end
end



describe 'double_deck_game' do
  it "Return the String name of the method that we would modify to play a double deck game" do
    expect(double_deck_game).to eq('initialize')
  end
end
