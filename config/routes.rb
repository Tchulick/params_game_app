Rails.application.routes.draw do
  namespace :api do
    get "/params_game" => "game#input_name_action"
    get "/number_game/:user_number" => "game#number_game_action"
  end
end
