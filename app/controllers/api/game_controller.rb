class Api::GameController < ApplicationController
  def message_action
    @message = "hey"
    render "params_game.json.jb"
  end
end
