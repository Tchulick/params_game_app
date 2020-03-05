class Api::GameController < ApplicationController
  def input_name_action
    input_name = params["my_name"]
    name = input_name
    @name_message = ""
    if name.capitalize.starts_with?("A")
      @name_message = "Hey your name starts with the first letter of the alphabet"
    end
    @message = "Hey, your name is #{input_name}"

    render "params_game.json.jb"
  end

  def number_game_action
    correct_num = 56
    @message = params[:user_number].to_i
    if @message < correct_num
      @message = "guess higher"
    elsif @message > correct_num
      @message = "guess lower"
    else
      @message = "Correct"
    end
    render "number_game.json.jb"
  end
end
