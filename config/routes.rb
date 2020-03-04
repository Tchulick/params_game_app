Rails.application.routes.draw do
  namespace :api do
    get "/params_game" => "game#input_name_action"
  end
end
